package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class Request<T>
  implements Comparable<Request<T>>
{
  private static final String DEFAULT_PARAMS_ENCODING = "UTF-8";
  private static final long SLOW_REQUEST_THRESHOLD_MS = 3000L;
  private Cache.Entry mCacheEntry;
  private boolean mCanceled;
  private final int mDefaultTrafficStatsTag;
  private final Response.ErrorListener mErrorListener;
  private final VolleyLog.MarkerLog mEventLog;
  private final int mMethod;
  private long mRequestBirthTime;
  private RequestQueue mRequestQueue;
  private boolean mResponseDelivered;
  private RetryPolicy mRetryPolicy;
  private Integer mSequence;
  private boolean mShouldCache;
  private Object mTag;
  private final String mUrl;
  
  public Request(int paramInt, String paramString, Response.ErrorListener paramErrorListener)
  {
    if (VolleyLog.MarkerLog.ENABLED) {}
    for (VolleyLog.MarkerLog localMarkerLog = new VolleyLog.MarkerLog();; localMarkerLog = null)
    {
      mEventLog = localMarkerLog;
      mShouldCache = true;
      mCanceled = false;
      mResponseDelivered = false;
      mRequestBirthTime = 0L;
      mCacheEntry = null;
      mMethod = paramInt;
      mUrl = paramString;
      mErrorListener = paramErrorListener;
      setRetryPolicy(new DefaultRetryPolicy());
      mDefaultTrafficStatsTag = findDefaultTrafficStatsTag(paramString);
      return;
    }
  }
  
  @Deprecated
  public Request(String paramString, Response.ErrorListener paramErrorListener)
  {
    this(-1, paramString, paramErrorListener);
  }
  
  private byte[] encodeParameters(Map<String, String> paramMap, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localStringBuilder.append(URLEncoder.encode((String)localEntry.getKey(), paramString));
        localStringBuilder.append('=');
        localStringBuilder.append(URLEncoder.encode((String)localEntry.getValue(), paramString));
        localStringBuilder.append('&');
      }
      paramMap = localStringBuilder.toString().getBytes(paramString);
    }
    catch (UnsupportedEncodingException paramMap)
    {
      throw new RuntimeException("Encoding not supported: " + paramString, paramMap);
    }
    return paramMap;
  }
  
  private static int findDefaultTrafficStatsTag(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      if (paramString != null)
      {
        paramString = paramString.getHost();
        if (paramString != null) {
          return paramString.hashCode();
        }
      }
    }
    return 0;
  }
  
  public void addMarker(String paramString)
  {
    if (VolleyLog.MarkerLog.ENABLED) {
      mEventLog.add(paramString, Thread.currentThread().getId());
    }
    while (mRequestBirthTime != 0L) {
      return;
    }
    mRequestBirthTime = SystemClock.elapsedRealtime();
  }
  
  public void cancel()
  {
    mCanceled = true;
  }
  
  public int compareTo(Request<T> paramRequest)
  {
    Request.Priority localPriority1 = getPriority();
    Request.Priority localPriority2 = paramRequest.getPriority();
    if (localPriority1 == localPriority2) {
      return mSequence.intValue() - mSequence.intValue();
    }
    return localPriority2.ordinal() - localPriority1.ordinal();
  }
  
  public void deliverError(VolleyError paramVolleyError)
  {
    if (mErrorListener != null) {
      mErrorListener.onErrorResponse(paramVolleyError);
    }
  }
  
  protected abstract void deliverResponse(T paramT);
  
  void finish(final String paramString)
  {
    if (mRequestQueue != null) {
      mRequestQueue.finish(this);
    }
    final long l;
    if (VolleyLog.MarkerLog.ENABLED)
    {
      l = Thread.currentThread().getId();
      if (Looper.myLooper() != Looper.getMainLooper()) {
        new Handler(Looper.getMainLooper()).post(new Runnable()
        {
          public void run()
          {
            mEventLog.add(paramString, l);
            mEventLog.finish(toString());
          }
        });
      }
    }
    do
    {
      return;
      mEventLog.add(paramString, l);
      mEventLog.finish(toString());
      return;
      l = SystemClock.elapsedRealtime() - mRequestBirthTime;
    } while (l < 3000L);
    VolleyLog.d("%d ms: %s", new Object[] { Long.valueOf(l), toString() });
  }
  
  public byte[] getBody()
    throws AuthFailureError
  {
    Map localMap = getParams();
    if ((localMap != null) && (localMap.size() > 0)) {
      return encodeParameters(localMap, getParamsEncoding());
    }
    return null;
  }
  
  public String getBodyContentType()
  {
    return "application/x-www-form-urlencoded; charset=" + getParamsEncoding();
  }
  
  public Cache.Entry getCacheEntry()
  {
    return mCacheEntry;
  }
  
  public String getCacheKey()
  {
    return getUrl();
  }
  
  public Map<String, String> getHeaders()
    throws AuthFailureError
  {
    return Collections.emptyMap();
  }
  
  public int getMethod()
  {
    return mMethod;
  }
  
  protected Map<String, String> getParams()
    throws AuthFailureError
  {
    return null;
  }
  
  protected String getParamsEncoding()
  {
    return "UTF-8";
  }
  
  @Deprecated
  public byte[] getPostBody()
    throws AuthFailureError
  {
    Map localMap = getPostParams();
    if ((localMap != null) && (localMap.size() > 0)) {
      return encodeParameters(localMap, getPostParamsEncoding());
    }
    return null;
  }
  
  @Deprecated
  public String getPostBodyContentType()
  {
    return getBodyContentType();
  }
  
  @Deprecated
  protected Map<String, String> getPostParams()
    throws AuthFailureError
  {
    return getParams();
  }
  
  @Deprecated
  protected String getPostParamsEncoding()
  {
    return getParamsEncoding();
  }
  
  public Request.Priority getPriority()
  {
    return Request.Priority.NORMAL;
  }
  
  public RetryPolicy getRetryPolicy()
  {
    return mRetryPolicy;
  }
  
  public final int getSequence()
  {
    if (mSequence == null) {
      throw new IllegalStateException("getSequence called before setSequence");
    }
    return mSequence.intValue();
  }
  
  public Object getTag()
  {
    return mTag;
  }
  
  public final int getTimeoutMs()
  {
    return mRetryPolicy.getCurrentTimeout();
  }
  
  public int getTrafficStatsTag()
  {
    return mDefaultTrafficStatsTag;
  }
  
  public String getUrl()
  {
    return mUrl;
  }
  
  public boolean hasHadResponseDelivered()
  {
    return mResponseDelivered;
  }
  
  public boolean isCanceled()
  {
    return mCanceled;
  }
  
  public void markDelivered()
  {
    mResponseDelivered = true;
  }
  
  protected VolleyError parseNetworkError(VolleyError paramVolleyError)
  {
    return paramVolleyError;
  }
  
  protected abstract Response<T> parseNetworkResponse(NetworkResponse paramNetworkResponse);
  
  public Request<?> setCacheEntry(Cache.Entry paramEntry)
  {
    mCacheEntry = paramEntry;
    return this;
  }
  
  public Request<?> setRequestQueue(RequestQueue paramRequestQueue)
  {
    mRequestQueue = paramRequestQueue;
    return this;
  }
  
  public Request<?> setRetryPolicy(RetryPolicy paramRetryPolicy)
  {
    mRetryPolicy = paramRetryPolicy;
    return this;
  }
  
  public final Request<?> setSequence(int paramInt)
  {
    mSequence = Integer.valueOf(paramInt);
    return this;
  }
  
  public final Request<?> setShouldCache(boolean paramBoolean)
  {
    mShouldCache = paramBoolean;
    return this;
  }
  
  public Request<?> setTag(Object paramObject)
  {
    mTag = paramObject;
    return this;
  }
  
  public final boolean shouldCache()
  {
    return mShouldCache;
  }
  
  public String toString()
  {
    String str2 = "0x" + Integer.toHexString(getTrafficStatsTag());
    StringBuilder localStringBuilder = new StringBuilder();
    if (mCanceled) {}
    for (String str1 = "[X] ";; str1 = "[ ] ") {
      return str1 + getUrl() + " " + str2 + " " + getPriority() + " " + mSequence;
    }
  }
}

/* Location:
 * Qualified Name:     com.android.volley.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */