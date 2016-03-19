package com.facebook.share.internal;

class c
  implements Runnable
{
  private String a;
  private com.facebook.share.widget.d b;
  private d c;
  
  c(String paramString, com.facebook.share.widget.d paramd, d paramd1)
  {
    a = paramString;
    b = paramd;
    c = paramd1;
  }
  
  public void run()
  {
    a.b(a, b, c);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */