package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.net.HttpURLConnection;
import java.util.List;

public class w
  extends AsyncTask<Void, Void, List<aa>>
{
  private static final String a = w.class.getCanonicalName();
  private final HttpURLConnection b;
  private final x c;
  private Exception d;
  
  public w(x paramx)
  {
    this(null, paramx);
  }
  
  public w(HttpURLConnection paramHttpURLConnection, x paramx)
  {
    c = paramx;
    b = paramHttpURLConnection;
  }
  
  protected List<aa> a(Void... paramVarArgs)
  {
    try
    {
      if (b == null) {
        return c.g();
      }
      paramVarArgs = GraphRequest.a(b, c);
      return paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      d = paramVarArgs;
    }
    return null;
  }
  
  protected void a(List<aa> paramList)
  {
    super.onPostExecute(paramList);
    if (d != null) {
      Log.d(a, String.format("onPostExecute: exception encountered during request: %s", new Object[] { d.getMessage() }));
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    if (m.b()) {
      Log.d(a, String.format("execute async task: %s", new Object[] { this }));
    }
    if (c.c() == null) {
      if (!(Thread.currentThread() instanceof HandlerThread)) {
        break label66;
      }
    }
    label66:
    for (Handler localHandler = new Handler();; localHandler = new Handler(Looper.getMainLooper()))
    {
      c.a(localHandler);
      return;
    }
  }
  
  public String toString()
  {
    return "{RequestAsyncTask: " + " connection: " + b + ", requests: " + c + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */