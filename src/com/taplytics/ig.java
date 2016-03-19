package com.taplytics;

import android.os.AsyncTask;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.JsonArrayRequest;

public class ig
  extends AsyncTask<Object, Void, Void>
{
  public ig(hn paramhn) {}
  
  protected Void a(Object... paramVarArgs)
  {
    paramVarArgs = (ik)paramVarArgs[0];
    paramVarArgs = new JsonArrayRequest("https://api.github.com/repos/taplytics/taplytics-android-sdk/releases", new ih(this, paramVarArgs), new ii(this, paramVarArgs));
    paramVarArgs.setTag("github_release");
    hn.a(a).add(paramVarArgs);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */