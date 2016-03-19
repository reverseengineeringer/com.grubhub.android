package android.support.v4.app;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;

class db
{
  static RemoteInput[] a(dd[] paramArrayOfdd)
  {
    if (paramArrayOfdd == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfdd.length];
    int i = 0;
    while (i < paramArrayOfdd.length)
    {
      dd localdd = paramArrayOfdd[i];
      arrayOfRemoteInput[i] = new RemoteInput.Builder(localdd.a()).setLabel(localdd.b()).setChoices(localdd.c()).setAllowFreeFormInput(localdd.d()).addExtras(localdd.e()).build();
      i += 1;
    }
    return arrayOfRemoteInput;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */