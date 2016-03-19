package com.grubhub.AppBaseLibrary.android.utils.c;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import java.util.HashMap;
import java.util.Map;

public class g
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  
  public g(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
  }
  
  public static g a(GHSICartDataModel.GHSIOrderItem paramGHSIOrderItem)
  {
    return new g(paramGHSIOrderItem.getItemName(), paramGHSIOrderItem.getId(), null, paramGHSIOrderItem.getItemPrice().toString(), "USD", paramGHSIOrderItem.getItemQuantity().toString());
  }
  
  public Map<String, String> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("name", a);
    localHashMap.put("sku", b);
    localHashMap.put("category", c);
    localHashMap.put("price", d);
    localHashMap.put("currency", e);
    localHashMap.put("quantity", f);
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */