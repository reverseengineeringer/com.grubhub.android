package com.crashlytics.android;

import java.io.File;
import java.io.FilenameFilter;

final class ab
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return (paramString.endsWith(".cls")) && (!paramString.contains("Session"));
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */