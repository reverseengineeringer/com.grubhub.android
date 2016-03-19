package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.a.c;
import com.google.android.gms.analytics.k;
import com.google.android.gms.d.o;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class dn
  extends dk
{
  private static final String a = com.google.android.gms.d.a.zzcB.toString();
  private static final String b = com.google.android.gms.d.b.zzdi.toString();
  private static final String c = com.google.android.gms.d.b.zzds.toString();
  private static final String d = com.google.android.gms.d.b.zzeN.toString();
  private static final String e = com.google.android.gms.d.b.zzeH.toString();
  private static final String f = com.google.android.gms.d.b.zzeG.toString();
  private static final String g = com.google.android.gms.d.b.zzdr.toString();
  private static final String h = com.google.android.gms.d.b.zzhk.toString();
  private static final String i = com.google.android.gms.d.b.zzhn.toString();
  private static final String j = com.google.android.gms.d.b.zzhp.toString();
  private static final List<String> k = Arrays.asList(new String[] { "detail", "checkout", "checkout_option", "click", "add", "remove", "purchase", "refund" });
  private static final Pattern l = Pattern.compile("dimension(\\d+)");
  private static final Pattern m = Pattern.compile("metric(\\d+)");
  private static Map<String, String> n;
  private static Map<String, String> o;
  private final Set<String> p;
  private final di q;
  private final h r;
  
  public dn(Context paramContext, h paramh)
  {
    this(paramContext, paramh, new di(paramContext));
  }
  
  dn(Context paramContext, h paramh, di paramdi)
  {
    super(a, new String[0]);
    r = paramh;
    q = paramdi;
    p = new HashSet();
    p.add("");
    p.add("0");
    p.add("false");
  }
  
  private com.google.android.gms.analytics.a.b a(String paramString, Map<String, Object> paramMap)
  {
    paramString = new com.google.android.gms.analytics.a.b(paramString);
    Object localObject = paramMap.get("id");
    if (localObject != null) {
      paramString.a(String.valueOf(localObject));
    }
    localObject = paramMap.get("affiliation");
    if (localObject != null) {
      paramString.b(String.valueOf(localObject));
    }
    localObject = paramMap.get("coupon");
    if (localObject != null) {
      paramString.c(String.valueOf(localObject));
    }
    localObject = paramMap.get("list");
    if (localObject != null) {
      paramString.e(String.valueOf(localObject));
    }
    localObject = paramMap.get("option");
    if (localObject != null) {
      paramString.d(String.valueOf(localObject));
    }
    localObject = paramMap.get("revenue");
    if (localObject != null) {
      paramString.a(a(localObject).doubleValue());
    }
    localObject = paramMap.get("tax");
    if (localObject != null) {
      paramString.b(a(localObject).doubleValue());
    }
    localObject = paramMap.get("shipping");
    if (localObject != null) {
      paramString.c(a(localObject).doubleValue());
    }
    paramMap = paramMap.get("step");
    if (paramMap != null) {
      paramString.a(b(paramMap).intValue());
    }
    return paramString;
  }
  
  private Double a(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      try
      {
        paramObject = Double.valueOf((String)paramObject);
        return (Double)paramObject;
      }
      catch (NumberFormatException paramObject)
      {
        throw new RuntimeException("Cannot convert the object to Double: " + ((NumberFormatException)paramObject).getMessage());
      }
    }
    if ((paramObject instanceof Integer)) {
      return Double.valueOf(((Integer)paramObject).doubleValue());
    }
    if ((paramObject instanceof Double)) {
      return (Double)paramObject;
    }
    throw new RuntimeException("Cannot convert the object to Double: " + paramObject.toString());
  }
  
  private String a(String paramString)
  {
    paramString = r.c(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.toString();
  }
  
  private Map<String, String> a(o paramo)
  {
    paramo = dm.e(paramo);
    if (!(paramo instanceof Map)) {
      return null;
    }
    Object localObject = (Map)paramo;
    paramo = new LinkedHashMap();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      paramo.put(localEntry.getKey().toString(), localEntry.getValue().toString());
    }
    return paramo;
  }
  
  private void a(Tracker paramTracker, Map<String, o> paramMap)
  {
    String str = a("transactionId");
    if (str == null) {
      ba.a("Cannot find transactionId in data layer.");
    }
    for (;;)
    {
      return;
      LinkedList localLinkedList = new LinkedList();
      Object localObject2;
      Object localObject3;
      try
      {
        localObject1 = b((o)paramMap.get(g));
        ((Map)localObject1).put("&t", "transaction");
        localObject2 = e(paramMap).entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          a((Map)localObject1, (String)((Map.Entry)localObject3).getValue(), a((String)((Map.Entry)localObject3).getKey()));
        }
        localLinkedList.add(localObject1);
      }
      catch (IllegalArgumentException paramTracker)
      {
        ba.a("Unable to send transaction", paramTracker);
        return;
      }
      Object localObject1 = b("transactionProducts");
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Map)((Iterator)localObject1).next();
          if (((Map)localObject2).get("name") == null)
          {
            ba.a("Unable to send transaction item hit due to missing 'name' field.");
            return;
          }
          localObject3 = b((o)paramMap.get(g));
          ((Map)localObject3).put("&t", "item");
          ((Map)localObject3).put("&ti", str);
          Iterator localIterator = f(paramMap).entrySet().iterator();
          while (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            a((Map)localObject3, (String)localEntry.getValue(), (String)((Map)localObject2).get(localEntry.getKey()));
          }
          localLinkedList.add(localObject3);
        }
      }
      paramMap = localLinkedList.iterator();
      while (paramMap.hasNext()) {
        paramTracker.send((Map)paramMap.next());
      }
    }
  }
  
  private void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  private boolean a(Map<String, o> paramMap, String paramString)
  {
    paramMap = (o)paramMap.get(paramString);
    if (paramMap == null) {
      return false;
    }
    return dm.d(paramMap).booleanValue();
  }
  
  private Integer b(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      try
      {
        paramObject = Integer.valueOf((String)paramObject);
        return (Integer)paramObject;
      }
      catch (NumberFormatException paramObject)
      {
        throw new RuntimeException("Cannot convert the object to Integer: " + ((NumberFormatException)paramObject).getMessage());
      }
    }
    if ((paramObject instanceof Double)) {
      return Integer.valueOf(((Double)paramObject).intValue());
    }
    if ((paramObject instanceof Integer)) {
      return (Integer)paramObject;
    }
    throw new RuntimeException("Cannot convert the object to Integer: " + paramObject.toString());
  }
  
  private List<Map<String, String>> b(String paramString)
  {
    paramString = r.c(paramString);
    if (paramString == null) {
      return null;
    }
    if (!(paramString instanceof List)) {
      throw new IllegalArgumentException("transactionProducts should be of type List.");
    }
    Iterator localIterator = ((List)paramString).iterator();
    while (localIterator.hasNext()) {
      if (!(localIterator.next() instanceof Map)) {
        throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
      }
    }
    return (List)paramString;
  }
  
  private Map<String, String> b(o paramo)
  {
    if (paramo == null) {
      return new HashMap();
    }
    paramo = a(paramo);
    if (paramo == null) {
      return new HashMap();
    }
    String str = (String)paramo.get("&aip");
    if ((str != null) && (p.contains(str.toLowerCase()))) {
      paramo.remove("&aip");
    }
    return paramo;
  }
  
  private void b(Tracker paramTracker, Map<String, o> paramMap)
  {
    k localk = new k();
    Object localObject1 = b((o)paramMap.get(g));
    localk.a((Map)localObject1);
    if (a(paramMap, e))
    {
      paramMap = r.c("ecommerce");
      if (!(paramMap instanceof Map)) {
        break label730;
      }
      paramMap = (Map)paramMap;
    }
    for (;;)
    {
      if (paramMap != null)
      {
        Object localObject2 = (String)((Map)localObject1).get("&cu");
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = (String)paramMap.get("currencyCode");
        }
        if (localObject1 != null) {
          localk.a("&cu", (String)localObject1);
        }
        localObject1 = paramMap.get("impressions");
        if ((localObject1 instanceof List))
        {
          localObject1 = ((List)localObject1).iterator();
          for (;;)
          {
            if (((Iterator)localObject1).hasNext())
            {
              localObject2 = (Map)((Iterator)localObject1).next();
              try
              {
                localk.a(d((Map)localObject2), (String)((Map)localObject2).get("list"));
              }
              catch (RuntimeException localRuntimeException1)
              {
                ba.a("Failed to extract a product from DataLayer. " + localRuntimeException1.getMessage());
              }
              continue;
              paramMap = dm.e((o)paramMap.get(f));
              if (!(paramMap instanceof Map)) {
                break label725;
              }
              paramMap = (Map)paramMap;
              break;
            }
          }
        }
        if (paramMap.containsKey("promoClick")) {
          localObject1 = (List)((Map)paramMap.get("promoClick")).get("promotions");
        }
      }
      for (;;)
      {
        if (localObject1 != null)
        {
          localObject1 = ((List)localObject1).iterator();
          for (;;)
          {
            if (((Iterator)localObject1).hasNext())
            {
              Map localMap1 = (Map)((Iterator)localObject1).next();
              try
              {
                localk.a(c(localMap1));
              }
              catch (RuntimeException localRuntimeException2)
              {
                ba.a("Failed to extract a promotion from DataLayer. " + localRuntimeException2.getMessage());
              }
              continue;
              if (!paramMap.containsKey("promoView")) {
                break label719;
              }
              localObject1 = (List)((Map)paramMap.get("promoView")).get("promotions");
              break;
            }
          }
          if (paramMap.containsKey("promoClick")) {
            localk.a("&promoa", "click");
          }
        }
        for (int i1 = 0;; i1 = 1)
        {
          if (i1 == 0) {
            break label666;
          }
          Object localObject3 = k.iterator();
          do
          {
            if (!((Iterator)localObject3).hasNext()) {
              break;
            }
            localObject1 = (String)((Iterator)localObject3).next();
          } while (!paramMap.containsKey(localObject1));
          paramMap = (Map)paramMap.get(localObject1);
          localObject3 = (List)paramMap.get("products");
          if (localObject3 == null) {
            break;
          }
          localObject3 = ((List)localObject3).iterator();
          while (((Iterator)localObject3).hasNext())
          {
            Map localMap2 = (Map)((Iterator)localObject3).next();
            try
            {
              localk.a(d(localMap2));
            }
            catch (RuntimeException localRuntimeException3)
            {
              ba.a("Failed to extract a product from DataLayer. " + localRuntimeException3.getMessage());
            }
          }
          localk.a("&promoa", "view");
        }
        for (;;)
        {
          try
          {
            if (!paramMap.containsKey("actionField")) {
              continue;
            }
            paramMap = a((String)localObject1, (Map)paramMap.get("actionField"));
            localk.a(paramMap);
          }
          catch (RuntimeException paramMap)
          {
            label666:
            ba.a("Failed to extract a product action from DataLayer. " + paramMap.getMessage());
            continue;
          }
          paramTracker.send(localk.a());
          return;
          paramMap = new com.google.android.gms.analytics.a.b((String)localObject1);
        }
        label719:
        localObject1 = null;
      }
      label725:
      paramMap = null;
      continue;
      label730:
      paramMap = null;
    }
  }
  
  private c c(Map<String, String> paramMap)
  {
    c localc = new c();
    String str = (String)paramMap.get("id");
    if (str != null) {
      localc.a(String.valueOf(str));
    }
    str = (String)paramMap.get("name");
    if (str != null) {
      localc.b(String.valueOf(str));
    }
    str = (String)paramMap.get("creative");
    if (str != null) {
      localc.c(String.valueOf(str));
    }
    paramMap = (String)paramMap.get("position");
    if (paramMap != null) {
      localc.d(String.valueOf(paramMap));
    }
    return localc;
  }
  
  private com.google.android.gms.analytics.a.a d(Map<String, Object> paramMap)
  {
    com.google.android.gms.analytics.a.a locala = new com.google.android.gms.analytics.a.a();
    Object localObject = paramMap.get("id");
    if (localObject != null) {
      locala.a(String.valueOf(localObject));
    }
    localObject = paramMap.get("name");
    if (localObject != null) {
      locala.b(String.valueOf(localObject));
    }
    localObject = paramMap.get("brand");
    if (localObject != null) {
      locala.c(String.valueOf(localObject));
    }
    localObject = paramMap.get("category");
    if (localObject != null) {
      locala.d(String.valueOf(localObject));
    }
    localObject = paramMap.get("variant");
    if (localObject != null) {
      locala.e(String.valueOf(localObject));
    }
    localObject = paramMap.get("coupon");
    if (localObject != null) {
      locala.f(String.valueOf(localObject));
    }
    localObject = paramMap.get("position");
    if (localObject != null) {
      locala.a(b(localObject).intValue());
    }
    localObject = paramMap.get("price");
    if (localObject != null) {
      locala.a(a(localObject).doubleValue());
    }
    localObject = paramMap.get("quantity");
    if (localObject != null) {
      locala.b(b(localObject).intValue());
    }
    localObject = paramMap.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      Matcher localMatcher1 = l.matcher(str);
      int i1;
      if (localMatcher1.matches())
      {
        try
        {
          i1 = Integer.parseInt(localMatcher1.group(1));
          locala.a(i1, String.valueOf(paramMap.get(str)));
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          ba.b("illegal number in custom dimension value: " + str);
        }
      }
      else
      {
        Matcher localMatcher2 = m.matcher(str);
        if (localMatcher2.matches()) {
          try
          {
            i1 = Integer.parseInt(localMatcher2.group(1));
            locala.a(i1, b(paramMap.get(str)).intValue());
          }
          catch (NumberFormatException localNumberFormatException2)
          {
            ba.b("illegal number in custom metric value: " + str);
          }
        }
      }
    }
    return locala;
  }
  
  private Map<String, String> e(Map<String, o> paramMap)
  {
    paramMap = (o)paramMap.get(i);
    if (paramMap != null) {
      return a(paramMap);
    }
    if (n == null)
    {
      paramMap = new HashMap();
      paramMap.put("transactionId", "&ti");
      paramMap.put("transactionAffiliation", "&ta");
      paramMap.put("transactionTax", "&tt");
      paramMap.put("transactionShipping", "&ts");
      paramMap.put("transactionTotal", "&tr");
      paramMap.put("transactionCurrency", "&cu");
      n = paramMap;
    }
    return n;
  }
  
  private Map<String, String> f(Map<String, o> paramMap)
  {
    paramMap = (o)paramMap.get(j);
    if (paramMap != null) {
      return a(paramMap);
    }
    if (o == null)
    {
      paramMap = new HashMap();
      paramMap.put("name", "&in");
      paramMap.put("sku", "&ic");
      paramMap.put("category", "&iv");
      paramMap.put("price", "&ip");
      paramMap.put("quantity", "&iq");
      paramMap.put("currency", "&cu");
      o = paramMap;
    }
    return o;
  }
  
  public void b(Map<String, o> paramMap)
  {
    Tracker localTracker = q.a("_GTM_DEFAULT_TRACKER_");
    localTracker.enableAdvertisingIdCollection(a(paramMap, "collect_adid"));
    if (a(paramMap, d))
    {
      b(localTracker, paramMap);
      return;
    }
    if (a(paramMap, c))
    {
      localTracker.send(b((o)paramMap.get(g)));
      return;
    }
    if (a(paramMap, h))
    {
      a(localTracker, paramMap);
      return;
    }
    ba.b("Ignoring unknown tag.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */