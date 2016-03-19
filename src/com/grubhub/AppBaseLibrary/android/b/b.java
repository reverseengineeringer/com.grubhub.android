package com.grubhub.AppBaseLibrary.android.b;

import com.android.volley.NetworkResponse;
import com.android.volley.VolleyError;
import java.util.ArrayList;
import java.util.Arrays;

public class b
  extends Exception
  implements com.grubhub.AppBaseLibrary.android.utils.e.a.a.b
{
  public final NetworkResponse a;
  public final String b;
  private a c;
  private boolean d;
  private ArrayList<c> e;
  
  public b(VolleyError paramVolleyError)
  {
    super(paramVolleyError);
    if (paramVolleyError != null)
    {
      a = networkResponse;
      if (paramVolleyError.getCause() != null)
      {
        b = paramVolleyError.getCause().getClass().getSimpleName();
        return;
      }
      b = paramVolleyError.getClass().getSimpleName();
      return;
    }
    a = null;
    b = null;
  }
  
  public b(a parama)
  {
    c = parama;
    a = null;
    b = null;
  }
  
  public int a()
  {
    if (a != null) {
      return a.statusCode;
    }
    return 0;
  }
  
  public void a(a parama)
  {
    c = parama;
  }
  
  public void a(c paramc)
  {
    if (e == null) {
      e = new ArrayList();
    }
    e.add(paramc);
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void accept(com.grubhub.AppBaseLibrary.android.utils.e.a.a.c paramc)
  {
    if (paramc != null) {
      paramc.a(this);
    }
  }
  
  public String b()
  {
    return b;
  }
  
  public void b(c paramc)
  {
    if (paramc != null)
    {
      e = new ArrayList(Arrays.asList(new c[] { paramc }));
      return;
    }
    e = null;
  }
  
  public a c()
  {
    return c;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public c e()
  {
    if ((e != null) && (e.size() > 0)) {
      return (c)e.get(0);
    }
    return null;
  }
  
  public String f()
  {
    if (c != null) {
      return c.getHeaderString();
    }
    return null;
  }
  
  public String g()
  {
    if (c != null) {
      return c.getPositiveButtonString();
    }
    return null;
  }
  
  public String getLocalizedMessage()
  {
    if (c != null) {
      return c.getMessageString();
    }
    return null;
  }
  
  public String getMessage()
  {
    if (c != null) {
      return c.getMessageString();
    }
    return null;
  }
  
  public String h()
  {
    if (c != null) {
      return c.getNegativeButtonString();
    }
    return null;
  }
  
  public String i()
  {
    if (c != null) {
      return c.getNeutralButtonString();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */