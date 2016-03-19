package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.android.volley.toolbox.RequestFuture;
import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class p
  extends a<p, Void, ArrayList<String>>
{
  protected String l;
  protected Double m;
  protected Double n;
  protected RequestFuture<ArrayList<String>> o;
  
  private p(r paramr)
  {
    super(paramr);
    l = j;
    m = k;
    n = l;
    o = RequestFuture.newFuture();
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("geocode");
    g.a("autocomplete");
    g.a("queryText", l);
    g.a("latitude", String.valueOf(m));
    g.a("longitude", String.valueOf(n));
  }
  
  protected void c()
  {
    Object localObject = new TypeToken() {}.getType();
    localObject = new c(g.toString(), null, (Type)localObject, o, o);
    ((c)localObject).setTag(c);
    h = ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.f)localObject);
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("address", l);
    localMap.put("latitude", String.valueOf(m));
    localMap.put("longitude", String.valueOf(n));
    return localMap;
  }
  
  public ArrayList<String> h()
  {
    if (!d())
    {
      f();
      return null;
    }
    b();
    c();
    if ((k != null) && ((k instanceof q))) {
      return ((q)k).a(h, o, a);
    }
    return new ArrayList();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */