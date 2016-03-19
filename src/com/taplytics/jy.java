package com.taplytics;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.view.bi;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class jy
{
  private static HashMap a = new HashMap();
  
  public static int a(View paramView)
  {
    try
    {
      paramView = jk.c(paramView);
      if (paramView != gq.h().i())
      {
        if (fq.a().c().containsKey(Integer.valueOf(paramView.getId()))) {
          return paramView.getId();
        }
        int i = a(paramView);
        return i;
      }
    }
    catch (Exception paramView) {}
    return -2;
  }
  
  /* Error */
  public static Fragment a(bi parambi, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: instanceof 64
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: instanceof 66
    //   11: ifeq +363 -> 374
    //   14: aload_0
    //   15: instanceof 64
    //   18: ifeq +44 -> 62
    //   21: ldc 64
    //   23: astore 9
    //   25: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   28: aload 9
    //   30: invokevirtual 69	com/taplytics/fq:a	(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    //   33: ifnull +36 -> 69
    //   36: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   39: aload 9
    //   41: invokevirtual 69	com/taplytics/fq:a	(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    //   44: astore 7
    //   46: aload 7
    //   48: aload_0
    //   49: invokestatic 72	com/taplytics/jy:a	(Ljava/lang/reflect/Field;Landroid/support/v4/view/bi;)Landroid/support/v4/app/Fragment;
    //   52: astore 6
    //   54: aload 6
    //   56: ifnull +315 -> 371
    //   59: aload 6
    //   61: areturn
    //   62: ldc 66
    //   64: astore 9
    //   66: goto -41 -> 25
    //   69: aload 9
    //   71: ldc 74
    //   73: invokevirtual 80	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   76: astore 7
    //   78: aconst_null
    //   79: astore 6
    //   81: aload 6
    //   83: astore 8
    //   85: aload 7
    //   87: ifnull +25 -> 112
    //   90: aload 7
    //   92: aload_0
    //   93: invokestatic 72	com/taplytics/jy:a	(Ljava/lang/reflect/Field;Landroid/support/v4/view/bi;)Landroid/support/v4/app/Fragment;
    //   96: astore 8
    //   98: aload 8
    //   100: astore 6
    //   102: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   105: aload 7
    //   107: aload 9
    //   109: invokevirtual 83	com/taplytics/fq:a	(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    //   112: aload 8
    //   114: ifnonnull +245 -> 359
    //   117: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   120: invokevirtual 87	com/taplytics/fq:g	()Ljava/lang/reflect/Method;
    //   123: ifnonnull +236 -> 359
    //   126: aload_0
    //   127: invokevirtual 91	java/lang/Object:getClass	()Ljava/lang/Class;
    //   130: invokevirtual 95	java/lang/Class:getDeclaredMethods	()[Ljava/lang/reflect/Method;
    //   133: astore 6
    //   135: aload 6
    //   137: arraylength
    //   138: istore 4
    //   140: iconst_0
    //   141: istore_2
    //   142: iload_2
    //   143: iload 4
    //   145: if_icmpge +140 -> 285
    //   148: aload 6
    //   150: iload_2
    //   151: aaload
    //   152: astore 7
    //   154: aload 7
    //   156: invokevirtual 100	java/lang/reflect/Method:getReturnType	()Ljava/lang/Class;
    //   159: ldc 102
    //   161: invokevirtual 105	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   164: ifeq +114 -> 278
    //   167: aload 7
    //   169: invokevirtual 109	java/lang/reflect/Method:getParameterTypes	()[Ljava/lang/Class;
    //   172: arraylength
    //   173: iconst_1
    //   174: if_icmpne +104 -> 278
    //   177: aload 7
    //   179: invokevirtual 109	java/lang/reflect/Method:getParameterTypes	()[Ljava/lang/Class;
    //   182: astore 9
    //   184: aload 9
    //   186: arraylength
    //   187: istore 5
    //   189: iconst_0
    //   190: istore_3
    //   191: iload_3
    //   192: iload 5
    //   194: if_icmpge +84 -> 278
    //   197: aload 9
    //   199: iload_3
    //   200: aaload
    //   201: getstatic 113	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   204: invokevirtual 105	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   207: ifeq +11 -> 218
    //   210: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   213: aload 7
    //   215: invokevirtual 116	com/taplytics/fq:a	(Ljava/lang/reflect/Method;)V
    //   218: iload_3
    //   219: iconst_1
    //   220: iadd
    //   221: istore_3
    //   222: goto -31 -> 191
    //   225: astore 6
    //   227: aload 9
    //   229: invokevirtual 120	java/lang/Class:getDeclaredFields	()[Ljava/lang/reflect/Field;
    //   232: astore 6
    //   234: aload 6
    //   236: arraylength
    //   237: istore_3
    //   238: iconst_0
    //   239: istore_2
    //   240: iload_2
    //   241: iload_3
    //   242: if_icmpge +120 -> 362
    //   245: aload 6
    //   247: iload_2
    //   248: aaload
    //   249: astore 7
    //   251: aload 7
    //   253: invokevirtual 125	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   256: astore 8
    //   258: aload 8
    //   260: ldc 102
    //   262: if_acmpne +9 -> 271
    //   265: aconst_null
    //   266: astore 6
    //   268: goto -187 -> 81
    //   271: iload_2
    //   272: iconst_1
    //   273: iadd
    //   274: istore_2
    //   275: goto -35 -> 240
    //   278: iload_2
    //   279: iconst_1
    //   280: iadd
    //   281: istore_2
    //   282: goto -140 -> 142
    //   285: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   288: invokevirtual 87	com/taplytics/fq:g	()Ljava/lang/reflect/Method;
    //   291: ifnull +68 -> 359
    //   294: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   297: invokevirtual 87	com/taplytics/fq:g	()Ljava/lang/reflect/Method;
    //   300: aload_0
    //   301: iconst_1
    //   302: anewarray 4	java/lang/Object
    //   305: dup
    //   306: iconst_0
    //   307: iload_1
    //   308: invokestatic 55	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   311: aastore
    //   312: invokevirtual 129	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   315: checkcast 102	android/support/v4/app/Fragment
    //   318: astore_0
    //   319: aload_0
    //   320: areturn
    //   321: astore_0
    //   322: aload 8
    //   324: astore 6
    //   326: ldc -125
    //   328: aload_0
    //   329: invokestatic 137	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   332: aconst_null
    //   333: areturn
    //   334: astore 6
    //   336: aconst_null
    //   337: astore_0
    //   338: ldc -125
    //   340: aload 6
    //   342: invokestatic 137	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   345: aload_0
    //   346: areturn
    //   347: astore 7
    //   349: aload 6
    //   351: astore_0
    //   352: aload 7
    //   354: astore 6
    //   356: goto -18 -> 338
    //   359: aload 8
    //   361: areturn
    //   362: aconst_null
    //   363: astore 7
    //   365: aconst_null
    //   366: astore 6
    //   368: goto -287 -> 81
    //   371: goto -290 -> 81
    //   374: aconst_null
    //   375: astore 8
    //   377: goto -265 -> 112
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	380	0	parambi	bi
    //   0	380	1	paramInt	int
    //   141	141	2	i	int
    //   190	53	3	j	int
    //   138	8	4	k	int
    //   187	8	5	m	int
    //   52	97	6	localObject1	Object
    //   225	1	6	localException1	Exception
    //   232	93	6	localObject2	Object
    //   334	16	6	localException2	Exception
    //   354	13	6	localException3	Exception
    //   44	208	7	localField	Field
    //   347	6	7	localException4	Exception
    //   363	1	7	localObject3	Object
    //   83	293	8	localObject4	Object
    //   23	205	9	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   69	78	225	java/lang/Exception
    //   117	140	321	java/lang/Exception
    //   154	189	321	java/lang/Exception
    //   197	218	321	java/lang/Exception
    //   285	319	321	java/lang/Exception
    //   0	14	334	java/lang/Exception
    //   14	21	334	java/lang/Exception
    //   25	54	334	java/lang/Exception
    //   227	238	334	java/lang/Exception
    //   251	258	334	java/lang/Exception
    //   90	98	347	java/lang/Exception
    //   102	112	347	java/lang/Exception
    //   326	332	347	java/lang/Exception
  }
  
  private static Fragment a(Field paramField, bi parambi)
    throws Exception
  {
    paramField.setAccessible(true);
    paramField = paramField.get(parambi);
    if (paramField == null) {
      return null;
    }
    return (Fragment)paramField;
  }
  
  public static void a(int paramInt)
  {
    try
    {
      boolean bool = fq.a().c().containsKey(Integer.valueOf(paramInt));
      Pair localPair = (Pair)fq.a().c().remove(Integer.valueOf(paramInt));
      if (bool)
      {
        new JSONObject().putOpt("fragment", Boolean.valueOf(true));
        if (!iz.a(kb.albatross))
        {
          fy.e().n().b("viewDisappeared", cgetvalueOffirst, null);
          cc.a(paramInt);
        }
        fq.a().d().add(second);
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("VP remove:", localException);
    }
  }
  
  @SuppressLint({"unchecked"})
  private static void a(int paramInt, Object paramObject, String paramString, ViewGroup paramViewGroup)
  {
    try
    {
      if ((!fq.a().c().containsKey(Integer.valueOf(paramInt))) || ((fq.a().c().containsKey(Integer.valueOf(paramInt))) && (!((String)acgetvalueOfsecond).equals(paramObject))))
      {
        HashMap localHashMap = fq.a().c();
        String str = fy.e().q().getClass().getSimpleName();
        StringBuilder localStringBuilder = new StringBuilder().append(paramString);
        if (paramObject == null)
        {
          paramObject = "";
          localHashMap.put(Integer.valueOf(paramInt), new Pair(str, (String)paramObject));
          paramObject = new JSONObject();
          ((JSONObject)paramObject).putOpt("fragment", Boolean.valueOf(true));
          if (!iz.a(kb.albatross)) {
            fy.e().n().b("viewAppeared", paramString, (JSONObject)paramObject);
          }
          fy.e().v();
          if (paramViewGroup.getTag(gq.h().t()) != null) {
            break label260;
          }
          jk.a(paramViewGroup, false, new AtomicBoolean(false));
        }
        for (;;)
        {
          cc.c().put(Integer.valueOf(paramInt), new Pair(paramString, Long.valueOf(System.currentTimeMillis())));
          return;
          paramObject = "_" + paramObject.toString();
          break;
          label260:
          paramObject = paramViewGroup.getTag(gq.h().t());
          if (((paramObject instanceof HashMap)) && (!((HashMap)paramObject).containsKey("fragmentChecked"))) {
            jk.a(paramViewGroup, false, new AtomicBoolean(false));
          }
        }
      }
      return;
    }
    catch (Exception paramObject)
    {
      ck.b("adding f: ", (Exception)paramObject);
    }
  }
  
  private static void a(ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramViewGroup.getChildCount() > 0)
    {
      localObject = paramViewGroup.getTag(gq.h().t());
      if (localObject != null) {
        break label58;
      }
      localObject = new HashMap();
    }
    for (;;)
    {
      if (localObject != null)
      {
        ((HashMap)localObject).put("fragmentChecked", Boolean.valueOf(true));
        paramViewGroup.setTag(gq.h().t(), localObject);
      }
      return;
      label58:
      if ((localObject instanceof HashMap)) {
        localObject = (HashMap)localObject;
      } else {
        localObject = null;
      }
    }
  }
  
  public static void a(ViewGroup paramViewGroup1, ViewGroup paramViewGroup2, int paramInt, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      if (paramViewGroup2.getTag(fq.a().b()) == null)
      {
        if ((a.containsKey(paramString1)) && (((Boolean)a.get(paramString1)).booleanValue())) {
          return;
        }
        a.put(paramString1, Boolean.valueOf(true));
        new Handler().postDelayed(new jz(paramViewGroup2, paramString1), 10L);
        a(paramInt, true);
        a(paramInt, paramString1, paramString2, paramViewGroup1);
        a.put(paramString1, Boolean.valueOf(false));
        jk.c(gq.h().i());
        return;
      }
      if (((paramViewGroup2.getVisibility() == 8) || (paramBoolean1)) && ((paramViewGroup1.getParent() instanceof ViewGroup)))
      {
        a(paramInt, true);
        a((ViewGroup)paramViewGroup1.getParent(), true, new AtomicBoolean());
        return;
      }
      if ((paramBoolean2) && (!paramBoolean1) && ((paramViewGroup1.getParent() instanceof ViewGroup)) && (a(((ViewGroup)paramViewGroup1.getParent()).getId(), true))) {
        a(paramInt, paramString1, paramString2, paramViewGroup1);
      }
      return;
    }
    catch (Exception paramViewGroup1) {}
  }
  
  public static void a(ViewGroup paramViewGroup, Object paramObject)
  {
    if (paramObject != null) {
      paramViewGroup.setTag(fq.a().b(), paramObject);
    }
  }
  
  public static boolean a(int paramInt, boolean paramBoolean)
  {
    try
    {
      if (fq.a().c().containsKey(Integer.valueOf(paramInt)))
      {
        if (paramBoolean) {
          fq.a().c().remove(Integer.valueOf(paramInt));
        }
        if (cc.c().containsKey(Integer.valueOf(paramInt)))
        {
          new JSONObject().putOpt("fragment", Boolean.valueOf(true));
          if (!iz.a(kb.albatross))
          {
            fy.e().n().b("viewDisappeared", cgetvalueOffirst, null);
            cc.a(paramInt);
          }
        }
        return true;
      }
      return false;
    }
    catch (Exception localException)
    {
      ck.b("fragment removal:", localException);
    }
    return false;
  }
  
  /* Error */
  @SuppressLint({"NewApi"})
  public static boolean a(ViewGroup paramViewGroup, boolean paramBoolean, AtomicBoolean paramAtomicBoolean)
  {
    // Byte code:
    //   0: invokestatic 183	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   3: invokevirtual 356	com/taplytics/fy:c	()Z
    //   6: ifeq +421 -> 427
    //   9: invokestatic 183	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   12: invokevirtual 235	com/taplytics/fy:q	()Landroid/app/Activity;
    //   15: ifnull +259 -> 274
    //   18: aload_0
    //   19: aload_0
    //   20: invokestatic 359	com/taplytics/jy:b	(Landroid/view/ViewGroup;)I
    //   23: invokevirtual 363	android/view/ViewGroup:findViewById	(I)Landroid/view/View;
    //   26: ifnonnull +248 -> 274
    //   29: getstatic 369	android/os/Build$VERSION:SDK_INT	I
    //   32: bipush 11
    //   34: if_icmplt +61 -> 95
    //   37: getstatic 372	com/taplytics/kb:bobcat	Lcom/taplytics/kb;
    //   40: invokestatic 177	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   43: ifne +52 -> 95
    //   46: invokestatic 183	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   49: invokevirtual 235	com/taplytics/fy:q	()Landroid/app/Activity;
    //   52: invokevirtual 378	android/app/Activity:getFragmentManager	()Landroid/app/FragmentManager;
    //   55: aload_0
    //   56: invokevirtual 49	android/view/ViewGroup:getId	()I
    //   59: invokevirtual 384	android/app/FragmentManager:findFragmentById	(I)Landroid/app/Fragment;
    //   62: ifnull +33 -> 95
    //   65: aload_0
    //   66: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   69: invokevirtual 387	com/taplytics/fq:e	()Landroid/view/View$OnLayoutChangeListener;
    //   72: invokevirtual 391	android/view/ViewGroup:removeOnLayoutChangeListener	(Landroid/view/View$OnLayoutChangeListener;)V
    //   75: aload_0
    //   76: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   79: invokevirtual 387	com/taplytics/fq:e	()Landroid/view/View$OnLayoutChangeListener;
    //   82: invokevirtual 394	android/view/ViewGroup:addOnLayoutChangeListener	(Landroid/view/View$OnLayoutChangeListener;)V
    //   85: aload_0
    //   86: invokestatic 333	com/taplytics/jk:c	(Landroid/view/ViewGroup;)V
    //   89: aload_0
    //   90: invokestatic 396	com/taplytics/jy:a	(Landroid/view/ViewGroup;)V
    //   93: iconst_0
    //   94: ireturn
    //   95: getstatic 399	com/taplytics/kb:bluejay	Lcom/taplytics/kb;
    //   98: invokestatic 177	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   101: ifne +175 -> 276
    //   104: getstatic 402	com/taplytics/kb:boar	Lcom/taplytics/kb;
    //   107: invokestatic 177	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   110: ifne +166 -> 276
    //   113: ldc_w 404
    //   116: invokestatic 408	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   119: aload_0
    //   120: invokevirtual 411	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   123: ifeq +153 -> 276
    //   126: aload_0
    //   127: checkcast 413	android/support/v4/view/ViewPager
    //   130: astore_2
    //   131: aload_2
    //   132: invokevirtual 417	android/support/v4/view/ViewPager:getAdapter	()Landroid/support/v4/view/bi;
    //   135: astore_3
    //   136: aload_2
    //   137: invokestatic 31	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   140: invokevirtual 266	com/taplytics/gq:t	()I
    //   143: invokevirtual 418	android/support/v4/view/ViewPager:getTag	(I)Ljava/lang/Object;
    //   146: astore 4
    //   148: aload 4
    //   150: ifnonnull +60 -> 210
    //   153: new 10	java/util/HashMap
    //   156: dup
    //   157: invokespecial 13	java/util/HashMap:<init>	()V
    //   160: astore 4
    //   162: aload 4
    //   164: ldc_w 420
    //   167: iconst_1
    //   168: invokestatic 162	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   171: invokevirtual 258	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   174: pop
    //   175: aload_2
    //   176: invokestatic 31	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   179: invokevirtual 266	com/taplytics/gq:t	()I
    //   182: aload 4
    //   184: invokevirtual 421	android/support/v4/view/ViewPager:setTag	(ILjava/lang/Object;)V
    //   187: aload_0
    //   188: invokevirtual 425	android/view/ViewGroup:getViewTreeObserver	()Landroid/view/ViewTreeObserver;
    //   191: new 427	com/taplytics/ka
    //   194: dup
    //   195: aload_2
    //   196: aload_0
    //   197: aload_3
    //   198: invokespecial 430	com/taplytics/ka:<init>	(Landroid/support/v4/view/ViewPager;Landroid/view/ViewGroup;Landroid/support/v4/view/bi;)V
    //   201: invokevirtual 436	android/view/ViewTreeObserver:addOnGlobalLayoutListener	(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    //   204: aload_0
    //   205: invokestatic 396	com/taplytics/jy:a	(Landroid/view/ViewGroup;)V
    //   208: iconst_0
    //   209: ireturn
    //   210: aload 4
    //   212: instanceof 10
    //   215: ifeq -28 -> 187
    //   218: aload 4
    //   220: checkcast 10	java/util/HashMap
    //   223: astore 4
    //   225: aload 4
    //   227: ldc_w 420
    //   230: invokevirtual 59	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   233: ifeq +5 -> 238
    //   236: iconst_0
    //   237: ireturn
    //   238: aload 4
    //   240: ldc_w 420
    //   243: iconst_1
    //   244: invokestatic 162	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   247: invokevirtual 258	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   250: pop
    //   251: aload_2
    //   252: invokestatic 31	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   255: invokevirtual 266	com/taplytics/gq:t	()I
    //   258: aload 4
    //   260: invokevirtual 421	android/support/v4/view/ViewPager:setTag	(ILjava/lang/Object;)V
    //   263: goto -76 -> 187
    //   266: astore_0
    //   267: ldc_w 438
    //   270: aload_0
    //   271: invokestatic 137	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   274: iconst_0
    //   275: ireturn
    //   276: iload_1
    //   277: ifne -3 -> 274
    //   280: getstatic 402	com/taplytics/kb:boar	Lcom/taplytics/kb;
    //   283: invokestatic 177	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   286: istore_1
    //   287: iload_1
    //   288: ifne -14 -> 274
    //   291: invokestatic 183	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   294: invokevirtual 235	com/taplytics/fy:q	()Landroid/app/Activity;
    //   297: invokevirtual 91	java/lang/Object:getClass	()Ljava/lang/Class;
    //   300: ldc_w 440
    //   303: iconst_0
    //   304: anewarray 76	java/lang/Class
    //   307: invokevirtual 444	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   310: invokestatic 183	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   313: invokevirtual 235	com/taplytics/fy:q	()Landroid/app/Activity;
    //   316: iconst_0
    //   317: anewarray 4	java/lang/Object
    //   320: invokevirtual 129	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   323: checkcast 446	android/support/v4/app/w
    //   326: astore_3
    //   327: aload_3
    //   328: ifnull +61 -> 389
    //   331: aload_2
    //   332: invokevirtual 448	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   335: ifne +13 -> 348
    //   338: aload_3
    //   339: invokevirtual 450	android/support/v4/app/w:b	()Z
    //   342: pop
    //   343: aload_2
    //   344: iconst_1
    //   345: invokevirtual 453	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   348: aload_3
    //   349: aload_0
    //   350: invokevirtual 49	android/view/ViewGroup:getId	()I
    //   353: invokevirtual 456	android/support/v4/app/w:a	(I)Landroid/support/v4/app/Fragment;
    //   356: ifnull -82 -> 274
    //   359: aload_0
    //   360: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   363: invokevirtual 459	com/taplytics/fq:f	()Landroid/view/View$OnLayoutChangeListener;
    //   366: invokevirtual 391	android/view/ViewGroup:removeOnLayoutChangeListener	(Landroid/view/View$OnLayoutChangeListener;)V
    //   369: aload_0
    //   370: invokestatic 40	com/taplytics/fq:a	()Lcom/taplytics/fq;
    //   373: invokevirtual 459	com/taplytics/fq:f	()Landroid/view/View$OnLayoutChangeListener;
    //   376: invokevirtual 394	android/view/ViewGroup:addOnLayoutChangeListener	(Landroid/view/View$OnLayoutChangeListener;)V
    //   379: aload_0
    //   380: invokestatic 333	com/taplytics/jk:c	(Landroid/view/ViewGroup;)V
    //   383: aload_0
    //   384: invokestatic 396	com/taplytics/jy:a	(Landroid/view/ViewGroup;)V
    //   387: iconst_0
    //   388: ireturn
    //   389: iconst_1
    //   390: ireturn
    //   391: astore_0
    //   392: iconst_1
    //   393: ireturn
    //   394: astore_0
    //   395: aload_0
    //   396: instanceof 19
    //   399: ifeq +17 -> 416
    //   402: aload_0
    //   403: checkcast 19	java/lang/Exception
    //   406: astore_0
    //   407: ldc_w 461
    //   410: aload_0
    //   411: invokestatic 137	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   414: iconst_0
    //   415: ireturn
    //   416: new 19	java/lang/Exception
    //   419: dup
    //   420: invokespecial 462	java/lang/Exception:<init>	()V
    //   423: astore_0
    //   424: goto -17 -> 407
    //   427: iconst_0
    //   428: ireturn
    //   429: astore_2
    //   430: goto -82 -> 348
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	433	0	paramViewGroup	ViewGroup
    //   0	433	1	paramBoolean	boolean
    //   0	433	2	paramAtomicBoolean	AtomicBoolean
    //   135	214	3	localObject1	Object
    //   146	113	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	93	266	java/lang/Exception
    //   95	148	266	java/lang/Exception
    //   153	187	266	java/lang/Exception
    //   187	208	266	java/lang/Exception
    //   210	236	266	java/lang/Exception
    //   238	263	266	java/lang/Exception
    //   280	287	266	java/lang/Exception
    //   291	327	266	java/lang/Exception
    //   331	348	266	java/lang/Exception
    //   348	387	266	java/lang/Exception
    //   395	407	266	java/lang/Exception
    //   407	414	266	java/lang/Exception
    //   416	424	266	java/lang/Exception
    //   291	327	391	java/lang/Throwable
    //   348	387	391	java/lang/Throwable
    //   280	287	394	java/lang/Throwable
    //   331	348	429	java/lang/Throwable
  }
  
  private static int b(ViewGroup paramViewGroup)
  {
    int i = 0;
    int j = i;
    try
    {
      if (paramViewGroup.getId() > 0)
      {
        j = i;
        if (Integer.MAX_VALUE - paramViewGroup.getId() <= 1000) {}
      }
      else
      {
        j = i;
        i = paramViewGroup.getId() + 1000;
      }
      int k;
      for (;;)
      {
        j = i;
        k = i;
        if (paramViewGroup.findViewById(i) == null) {
          break;
        }
        j = i;
        k = i;
        if ((paramViewGroup.findViewById(i) instanceof jv)) {
          break;
        }
        k = i;
        if (i <= 0) {
          break;
        }
        i -= 1;
        continue;
        j = i;
        i = paramViewGroup.getId();
        i -= 1000;
      }
      return k;
    }
    catch (Exception paramViewGroup)
    {
      k = j;
    }
  }
  
  @SuppressLint({"unchecked"})
  private static void b(int paramInt, Object paramObject, String paramString)
  {
    try
    {
      if ((!fq.a().c().containsKey(Integer.valueOf(paramInt))) || ((fq.a().c().containsKey(Integer.valueOf(paramInt))) && (!((String)acgetvalueOfsecond).equals(paramObject))))
      {
        fq.a().c().put(Integer.valueOf(paramInt), new Pair(fy.e().q().getClass().getSimpleName(), paramObject));
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.putOpt("fragment", Boolean.valueOf(true));
        if (!iz.a(kb.albatross)) {
          fy.e().n().b("viewAppeared", paramString, localJSONObject);
        }
        fy.e().v();
        fq.a().d().add((String)paramObject);
        cc.c().put(Integer.valueOf(paramInt), new Pair(paramString, Long.valueOf(System.currentTimeMillis())));
      }
      return;
    }
    catch (Exception paramObject)
    {
      ck.b("adding vp: ", (Exception)paramObject);
    }
  }
  
  private static void b(Object paramObject, String paramString)
  {
    int i = 1;
    for (;;)
    {
      Object localObject;
      if (i < ((ViewGroup)paramObject).getChildCount())
      {
        localObject = ((ViewGroup)paramObject).getChildAt(i);
        if ((localObject instanceof ViewGroup))
        {
          localObject = (ViewGroup)localObject;
          if (((ViewGroup)localObject).getTag(fq.a().b()) == null) {
            a((ViewGroup)localObject, paramString);
          }
        }
      }
      try
      {
        jk.c((ViewGroup)((ViewGroup)localObject).getParent());
        i += 1;
        continue;
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.jy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */