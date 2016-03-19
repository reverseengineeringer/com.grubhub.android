package com.facebook.internal;

import java.io.File;

final class w
  implements Comparable<w>
{
  private final File a;
  private final long b;
  
  w(File paramFile)
  {
    a = paramFile;
    b = paramFile.lastModified();
  }
  
  public int a(w paramw)
  {
    if (b() < paramw.b()) {
      return -1;
    }
    if (b() > paramw.b()) {
      return 1;
    }
    return a().compareTo(paramw.a());
  }
  
  File a()
  {
    return a;
  }
  
  long b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof w)) && (a((w)paramObject) == 0);
  }
  
  public int hashCode()
  {
    return (a.hashCode() + 1073) * 37 + (int)(b % 2147483647L);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */