package android.support.v4.app;

import android.os.Handler;
import android.os.Message;

class q$1
  extends Handler
{
  q$1(q paramq) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      super.handleMessage(paramMessage);
    case 1: 
      do
      {
        return;
      } while (!a.mStopped);
      a.doReallyStop(false);
      return;
    }
    a.onResumeFragments();
    a.mFragments.p();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.q.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */