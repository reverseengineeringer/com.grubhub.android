package com.facebook.internal;

import java.io.File;
import java.io.FilenameFilter;

final class t$1
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return !paramString.startsWith("buffer");
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.t.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */