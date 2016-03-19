package android.support.v4.app;

import android.os.Bundle;

class df
{
  static Bundle a(dd paramdd)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("resultKey", paramdd.a());
    localBundle.putCharSequence("label", paramdd.b());
    localBundle.putCharSequenceArray("choices", paramdd.c());
    localBundle.putBoolean("allowFreeFormInput", paramdd.d());
    localBundle.putBundle("extras", paramdd.e());
    return localBundle;
  }
  
  static Bundle[] a(dd[] paramArrayOfdd)
  {
    if (paramArrayOfdd == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfdd.length];
    int i = 0;
    while (i < paramArrayOfdd.length)
    {
      arrayOfBundle[i] = a(paramArrayOfdd[i]);
      i += 1;
    }
    return arrayOfBundle;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */