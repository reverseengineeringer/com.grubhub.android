package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.utils.b;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class s
  extends a<s, GHSIAutoCompleteDataModel, Void>
{
  public static String l = "dishTerm";
  public static String m = "restaurant";
  protected String n;
  protected String[] o;
  protected Double p;
  protected Double q;
  protected g r;
  protected Long s;
  protected l t;
  
  private s(t paramt)
  {
    super(paramt);
    n = j;
    o = k;
    p = l;
    q = m;
    r = n;
    t = p;
    s = o;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("autocomplete");
    g.a("prefix", n);
    g.a("lat", String.valueOf(p));
    g.a("lng", String.valueOf(q));
    com.grubhub.AppBaseLibrary.android.dataServices.net.a.a locala = g;
    if (r == g.PICKUP) {}
    for (Object localObject = "pickup";; localObject = "delivery")
    {
      locala.a("locationMode", (String)localObject);
      g.a("hideClosed", "true");
      if (t == l.FUTURE) {
        g.a("isFutureOrder", String.valueOf(true));
      }
      if (s != null) {
        g.a("whenFor", b.a(s.longValue(), "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
      }
      localObject = o;
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        locala = localObject[i];
        g.a("resultTypeList", locala);
        i += 1;
      }
    }
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), GHSSearchAutoCompleteDataModel.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(e)) && (f.b(n)) && (o != null) && (o.length > 0);
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("prefix", n);
    localMap.put("lat", String.valueOf(p));
    localMap.put("lng", String.valueOf(q));
    if (r == g.PICKUP) {}
    for (String str = "pickup";; str = "delivery")
    {
      localMap.put("locationMode", str);
      localMap.put("hideClosed", "true");
      if (o != null) {
        localMap.put("resultTypeList", TextUtils.join(",", o));
      }
      if (t == l.FUTURE) {
        localMap.put("isFutureOrder", String.valueOf(true));
      }
      if (s != null) {
        localMap.put("whenFor", b.a(s.longValue(), "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
      }
      return localMap;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */