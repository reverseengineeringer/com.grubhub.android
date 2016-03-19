package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.android.volley.RequestQueue;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.android.volley.VolleyError;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

public class ImageLoader
{
  private int mBatchResponseDelayMs = 100;
  private final HashMap<String, ImageLoader.BatchedImageRequest> mBatchedResponses = new HashMap();
  private final ImageLoader.ImageCache mCache;
  private final Handler mHandler = new Handler(Looper.getMainLooper());
  private final HashMap<String, ImageLoader.BatchedImageRequest> mInFlightRequests = new HashMap();
  private final RequestQueue mRequestQueue;
  private Runnable mRunnable;
  
  public ImageLoader(RequestQueue paramRequestQueue, ImageLoader.ImageCache paramImageCache)
  {
    mRequestQueue = paramRequestQueue;
    mCache = paramImageCache;
  }
  
  private void batchResponse(String paramString, ImageLoader.BatchedImageRequest paramBatchedImageRequest)
  {
    mBatchedResponses.put(paramString, paramBatchedImageRequest);
    if (mRunnable == null)
    {
      mRunnable = new Runnable()
      {
        public void run()
        {
          Iterator localIterator1 = mBatchedResponses.values().iterator();
          while (localIterator1.hasNext())
          {
            ImageLoader.BatchedImageRequest localBatchedImageRequest = (ImageLoader.BatchedImageRequest)localIterator1.next();
            Iterator localIterator2 = ImageLoader.BatchedImageRequest.access$500(localBatchedImageRequest).iterator();
            while (localIterator2.hasNext())
            {
              ImageLoader.ImageContainer localImageContainer = (ImageLoader.ImageContainer)localIterator2.next();
              if (ImageLoader.ImageContainer.access$600(localImageContainer) != null) {
                if (localBatchedImageRequest.getError() == null)
                {
                  ImageLoader.ImageContainer.access$702(localImageContainer, ImageLoader.BatchedImageRequest.access$200(localBatchedImageRequest));
                  ImageLoader.ImageContainer.access$600(localImageContainer).onResponse(localImageContainer, false);
                }
                else
                {
                  ImageLoader.ImageContainer.access$600(localImageContainer).onErrorResponse(localBatchedImageRequest.getError());
                }
              }
            }
          }
          mBatchedResponses.clear();
          ImageLoader.access$802(ImageLoader.this, null);
        }
      };
      mHandler.postDelayed(mRunnable, mBatchResponseDelayMs);
    }
  }
  
  private static String getCacheKey(String paramString, int paramInt1, int paramInt2)
  {
    return paramString.length() + 12 + "#W" + paramInt1 + "#H" + paramInt2 + paramString;
  }
  
  public static ImageLoader.ImageListener getImageListener(final ImageView paramImageView, final int paramInt1, int paramInt2)
  {
    new ImageLoader.ImageListener()
    {
      public void onErrorResponse(VolleyError paramAnonymousVolleyError)
      {
        if (val$errorImageResId != 0) {
          paramImageView.setImageResource(val$errorImageResId);
        }
      }
      
      public void onResponse(ImageLoader.ImageContainer paramAnonymousImageContainer, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousImageContainer.getBitmap() != null) {
          paramImageView.setImageBitmap(paramAnonymousImageContainer.getBitmap());
        }
        while (paramInt1 == 0) {
          return;
        }
        paramImageView.setImageResource(paramInt1);
      }
    };
  }
  
  private void onGetImageError(String paramString, VolleyError paramVolleyError)
  {
    ImageLoader.BatchedImageRequest localBatchedImageRequest = (ImageLoader.BatchedImageRequest)mInFlightRequests.remove(paramString);
    if (localBatchedImageRequest != null)
    {
      localBatchedImageRequest.setError(paramVolleyError);
      batchResponse(paramString, localBatchedImageRequest);
    }
  }
  
  private void onGetImageSuccess(String paramString, Bitmap paramBitmap)
  {
    mCache.putBitmap(paramString, paramBitmap);
    ImageLoader.BatchedImageRequest localBatchedImageRequest = (ImageLoader.BatchedImageRequest)mInFlightRequests.remove(paramString);
    if (localBatchedImageRequest != null)
    {
      ImageLoader.BatchedImageRequest.access$202(localBatchedImageRequest, paramBitmap);
      batchResponse(paramString, localBatchedImageRequest);
    }
  }
  
  private void throwIfNotOnMainThread()
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
    }
  }
  
  public ImageLoader.ImageContainer get(String paramString, ImageLoader.ImageListener paramImageListener)
  {
    return get(paramString, paramImageListener, 0, 0);
  }
  
  public ImageLoader.ImageContainer get(String paramString, ImageLoader.ImageListener paramImageListener, int paramInt1, int paramInt2)
  {
    throwIfNotOnMainThread();
    final String str = getCacheKey(paramString, paramInt1, paramInt2);
    Object localObject = mCache.getBitmap(str);
    if (localObject != null)
    {
      paramString = new ImageLoader.ImageContainer(this, (Bitmap)localObject, paramString, null, null);
      paramImageListener.onResponse(paramString, true);
      return paramString;
    }
    localObject = new ImageLoader.ImageContainer(this, null, paramString, str, paramImageListener);
    paramImageListener.onResponse((ImageLoader.ImageContainer)localObject, true);
    paramImageListener = (ImageLoader.BatchedImageRequest)mInFlightRequests.get(str);
    if (paramImageListener != null)
    {
      paramImageListener.addContainer((ImageLoader.ImageContainer)localObject);
      return (ImageLoader.ImageContainer)localObject;
    }
    paramString = new ImageRequest(paramString, new Response.Listener()
    {
      public void onResponse(Bitmap paramAnonymousBitmap)
      {
        ImageLoader.this.onGetImageSuccess(str, paramAnonymousBitmap);
      }
    }, paramInt1, paramInt2, Bitmap.Config.RGB_565, new Response.ErrorListener()
    {
      public void onErrorResponse(VolleyError paramAnonymousVolleyError)
      {
        ImageLoader.this.onGetImageError(str, paramAnonymousVolleyError);
      }
    });
    mRequestQueue.add(paramString);
    mInFlightRequests.put(str, new ImageLoader.BatchedImageRequest(this, paramString, (ImageLoader.ImageContainer)localObject));
    return (ImageLoader.ImageContainer)localObject;
  }
  
  public boolean isCached(String paramString, int paramInt1, int paramInt2)
  {
    throwIfNotOnMainThread();
    paramString = getCacheKey(paramString, paramInt1, paramInt2);
    return mCache.getBitmap(paramString) != null;
  }
  
  public void setBatchedResponseDelay(int paramInt)
  {
    mBatchResponseDelayMs = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.ImageLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */