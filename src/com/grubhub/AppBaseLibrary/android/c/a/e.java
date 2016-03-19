package com.grubhub.AppBaseLibrary.android.c.a;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class e
{
  private int a = -1;
  private List<c> b;
  private HashMap<String, Integer> c;
  
  public e(List<String> paramList)
  {
    Object localObject = GHSApplication.a().b().W();
    if (localObject != null)
    {
      localObject = ((GHSIRestaurantListDataModel)localObject).getSortItemPrettyNames();
      if ((paramList != null) && (!paramList.isEmpty()) && (localObject != null) && (!((Map)localObject).isEmpty())) {
        break label64;
      }
    }
    for (;;)
    {
      return;
      localObject = null;
      break;
      label64:
      b = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        if (((Map)localObject).containsKey(str)) {
          b.add(new c((String)((Map)localObject).get(str), str));
        }
      }
      c = new HashMap(b.size());
      int i = 0;
      while (i < b.size())
      {
        c.put(((c)b.get(i)).b(), Integer.valueOf(i));
        i += 1;
      }
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    if (!b()) {
      return;
    }
    if ((a >= 0) && (a < b.size())) {
      ((c)b.get(a)).a(false);
    }
    int i;
    if (paramInt >= 0)
    {
      i = paramInt;
      if (paramInt < b.size()) {}
    }
    else
    {
      i = 0;
    }
    a = i;
    ((c)b.get(a)).a(true);
  }
  
  public void a(String paramString)
  {
    if ((c != null) && (c.containsKey(paramString)))
    {
      a(((Integer)c.get(paramString)).intValue());
      return;
    }
    a(0);
  }
  
  public boolean b()
  {
    return (b != null) && (!b.isEmpty());
  }
  
  public List<c> c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.c.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */