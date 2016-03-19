package com.grubhub.AppBaseLibrary.android.utils.c;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class i
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private List<Map<String, String>> i;
  
  public i(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, List<Map<String, String>> paramList)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
    g = paramString7;
    if (paramBoolean) {}
    for (paramString1 = "asap";; paramString1 = "later")
    {
      h = paramString1;
      i = paramList;
      return;
    }
  }
  
  public static i a(GHSICartDataModel paramGHSICartDataModel, String paramString1, String paramString2)
  {
    Object localObject3 = null;
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    if (paramGHSICartDataModel != null)
    {
      localObject1 = paramGHSICartDataModel.getOrderItems().iterator();
      while (((Iterator)localObject1).hasNext()) {
        localArrayList.add(g.a((GHSICartDataModel.GHSIOrderItem)((Iterator)localObject1).next()).a());
      }
    }
    boolean bool;
    label105:
    String str1;
    if ((paramGHSICartDataModel == null) || (paramGHSICartDataModel.isAsapOrder()))
    {
      bool = true;
      if ((paramGHSICartDataModel == null) || (paramGHSICartDataModel.getAmountDue() == null)) {
        break label213;
      }
      localObject1 = paramGHSICartDataModel.getAmountDue().toString();
      if ((paramGHSICartDataModel == null) || (paramGHSICartDataModel.getOrderType() == null)) {
        break label219;
      }
      str1 = paramGHSICartDataModel.getOrderType().toString();
      label129:
      if ((paramGHSICartDataModel == null) || (paramGHSICartDataModel.getTax() == null)) {
        break label225;
      }
    }
    label213:
    label219:
    label225:
    for (String str2 = paramGHSICartDataModel.getTax().toString();; str2 = null)
    {
      Object localObject2 = localObject3;
      if (paramGHSICartDataModel != null)
      {
        localObject2 = localObject3;
        if (paramGHSICartDataModel.getDeliveryFee() != null) {
          localObject2 = paramGHSICartDataModel.getDeliveryFee().toString();
        }
      }
      return new i(paramString2, (String)localObject1, str1, str2, (String)localObject2, "USD", paramString1, bool, localArrayList);
      bool = false;
      break;
      localObject1 = null;
      break label105;
      str1 = null;
      break label129;
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public String e()
  {
    return e;
  }
  
  public String f()
  {
    return f;
  }
  
  public List<Map<String, String>> g()
  {
    return i;
  }
  
  public String h()
  {
    return g;
  }
  
  public String i()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */