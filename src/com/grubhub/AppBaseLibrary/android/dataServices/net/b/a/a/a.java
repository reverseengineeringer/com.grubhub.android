package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a;

import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.f;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a<a, GHSIYummyRummyModel, Void>
{
  protected GHSYummyRummyAccessModel l;
  
  private a(b paramb)
  {
    super(paramb);
    GHSYummyRummyAccessModel localGHSYummyRummyAccessModel = new GHSYummyRummyAccessModel();
    if ((j != null) && (j.getMetadata() != null)) {
      localGHSYummyRummyAccessModel.setMetadata(j.getMetadata());
    }
    l = localGHSYummyRummyAccessModel;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("third_parties");
    g.a("yummyrummy_espresso");
    g.a("access");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), GHSYummyRummyModel.class, a, i, j);
    locald.setTag(c);
    h = locald;
    h.a(com.grubhub.AppBaseLibrary.android.utils.a.a.d(f));
  }
  
  protected boolean d()
  {
    return (super.d()) && (l != null);
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    Gson localGson = new Gson();
    Iterator localIterator = h().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localMap.put(localEntry.getKey(), localGson.toJson(localEntry.getValue()));
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (l != null) {
      localHashMap.put("metadata", l.getMetadata());
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */