package com.google.android.gms.appdatasearch;

public final class c
{
  private DocumentId a;
  private long b = -1L;
  private int c = -1;
  private String d;
  private DocumentContents e;
  private boolean f = false;
  private int g = -1;
  private int h = 0;
  
  public UsageInfo a()
  {
    return new UsageInfo(a, b, c, d, e, f, g, h, null);
  }
  
  public c a(int paramInt)
  {
    c = paramInt;
    return this;
  }
  
  public c a(long paramLong)
  {
    b = paramLong;
    return this;
  }
  
  public c a(DocumentContents paramDocumentContents)
  {
    e = paramDocumentContents;
    return this;
  }
  
  public c a(DocumentId paramDocumentId)
  {
    a = paramDocumentId;
    return this;
  }
  
  public c a(boolean paramBoolean)
  {
    f = paramBoolean;
    return this;
  }
  
  public c b(int paramInt)
  {
    h = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */