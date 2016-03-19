package com.grubhub.AppBaseLibrary.android.c.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.utils.f.a;

public abstract class b
{
  e a;
  private String b;
  private int c;
  private a d;
  
  public b(e parame, String paramString, a parama)
  {
    a = parame;
    b = paramString;
    d = parama;
    c = 0;
  }
  
  public View a(Context paramContext, ViewGroup paramViewGroup)
  {
    return d.a(this, paramContext, paramViewGroup);
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public e c()
  {
    return a;
  }
  
  public String d()
  {
    return b;
  }
  
  public a e()
  {
    return d;
  }
  
  public int f()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.c.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */