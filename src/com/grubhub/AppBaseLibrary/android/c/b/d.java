package com.grubhub.AppBaseLibrary.android.c.b;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class d
{
  private Resources a;
  
  public d(Resources paramResources)
  {
    a = paramResources;
  }
  
  private String a(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  private void a(Map<e, b> paramMap, e parame, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((paramMap == null) || (parame == null)) {
      return;
    }
    String str1;
    String str2;
    if (paramInt1 == 0)
    {
      str1 = "";
      if (paramInt2 != 0) {
        break label69;
      }
      str2 = "";
      label26:
      if (paramInt3 != 0) {
        break label80;
      }
    }
    label69:
    label80:
    for (Drawable localDrawable = null;; localDrawable = b(paramInt3))
    {
      paramMap.put(parame, new a(parame, str1, str2, localDrawable, paramBoolean));
      return;
      str1 = a(paramInt1);
      break;
      str2 = a(paramInt2);
      break label26;
    }
  }
  
  private Drawable b(int paramInt)
  {
    return a.getDrawable(paramInt);
  }
  
  private LinkedHashMap<e, b> c()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_FUTURE_ORDERS, 2131231696, 2131231697, 2130837940, true);
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_ORDER_STATUS, 2131231700, 2131231701, 2130837943, true);
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_FAVORITES, 2131231692, 2131231693, 2130837938, true);
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_PAST_ORDERS, 2131231702, 2131231703, 2130837944, true);
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_NEW_ORDER, 2131231699, 0, 2130837942, true);
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_CONTACT_US, 2131231690, 2131231691, 2130837936, true);
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_FEEDBACK, 2131231694, 2131231695, 2130837939, true);
    a(localLinkedHashMap, e.NAV_DRAWER_LIST_OFFSET_ABOUT, 2131231687, 2131231688, 2130837932, false);
    return localLinkedHashMap;
  }
  
  public b[] a()
  {
    LinkedHashMap localLinkedHashMap = c();
    Object localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_ORDER_STATUS);
    if (localObject != null) {
      ((b)localObject).a(8);
    }
    localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_PAST_ORDERS);
    if (localObject != null) {
      ((b)localObject).a(8);
    }
    localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_FAVORITES);
    if (localObject != null) {
      ((b)localObject).a(8);
    }
    localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_FUTURE_ORDERS);
    if (localObject != null) {
      ((b)localObject).a(8);
    }
    localObject = new b[localLinkedHashMap.size()];
    return (b[])localLinkedHashMap.values().toArray((Object[])localObject);
  }
  
  public b[] b()
  {
    LinkedHashMap localLinkedHashMap = c();
    localLinkedHashMap.put(e.NAV_DRAWER_LIST_OFFSET_LOG_OUT, new c(a(2131231698), b(2130837820)));
    Object localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_NEW_ORDER);
    if (localObject != null) {
      ((com.grubhub.AppBaseLibrary.android.utils.f.b)((b)localObject).e()).a(true);
    }
    localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_ORDER_STATUS);
    if (localObject != null) {
      ((b)localObject).a(0);
    }
    localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_PAST_ORDERS);
    if (localObject != null) {
      ((b)localObject).a(0);
    }
    localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_FAVORITES);
    if (localObject != null) {
      ((b)localObject).a(0);
    }
    localObject = (b)localLinkedHashMap.get(e.NAV_DRAWER_LIST_OFFSET_FUTURE_ORDERS);
    if (localObject != null)
    {
      if (!GHSApplication.a().b().e()) {
        break label174;
      }
      ((b)localObject).a(0);
    }
    for (;;)
    {
      localObject = new b[localLinkedHashMap.size()];
      return (b[])localLinkedHashMap.values().toArray((Object[])localObject);
      label174:
      ((b)localObject).a(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.c.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */