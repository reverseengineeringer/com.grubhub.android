package android.support.v4.c;

import android.os.AsyncTask;

class b
{
  static <Params, Progress, Result> void a(AsyncTask<Params, Progress, Result> paramAsyncTask, Params... paramVarArgs)
  {
    paramAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */