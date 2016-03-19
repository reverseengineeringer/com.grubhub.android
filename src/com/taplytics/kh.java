package com.taplytics;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.ImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class kh
{
  private static Object a(View paramView, Method paramMethod)
    throws InvocationTargetException, IllegalAccessException
  {
    try
    {
      Object localObject = paramMethod.invoke(paramView, new Object[0]);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
    return a(paramView, paramMethod);
  }
  
  private static String a(Class<?> paramClass)
  {
    String str = null;
    if (gm.a().b().containsKey(paramClass.getSimpleName())) {
      str = paramClass.getSimpleName();
    }
    while (paramClass.getSimpleName().equals("View")) {
      return str;
    }
    return a(paramClass.getSuperclass());
  }
  
  public static JSONObject a(Class<?> paramClass, View paramView)
    throws JSONException
  {
    JSONArray localJSONArray1 = new JSONArray();
    JSONArray localJSONArray2 = new JSONArray();
    Object localObject1 = new HashSet(Arrays.asList(paramClass.getMethods()));
    paramClass = a(paramClass);
    HashSet localHashSet1 = (HashSet)gm.a().b().get(paramClass);
    HashSet localHashSet2 = (HashSet)gm.a().c().get(paramClass);
    Iterator localIterator = ((HashSet)localObject1).iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Method)localIterator.next();
      String str = ((Method)localObject2).getName();
      JSONObject localJSONObject = new JSONObject();
      JSONArray localJSONArray3 = new JSONArray();
      if (localHashSet1.contains(str))
      {
        localObject2 = ((Method)localObject2).getParameterTypes();
        int j = localObject2.length;
        int i = 0;
        while (i < j)
        {
          localObject1 = localObject2[i];
          paramClass = (Class<?>)localObject1;
          if (((Class)localObject1).isArray()) {
            paramClass = ((Class)localObject1).getComponentType();
          }
          localJSONArray3.put(paramClass.getName());
          i += 1;
        }
        localJSONObject.put("paramTypes", localJSONArray3);
        localJSONObject.put("methodName", str);
        localJSONArray1.put(localJSONObject);
        localHashSet1.remove(str);
      }
      else if (localHashSet2.contains(str))
      {
        localObject1 = new JSONObject();
        label325:
        for (;;)
        {
          try
          {
            if (!b(((Method)localObject2).getReturnType())) {
              break;
            }
            paramClass = a(paramView, (Method)localObject2);
            ((JSONObject)localObject1).put("methodName", ((Method)localObject2).getName());
            if (paramClass != null) {
              break label325;
            }
            paramClass = "null";
            ((JSONObject)localObject1).put("currentValue", paramClass);
            localJSONArray2.put(localObject1);
            localHashSet2.remove(str);
          }
          catch (Exception paramClass)
          {
            ck.b("something", paramClass);
          }
          break;
        }
      }
    }
    paramClass = new JSONObject();
    paramView = new JSONArray();
    paramClass.put("methodName", "setWidth");
    paramView.put(Integer.TYPE.getName());
    paramClass.put("paramTypes", paramView);
    localJSONArray1.put(paramClass);
    paramClass = new JSONObject();
    paramView = new JSONArray();
    paramClass.put("methodName", "setHeight");
    paramView.put(Integer.TYPE.getName());
    paramClass.put("paramTypes", paramView);
    localJSONArray1.put(paramClass);
    paramClass = new JSONObject();
    paramClass.put("variables", localJSONArray2);
    paramClass.put("setters", localJSONArray1);
    return paramClass;
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  public static void a(View paramView, String paramString1, Object paramObject, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: invokestatic 182	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   3: invokevirtual 186	com/taplytics/fy:q	()Landroid/app/Activity;
    //   6: ifnull +210 -> 216
    //   9: iconst_0
    //   10: istore 7
    //   12: iconst_0
    //   13: istore 6
    //   15: iload 4
    //   17: ifne +38 -> 55
    //   20: aload_2
    //   21: ifnull +34 -> 55
    //   24: aload_2
    //   25: getstatic 190	org/json/JSONObject:NULL	Ljava/lang/Object;
    //   28: if_acmpeq +27 -> 55
    //   31: aload_2
    //   32: invokestatic 192	com/taplytics/kh:a	(Ljava/lang/Object;)Z
    //   35: ifne +20 -> 55
    //   38: aload_2
    //   39: instanceof 66
    //   42: ifeq +208 -> 250
    //   45: aload_2
    //   46: checkcast 66	org/json/JSONArray
    //   49: invokevirtual 196	org/json/JSONArray:length	()I
    //   52: ifne +198 -> 250
    //   55: aload_0
    //   56: invokestatic 202	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   59: invokevirtual 205	com/taplytics/gq:t	()I
    //   62: invokevirtual 211	android/view/View:getTag	(I)Ljava/lang/Object;
    //   65: astore 8
    //   67: aload 8
    //   69: ifnull +181 -> 250
    //   72: aload 8
    //   74: instanceof 40
    //   77: ifeq +173 -> 250
    //   80: aload 8
    //   82: checkcast 40	java/util/HashMap
    //   85: aload_1
    //   86: invokevirtual 44	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   89: ifeq +161 -> 250
    //   92: aload 8
    //   94: checkcast 40	java/util/HashMap
    //   97: aload_1
    //   98: invokevirtual 89	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   101: astore 8
    //   103: aload 8
    //   105: ifnull +136 -> 241
    //   108: iload 7
    //   110: istore 6
    //   112: aload 8
    //   114: instanceof 40
    //   117: ifeq +124 -> 241
    //   120: iconst_1
    //   121: istore 6
    //   123: aload 8
    //   125: checkcast 40	java/util/HashMap
    //   128: aload_1
    //   129: invokevirtual 89	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   132: astore_2
    //   133: iconst_1
    //   134: istore 6
    //   136: aload_2
    //   137: ifnull +79 -> 216
    //   140: aload_2
    //   141: getstatic 190	org/json/JSONObject:NULL	Ljava/lang/Object;
    //   144: if_acmpeq +72 -> 216
    //   147: aload_2
    //   148: invokestatic 192	com/taplytics/kh:a	(Ljava/lang/Object;)Z
    //   151: ifne +65 -> 216
    //   154: aload_2
    //   155: instanceof 66
    //   158: ifeq +13 -> 171
    //   161: aload_2
    //   162: checkcast 66	org/json/JSONArray
    //   165: invokevirtual 196	org/json/JSONArray:length	()I
    //   168: ifeq +48 -> 216
    //   171: iload 6
    //   173: ifne +23 -> 196
    //   176: iload 5
    //   178: ifne +12 -> 190
    //   181: invokestatic 182	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   184: invokevirtual 214	com/taplytics/fy:g	()Z
    //   187: ifeq +9 -> 196
    //   190: aload_0
    //   191: aload_1
    //   192: aload_3
    //   193: invokestatic 217	com/taplytics/kh:a	(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    //   196: invokestatic 182	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   199: invokevirtual 186	com/taplytics/fy:q	()Landroid/app/Activity;
    //   202: new 219	com/taplytics/a
    //   205: dup
    //   206: aload_1
    //   207: aload_2
    //   208: aload_0
    //   209: aload_3
    //   210: invokespecial 222	com/taplytics/a:<init>	(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;Ljava/lang/String;)V
    //   213: invokevirtual 228	android/app/Activity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   216: return
    //   217: astore 8
    //   219: ldc -26
    //   221: aload 8
    //   223: invokestatic 157	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   226: goto -90 -> 136
    //   229: astore 9
    //   231: aload 8
    //   233: astore_2
    //   234: aload 9
    //   236: astore 8
    //   238: goto -19 -> 219
    //   241: iconst_0
    //   242: istore 6
    //   244: aload 8
    //   246: astore_2
    //   247: goto -111 -> 136
    //   250: iconst_0
    //   251: istore 6
    //   253: goto -117 -> 136
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	256	0	paramView	View
    //   0	256	1	paramString1	String
    //   0	256	2	paramObject	Object
    //   0	256	3	paramString2	String
    //   0	256	4	paramBoolean1	boolean
    //   0	256	5	paramBoolean2	boolean
    //   13	239	6	i	int
    //   10	99	7	j	int
    //   65	59	8	localObject1	Object
    //   217	15	8	localException1	Exception
    //   236	9	8	localObject2	Object
    //   229	6	9	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   24	55	217	java/lang/Exception
    //   55	67	217	java/lang/Exception
    //   72	103	217	java/lang/Exception
    //   112	120	229	java/lang/Exception
    //   123	133	229	java/lang/Exception
  }
  
  private static void a(View paramView, String paramString1, String paramString2)
  {
    for (;;)
    {
      HashMap localHashMap;
      int i;
      try
      {
        Object localObject1 = paramView.getTag(gq.h().t());
        if ((localObject1 != null) && ((localObject1 instanceof HashMap)))
        {
          localObject1 = (HashMap)localObject1;
          if (!((HashMap)localObject1).containsKey(paramString1)) {}
        }
        else
        {
          localObject1 = new HashMap();
          continue;
        }
        localHashMap = new HashMap();
        localHashMap.put("parameterType", paramString2);
        i = -1;
        switch (paramString1.hashCode())
        {
        case -2127641265: 
          paramString2 = paramView.getClass().getMethod(paramString1.replaceAll("set", "get"), new Class[0]).invoke(paramView, new Object[0]);
          localHashMap.put(paramString1, paramString2);
          ((HashMap)localObject1).put(paramString1, localHashMap);
          paramView.setTag(gq.h().t(), localObject1);
          return;
        }
      }
      catch (Exception paramView)
      {
        ck.b("error adding method to view tag", paramView);
        return;
      }
      if (paramString1.equals("setPadding"))
      {
        i = 0;
        break label647;
        if (paramString1.equals("setWidth"))
        {
          i = 1;
          break label647;
          if (paramString1.equals("setHeight"))
          {
            i = 2;
            break label647;
            if (paramString1.equals("setTextColor"))
            {
              i = 3;
              break label647;
              if (paramString1.equals("setBackgroundColor"))
              {
                i = 4;
                break label647;
                if (paramString1.equals("setImageDrawable"))
                {
                  i = 5;
                  break label647;
                  if (paramString1.equals("setBackgroundDrawable"))
                  {
                    i = 6;
                    break label647;
                    i = paramView.getPaddingTop();
                    int j = paramView.getPaddingLeft();
                    int k = paramView.getPaddingRight();
                    int m = paramView.getPaddingBottom();
                    paramString2 = new JSONObject();
                    paramString2.put("top", i);
                    paramString2.put("bottom", j);
                    paramString2.put("left", k);
                    paramString2.put("right", m);
                    localHashMap.put(paramString1, paramString2);
                    continue;
                    paramView.post(new ah(paramView, paramString1, paramString2));
                    return;
                    paramString2 = paramView.getClass().getMethod("getCurrentTextColor", new Class[0]).invoke(paramView, new Object[0]);
                    continue;
                    try
                    {
                      paramString2 = (ColorDrawable)paramView.getBackground();
                      if (Build.VERSION.SDK_INT >= 11)
                      {
                        paramString2 = Integer.valueOf(paramString2.getColor());
                        continue;
                      }
                      paramString2 = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                      localObject2 = new Canvas(paramString2);
                      Rect localRect = new Rect();
                      ColorDrawable localColorDrawable = (ColorDrawable)paramView.getBackground();
                      localRect.set(localColorDrawable.getBounds());
                      localColorDrawable.setBounds(0, 0, 1, 1);
                      localColorDrawable.draw((Canvas)localObject2);
                      i = paramString2.getPixel(0, 0);
                      localColorDrawable.setBounds(localRect);
                      paramString2 = Integer.valueOf(i);
                    }
                    catch (Exception paramString2)
                    {
                      localObject2 = paramView.getBackground();
                      paramString2 = (String)localObject2;
                    }
                    if (localObject2 != null) {
                      continue;
                    }
                    paramString2 = "null";
                    continue;
                    if ((paramView instanceof ImageView))
                    {
                      if ((((ImageView)paramView).getDrawable() instanceof BitmapDrawable))
                      {
                        paramString2 = ((BitmapDrawable)((ImageView)paramView).getDrawable()).getBitmap();
                        continue;
                      }
                      paramString2 = ((ImageView)paramView).getDrawable();
                      continue;
                    }
                    paramString2 = paramView.getBackground();
                    continue;
                    Object localObject2 = paramView.getBackground();
                    paramString2 = (String)localObject2;
                    if (localObject2 != null) {
                      continue;
                    }
                    paramString2 = "null";
                    continue;
                  }
                }
              }
            }
          }
        }
      }
      label647:
      switch (i)
      {
      }
    }
  }
  
  private static boolean a(Object paramObject)
  {
    Iterator localIterator;
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      localIterator = ((JSONObject)paramObject).keys();
    }
    for (;;)
    {
      Object localObject;
      if (localIterator.hasNext()) {
        localObject = (String)localIterator.next();
      }
      try
      {
        if (((JSONObject)paramObject).get((String)localObject) == JSONObject.NULL) {
          continue;
        }
        localObject = ((JSONObject)paramObject).get((String)localObject);
        if (localObject == null) {
          continue;
        }
        return false;
      }
      catch (Exception localException) {}
      return true;
      return false;
    }
  }
  
  private static boolean b(Class<?> paramClass)
  {
    return (paramClass.equals(Integer.class)) || (paramClass.equals(Boolean.class)) || (paramClass.equals(CharSequence.class)) || (paramClass.equals(String.class)) || (paramClass.equals(Float.TYPE)) || (paramClass.equals(Integer.TYPE)) || (paramClass.equals(Long.TYPE)) || (paramClass.equals(Short.TYPE)) || (paramClass.equals(Number.class)) || (paramClass.equals(CharSequence.class)) || (paramClass.equals(Double.TYPE)) || (paramClass.equals(Boolean.TYPE)) || (paramClass.equals(Byte.TYPE)) || (paramClass.equals(StringBuilder.class)) || (paramClass.equals(StringBuffer.class)) || (paramClass.equals(Float.class)) || (paramClass.equals(Double.class)) || (paramClass.equals(Long.class)) || (paramClass.equals(Short.class)) || (paramClass.equals(Byte.class));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */