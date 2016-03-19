package com.a;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.a.a.b;
import java.util.EnumSet;

public abstract class a
  extends AsyncTask<String, Void, Void>
{
  protected h a;
  protected Activity b;
  protected boolean c = true;
  protected EnumSet<b> d;
  private long e = 10000L;
  private boolean f = false;
  
  public a(Activity paramActivity, h paramh, EnumSet<b> paramEnumSet)
  {
    a = paramh;
    b = paramActivity;
    d = paramEnumSet;
    c = false;
  }
  
  protected abstract Void a(String... paramVarArgs);
  
  public void a(long paramLong)
  {
    if (paramLong > 5000L)
    {
      e = paramLong;
      f = true;
    }
  }
  
  void a(String paramString, Object... paramVarArgs)
  {
    String str = getClass().getSimpleName();
    Log.v(str, "[" + str + "]" + String.format(paramString, paramVarArgs));
  }
  
  public boolean a()
  {
    return c;
  }
  
  public long b()
  {
    return e;
  }
  
  public boolean c()
  {
    return f;
  }
  
  protected void onPreExecute()
  {
    if (a != null) {
      a.a();
    }
    c = false;
  }
}

/* Location:
 * Qualified Name:     com.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */