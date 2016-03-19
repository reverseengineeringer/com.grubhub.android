package com.facebook;

import android.content.Context;
import java.io.File;
import java.util.concurrent.Callable;

final class m$2
  implements Callable<File>
{
  public File a()
    throws Exception
  {
    return m.o().getCacheDir();
  }
}

/* Location:
 * Qualified Name:     com.facebook.m.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */