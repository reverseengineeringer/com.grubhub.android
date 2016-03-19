package com.crashlytics.android;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

final class f
  extends FileOutputStream
{
  public static final FilenameFilter a = new g();
  private final String b;
  private File c;
  private boolean d = false;
  
  public f(File paramFile, String paramString)
    throws FileNotFoundException
  {
    super(new File(paramFile, paramString + ".cls_temp"));
    b = (paramFile + File.separator + paramString);
    c = new File(b + ".cls_temp");
  }
  
  public final void a()
    throws IOException
  {
    if (d) {
      return;
    }
    d = true;
    super.flush();
    super.close();
  }
  
  public final void close()
    throws IOException
  {
    File localFile;
    try
    {
      boolean bool = d;
      if (bool) {}
      for (;;)
      {
        return;
        d = true;
        super.flush();
        super.close();
        localFile = new File(b + ".cls");
        if (!c.renameTo(localFile)) {
          break;
        }
        c = null;
      }
      str = "";
    }
    finally {}
    String str;
    if (localFile.exists()) {
      str = " (target already exists)";
    }
    for (;;)
    {
      throw new IOException("Could not rename temp file: " + c + " -> " + localFile + str);
      if (!c.exists()) {
        str = " (source does not exist)";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */