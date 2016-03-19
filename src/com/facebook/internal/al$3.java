package com.facebook.internal;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

final class al$3
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return Pattern.matches("cpu[0-9]+", paramString);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.al.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */