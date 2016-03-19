package com.taplytics;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bi;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class jk
{
  public static float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 -= paramFloat3;
    paramFloat2 -= paramFloat4;
    return b((float)Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2));
  }
  
  public static int a()
  {
    return 399293499;
  }
  
  public static int a(float paramFloat)
  {
    return Math.round(epgetResourcesgetDisplayMetricsdensityDpi / 160.0F * paramFloat);
  }
  
  public static int a(Context paramContext)
  {
    int i = 0;
    int j = paramContext.getResources().getIdentifier("status_bar_height", "dimen", "android");
    if (j > 0) {
      i = paramContext.getResources().getDimensionPixelSize(j);
    }
    return i;
  }
  
  private static int a(RecyclerView paramRecyclerView, View paramView)
  {
    View localView = paramView;
    int i = -1;
    while ((i == -1) && (localView != null)) {
      try
      {
        int j = paramRecyclerView.getChildPosition(localView);
        i = j;
      }
      catch (Exception localException)
      {
        try
        {
          localView = (View)localView.getParent();
          if (!(paramView instanceof RecyclerView))
          {
            boolean bool = localView instanceof RecyclerView;
            if (!bool) {}
          }
          else
          {
            return -1;
          }
        }
        catch (Exception paramRecyclerView)
        {
          return -1;
        }
      }
    }
    return i;
  }
  
  private static int a(AbsListView paramAbsListView, View paramView)
  {
    int i = paramAbsListView.getPositionForView(paramView);
    if (i == -1) {}
    try
    {
      i = a(paramAbsListView, c(paramView));
      return i;
    }
    catch (Exception paramAbsListView) {}
    return i;
    return -1;
  }
  
  public static AlertDialog.Builder a(String paramString, String[] paramArrayOfString, DialogInterface.OnClickListener paramOnClickListener)
  {
    return new AlertDialog.Builder(fy.e().q()).setTitle(paramString).setItems(paramArrayOfString, paramOnClickListener).setCancelable(true);
  }
  
  public static View a(int paramInt, RecyclerView paramRecyclerView)
  {
    for (;;)
    {
      try
      {
        RecyclerView.LayoutManager localLayoutManager = paramRecyclerView.getLayoutManager();
        if ((localLayoutManager instanceof LinearLayoutManager))
        {
          i = ((LinearLayoutManager)localLayoutManager).findFirstVisibleItemPosition();
          i = paramInt - i;
          if ((i < 0) || (paramInt >= paramRecyclerView.getChildCount())) {
            break;
          }
          paramRecyclerView = paramRecyclerView.getChildAt(i);
          return paramRecyclerView;
        }
      }
      catch (Exception paramRecyclerView)
      {
        return null;
      }
      int i = 0;
    }
    return null;
  }
  
  public static View a(int paramInt, ListView paramListView)
  {
    try
    {
      paramInt -= paramListView.getFirstVisiblePosition() - paramListView.getHeaderViewsCount();
      if (paramInt >= 0)
      {
        if (paramInt >= paramListView.getChildCount()) {
          return null;
        }
        paramListView = paramListView.getChildAt(paramInt);
        return paramListView;
      }
    }
    catch (Exception paramListView) {}
    return null;
  }
  
  public static ImageView a(Drawable paramDrawable)
  {
    ImageView localImageView = new ImageView(fy.e().p());
    try
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
      localLayoutParams.setMargins(0, a(fy.e().p()), 0, 0);
      localImageView.setLayoutParams(localLayoutParams);
      localImageView.setId(b());
      localImageView.setImageDrawable(paramDrawable);
      localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      return localImageView;
    }
    catch (Exception paramDrawable)
    {
      ck.b("Problem getting delay load view", paramDrawable);
    }
    return localImageView;
  }
  
  public static RelativeLayout a(b paramb, String paramString1, String paramString2)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(fy.e().p());
    LinearLayout localLinearLayout1 = new LinearLayout(fy.e().p());
    LinearLayout localLinearLayout2 = new LinearLayout(fy.e().p());
    LinearLayout localLinearLayout3 = new LinearLayout(fy.e().p());
    localLinearLayout1.setOrientation(1);
    StringBuilder localStringBuilder;
    if (paramb.equals(b.alligator))
    {
      localStringBuilder = new StringBuilder().append("Experiment: ");
      if (paramString1 != null)
      {
        paramb = paramString1;
        if (!paramString1.equals("")) {}
      }
      else
      {
        paramb = "loading...";
      }
      paramString1 = paramb;
      localStringBuilder = new StringBuilder().append("Variation: ");
      if (paramString2 != null)
      {
        paramb = paramString2;
        if (!paramString2.equals("")) {}
      }
      else
      {
        paramb = "loading...";
      }
    }
    for (paramb = paramb;; paramb = js.b(paramb))
    {
      localLinearLayout1.setOnLongClickListener(new ke());
      if (fy.e().h())
      {
        paramString2 = a("Taplytics SDK\nUpdate Available", 0, 0, a(2.0F), 0);
        paramString2.setGravity(17);
        paramString2.setTextSize(2, 8.0F);
        localLinearLayout3.addView(paramString2);
        localLinearLayout3.setGravity(8388613);
      }
      paramString1 = a(paramString1, js.d(), -8, 0, 0);
      paramb = a(paramb, js.c(), 0, 0, 0);
      localLinearLayout1.addView(paramString1);
      localLinearLayout1.addView(paramb);
      paramb = new RelativeLayout.LayoutParams(-2, -2);
      paramb.addRule(13);
      localLinearLayout1.setLayoutParams(paramb);
      paramb = new RelativeLayout.LayoutParams(-2, -2);
      paramb.addRule(11);
      paramb.addRule(15);
      localLinearLayout3.setLayoutParams(paramb);
      localRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, a(35.0F)));
      localRelativeLayout.addView(localLinearLayout2);
      localRelativeLayout.addView(localLinearLayout1);
      localRelativeLayout.addView(localLinearLayout3);
      return localRelativeLayout;
      paramString1 = js.a(paramb);
    }
  }
  
  public static TextView a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    TextView localTextView = new TextView(fy.e().q());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(paramInt4, 0, paramInt3, paramInt2);
    localTextView.setText(paramString);
    localTextView.setTextColor(-1);
    localTextView.setGravity(1);
    localTextView.setId(paramInt1);
    gravity = 49;
    localTextView.setLayoutParams(localLayoutParams);
    return localTextView;
  }
  
  @SuppressLint({"NewApi"})
  public static jo a(b paramb)
  {
    localjo = new jo(fy.e().p());
    try
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
      localLayoutParams.setMargins(0, a(fy.e().p()), 0, 0);
      if (Build.VERSION.SDK_INT >= 16) {
        localjo.setBackground(new js(jq.a(paramb), 2.0F));
      }
      for (;;)
      {
        localjo.setLayoutParams(localLayoutParams);
        localjo.setId(js.b());
        localjo.setTag(paramb.name());
        return localjo;
        localjo.setBackgroundDrawable(new js(jq.a(paramb), 2.0F));
      }
      return localjo;
    }
    catch (Exception paramb)
    {
      ck.b("border", paramb);
    }
  }
  
  private static Class<?> a(Class<?> paramClass)
  {
    Class localClass = null;
    if (gm.a().d().contains(paramClass.getSimpleName())) {
      return paramClass;
    }
    if (!paramClass.getSimpleName().equals("Object")) {
      localClass = a(paramClass.getSuperclass());
    }
    return localClass;
  }
  
  public static ArrayList<View> a(float paramFloat1, float paramFloat2, ViewGroup paramViewGroup)
  {
    ArrayList localArrayList = new ArrayList();
    paramViewGroup = b(paramViewGroup).listIterator();
    for (;;)
    {
      if (paramViewGroup.hasNext()) {}
      try
      {
        View localView1 = (View)paramViewGroup.next();
        if (!localArrayList.contains(localView1))
        {
          Object localObject1 = new int[2];
          localView1.getLocationOnScreen((int[])localObject1);
          int i = localObject1[0];
          int j = localObject1[1];
          if ((paramFloat1 > i) && (paramFloat1 < i + localView1.getWidth()) && (paramFloat2 > j) && (paramFloat2 < j + localView1.getHeight()) && (localView1.getId() != -1))
          {
            Object localObject2;
            if ((localView1 instanceof AbsListView))
            {
              localObject2 = new int[2];
              j = ((AbsListView)localView1).getChildCount();
              i = 0;
            }
            for (;;)
            {
              if (i < j)
              {
                localObject1 = ((AbsListView)localView1).getChildAt(i);
                View localView2 = new View(fy.e().q());
                ((View)localObject1).getLocationOnScreen((int[])localObject2);
                int k = localObject2[0];
                int m = localObject2[1];
                if ((paramFloat1 > k) && (paramFloat1 < k + localView1.getWidth()) && (paramFloat2 > m) && (paramFloat2 < localView1.getHeight() + m))
                {
                  if ((localObject1 instanceof ViewGroup))
                  {
                    localObject2 = b((ViewGroup)localObject1);
                    localView2.setTag(Integer.valueOf(i));
                    localView2.setId(a());
                    ((ViewGroup)localObject1).addView(localView2);
                    localObject1 = ((ArrayList)localObject2).iterator();
                    while (((Iterator)localObject1).hasNext()) {
                      paramViewGroup.add((View)((Iterator)localObject1).next());
                    }
                  }
                  paramViewGroup.add(localObject1);
                }
              }
              else
              {
                if (localArrayList.contains(localView1)) {
                  break;
                }
                localArrayList.add(localView1);
                break;
              }
              i += 1;
            }
            Collections.reverse(localArrayList);
            return localArrayList;
          }
        }
      }
      catch (Throwable localThrowable) {}
    }
  }
  
  public static JSONObject a(View paramView)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramView.getId());
      Object localObject1 = "";
      try
      {
        localObject2 = fy.e().p().getResources().getResourceEntryName(paramView.getId());
        localObject1 = localObject2;
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        Object localObject2;
        int i;
        for (;;) {}
      }
      localJSONObject.put("identifier", localObject1);
      localObject1 = a(paramView.getClass());
      localObject2 = paramView.getClass().getSimpleName();
      localJSONObject.put("baseClass", ((Class)localObject1).getSimpleName());
      if (!((Class)localObject1).getSimpleName().equals(localObject2)) {
        localJSONObject.put("class", localObject2);
      }
      localJSONObject.put("subClasses", b(paramView));
      if (fy.e().q() != null) {
        localJSONObject.put("activity", fy.e().r());
      }
      localJSONObject.put("methodInfo", kh.a(paramView.getClass(), paramView));
      localJSONObject.put("position", e(paramView));
      i = jy.a(paramView);
      if (i != -2)
      {
        localJSONObject.put("fragId", i);
        localObject2 = (String)acgetvalueOfsecond;
        localJSONObject.put("fragIdentifier", localObject2);
      }
      try
      {
        if (((String)localObject2).contains("_viewpager_"))
        {
          localObject1 = new JSONObject();
          localObject2 = ((String)localObject2).split("_");
          if (localObject2.length > 0)
          {
            ((JSONObject)localObject1).put("position", Integer.valueOf(localObject2[(localObject2.length - 1)]));
            localJSONObject.put("cellInfo", localObject1);
          }
        }
        localObject1 = f(paramView);
        if (localObject1 != null)
        {
          localJSONObject.put("isInListView", true);
          if (a((AbsListView)localObject1, paramView) != -1)
          {
            localObject2 = new JSONObject();
            ((JSONObject)localObject2).put("position", a((AbsListView)localObject1, paramView));
            localJSONObject.put("cellInfo", localObject2);
          }
        }
        try
        {
          localObject1 = g(paramView);
          if (localObject1 != null)
          {
            localJSONObject.put("isInRecycler", true);
            if (a((RecyclerView)localObject1, paramView) != -1)
            {
              localObject2 = new JSONObject();
              ((JSONObject)localObject2).put("position", a((RecyclerView)localObject1, paramView));
              localJSONObject.put("cellInfo", localObject2);
            }
          }
        }
        catch (Throwable localThrowable)
        {
          if (!(localThrowable instanceof Exception)) {
            break label477;
          }
          for (Exception localException2 = (Exception)localThrowable;; localException2 = null)
          {
            ck.b("recview err", localException2);
            break;
          }
        }
        localJSONObject.put("imgFileName", ax.a(paramView));
        if (Build.VERSION.SDK_INT >= 15) {
          localJSONObject.put("hasOnClick", paramView.hasOnClickListeners());
        }
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          if (ck.c()) {
            ck.a("error setting viewpager fragment id");
          }
        }
      }
      label477:
      return localJSONObject;
    }
    catch (Exception paramView) {}
    return localJSONObject;
  }
  
  public static void a(AlertDialog paramAlertDialog, int paramInt)
  {
    paramAlertDialog = paramAlertDialog.getWindow();
    WindowManager.LayoutParams localLayoutParams = paramAlertDialog.getAttributes();
    gravity = paramInt;
    flags &= 0xFFFFFFFD;
    paramAlertDialog.setAttributes(localLayoutParams);
  }
  
  public static void a(View paramView, Object paramObject, String paramString1, String paramString2)
    throws JSONException
  {
    JSONArray localJSONArray = fy.e().k().k();
    int j = paramView.getId();
    int i = 0;
    if (i < localJSONArray.length()) {
      if (((JSONObject)localJSONArray.get(i)).optJSONObject("initProperties").optInt("anID") != j) {}
    }
    for (;;)
    {
      if (i != -1)
      {
        paramView = localJSONArray.getJSONObject(i).optJSONObject("anProperties").optJSONObject(paramString1);
        paramView.put("value", paramObject);
        paramView.put("type", paramString2);
      }
      return;
      i += 1;
      break;
      i = -1;
    }
  }
  
  public static void a(View paramView, HashMap paramHashMap)
  {
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = localIterator.next();
      if ((localObject1 instanceof String))
      {
        String str = (String)localObject1;
        localObject1 = paramHashMap.get(localObject1);
        if ((localObject1 instanceof HashMap))
        {
          localObject1 = (HashMap)localObject1;
          Object localObject2 = ((HashMap)localObject1).get("parameterType");
          if ((localObject2 instanceof String))
          {
            localObject2 = (String)localObject2;
            kh.a(paramView, str, ((HashMap)localObject1).get(str), (String)localObject2, true, false);
          }
        }
      }
    }
    paramView.setTag(gq.h().t(), null);
  }
  
  private static void a(ViewGroup paramViewGroup, int paramInt1, String paramString, JSONObject paramJSONObject, int paramInt2, boolean paramBoolean)
  {
    localObject = paramViewGroup;
    if (paramString != null) {
      localObject = paramViewGroup;
    }
    do
    {
      for (;;)
      {
        try
        {
          if (!paramString.equals(""))
          {
            localObject = paramViewGroup;
            if (paramString.contains("_viewpager_"))
            {
              if (!(paramViewGroup instanceof ViewPager)) {
                continue;
              }
              localObject = (ViewPager)paramViewGroup;
              localObject = ((ViewPager)localObject).getAdapter();
              paramString = paramString.split("_");
              paramString = jy.a((bi)localObject, Integer.valueOf(paramString[(paramString.length - 1)]).intValue());
              if ((paramString == null) || (paramString.getView() == null) || (!(paramString.getView() instanceof ViewGroup))) {
                continue;
              }
              localObject = (ViewGroup)paramString.getView();
            }
          }
        }
        catch (Exception paramString)
        {
          ViewPager localViewPager;
          localObject = paramViewGroup;
          continue;
        }
        if (localObject != null)
        {
          paramViewGroup = ((ViewGroup)localObject).findViewById(paramInt1);
          if (paramViewGroup != null)
          {
            if (ck.c()) {
              ck.a("Found View: " + paramViewGroup.getClass().getSimpleName());
            }
            a(paramJSONObject, paramViewGroup, paramBoolean, false);
          }
        }
        return;
        if ((gq.h().i() == null) || (!(gq.h().i().findViewById(paramInt2) instanceof ViewPager))) {
          continue;
        }
        localObject = (ViewPager)gq.h().i().findViewById(paramInt2);
      }
      localViewPager = e(paramViewGroup);
      localObject = localViewPager;
    } while (localViewPager != null);
  }
  
  /* Error */
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean, java.util.concurrent.atomic.AtomicBoolean paramAtomicBoolean)
  {
    // Byte code:
    //   0: invokestatic 25	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   3: invokevirtual 710	com/taplytics/fy:j	()Z
    //   6: ifne +4 -> 10
    //   9: return
    //   10: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   13: invokevirtual 712	com/taplytics/gq:b	()Ljava/lang/Class;
    //   16: ifnull +7 -> 23
    //   19: aload_0
    //   20: invokestatic 714	com/taplytics/jk:d	(Landroid/view/View;)V
    //   23: aload_0
    //   24: invokevirtual 715	android/view/ViewGroup:getChildCount	()I
    //   27: istore 5
    //   29: iconst_0
    //   30: istore 4
    //   32: iload 4
    //   34: iload 5
    //   36: if_icmpge +920 -> 956
    //   39: iload_1
    //   40: istore 7
    //   42: aload_0
    //   43: iload 4
    //   45: invokevirtual 716	android/view/ViewGroup:getChildAt	(I)Landroid/view/View;
    //   48: astore 8
    //   50: iload_1
    //   51: istore 6
    //   53: iload_1
    //   54: istore 7
    //   56: aload 8
    //   58: instanceof 415
    //   61: ifeq +96 -> 157
    //   64: iload_1
    //   65: istore 6
    //   67: iload_1
    //   68: istore 7
    //   70: aload 8
    //   72: invokevirtual 410	android/view/View:getId	()I
    //   75: invokestatic 717	com/taplytics/js:a	()I
    //   78: if_icmpeq +79 -> 157
    //   81: iload_1
    //   82: istore 6
    //   84: iload_1
    //   85: istore 7
    //   87: aload 8
    //   89: invokevirtual 410	android/view/View:getId	()I
    //   92: invokestatic 331	com/taplytics/js:b	()I
    //   95: if_icmpeq +62 -> 157
    //   98: iload_1
    //   99: istore 6
    //   101: iload_1
    //   102: istore 7
    //   104: aload 8
    //   106: checkcast 415	android/view/ViewGroup
    //   109: iload_1
    //   110: aload_2
    //   111: invokestatic 720	com/taplytics/jy:a	(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z
    //   114: ifeq +6 -> 120
    //   117: iconst_1
    //   118: istore 6
    //   120: iload 6
    //   122: istore 7
    //   124: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   127: invokevirtual 712	com/taplytics/gq:b	()Ljava/lang/Class;
    //   130: ifnull +12 -> 142
    //   133: iload 6
    //   135: istore 7
    //   137: aload 8
    //   139: invokestatic 714	com/taplytics/jk:d	(Landroid/view/View;)V
    //   142: iload 6
    //   144: istore 7
    //   146: aload 8
    //   148: checkcast 415	android/view/ViewGroup
    //   151: iload 6
    //   153: aload_2
    //   154: invokestatic 722	com/taplytics/jk:a	(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    //   157: iload 6
    //   159: istore 7
    //   161: aload 8
    //   163: instanceof 84
    //   166: ifeq +421 -> 587
    //   169: iload 6
    //   171: istore 7
    //   173: getstatic 728	com/taplytics/kb:bat	Lcom/taplytics/kb;
    //   176: invokestatic 733	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   179: ifne +408 -> 587
    //   182: iload 6
    //   184: istore 7
    //   186: aload 8
    //   188: checkcast 84	android/widget/AbsListView
    //   191: astore 9
    //   193: aconst_null
    //   194: astore 8
    //   196: aload 8
    //   198: ifnull +31 -> 229
    //   201: aload 8
    //   203: invokevirtual 359	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   206: ldc_w 735
    //   209: invokevirtual 226	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   212: ifne +42 -> 254
    //   215: aload 8
    //   217: invokevirtual 359	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   220: ldc_w 737
    //   223: invokevirtual 226	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   226: ifne +28 -> 254
    //   229: aload 8
    //   231: ifnonnull +13 -> 244
    //   234: aload 9
    //   236: invokevirtual 472	java/lang/Object:getClass	()Ljava/lang/Class;
    //   239: astore 8
    //   241: goto -45 -> 196
    //   244: aload 8
    //   246: invokevirtual 370	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   249: astore 8
    //   251: goto -55 -> 196
    //   254: aload 8
    //   256: ldc_w 739
    //   259: invokevirtual 743	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   262: astore 10
    //   264: aload 10
    //   266: iconst_1
    //   267: invokevirtual 749	java/lang/reflect/Field:setAccessible	(Z)V
    //   270: aload 10
    //   272: aload 9
    //   274: invokevirtual 750	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   277: checkcast 752	android/widget/AbsListView$OnScrollListener
    //   280: astore 11
    //   282: aload 11
    //   284: instanceof 754
    //   287: ifne +19 -> 306
    //   290: aload 10
    //   292: aload 9
    //   294: new 754	com/taplytics/ex
    //   297: dup
    //   298: aload 11
    //   300: invokespecial 757	com/taplytics/ex:<init>	(Landroid/widget/AbsListView$OnScrollListener;)V
    //   303: invokevirtual 761	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   306: aload 8
    //   308: ldc_w 763
    //   311: invokevirtual 743	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   314: astore 8
    //   316: aload 8
    //   318: iconst_1
    //   319: invokevirtual 749	java/lang/reflect/Field:setAccessible	(Z)V
    //   322: aload 8
    //   324: aload 9
    //   326: invokevirtual 750	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   329: astore 8
    //   331: aload 8
    //   333: invokevirtual 472	java/lang/Object:getClass	()Ljava/lang/Class;
    //   336: ldc_w 765
    //   339: invokevirtual 743	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   342: astore 10
    //   344: aload 10
    //   346: iconst_1
    //   347: invokevirtual 749	java/lang/reflect/Field:setAccessible	(Z)V
    //   350: aload 10
    //   352: aload 8
    //   354: invokevirtual 750	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   357: checkcast 767	android/widget/AbsListView$RecyclerListener
    //   360: astore 11
    //   362: aload 11
    //   364: instanceof 769
    //   367: ifne +19 -> 386
    //   370: aload 10
    //   372: aload 8
    //   374: new 769	com/taplytics/et
    //   377: dup
    //   378: aload 11
    //   380: invokespecial 772	com/taplytics/et:<init>	(Landroid/widget/AbsListView$RecyclerListener;)V
    //   383: invokevirtual 761	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   386: aload 9
    //   388: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   391: invokevirtual 666	com/taplytics/gq:t	()I
    //   394: invokevirtual 775	android/widget/AbsListView:getTag	(I)Ljava/lang/Object;
    //   397: astore 8
    //   399: aload 8
    //   401: ifnonnull +69 -> 470
    //   404: new 513	java/util/HashMap
    //   407: dup
    //   408: invokespecial 776	java/util/HashMap:<init>	()V
    //   411: astore 8
    //   413: aload 8
    //   415: ldc_w 778
    //   418: iconst_1
    //   419: invokestatic 783	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   422: invokevirtual 786	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   425: pop
    //   426: aload 9
    //   428: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   431: invokevirtual 666	com/taplytics/gq:t	()I
    //   434: aload 8
    //   436: invokevirtual 787	android/widget/AbsListView:setTag	(ILjava/lang/Object;)V
    //   439: iconst_0
    //   440: istore_1
    //   441: iload_1
    //   442: ifne +515 -> 957
    //   445: aload 9
    //   447: invokevirtual 790	android/widget/AbsListView:getAdapter	()Landroid/widget/Adapter;
    //   450: checkcast 792	android/widget/ListAdapter
    //   453: new 794	com/taplytics/eu
    //   456: dup
    //   457: aload 9
    //   459: invokespecial 797	com/taplytics/eu:<init>	(Landroid/widget/AbsListView;)V
    //   462: invokeinterface 801 2 0
    //   467: goto +490 -> 957
    //   470: aload 8
    //   472: instanceof 513
    //   475: ifeq +476 -> 951
    //   478: aload 8
    //   480: checkcast 513	java/util/HashMap
    //   483: astore 8
    //   485: aload 8
    //   487: ldc_w 778
    //   490: invokevirtual 804	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   493: ifne +34 -> 527
    //   496: aload 8
    //   498: ldc_w 778
    //   501: iconst_1
    //   502: invokestatic 783	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   505: invokevirtual 786	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   508: pop
    //   509: aload 9
    //   511: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   514: invokevirtual 666	com/taplytics/gq:t	()I
    //   517: aload 8
    //   519: invokevirtual 787	android/widget/AbsListView:setTag	(ILjava/lang/Object;)V
    //   522: iconst_0
    //   523: istore_1
    //   524: goto -83 -> 441
    //   527: aload 8
    //   529: ldc_w 778
    //   532: invokevirtual 517	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   535: checkcast 780	java/lang/Boolean
    //   538: invokevirtual 807	java/lang/Boolean:booleanValue	()Z
    //   541: istore_1
    //   542: goto -101 -> 441
    //   545: astore 8
    //   547: iload 6
    //   549: istore 7
    //   551: ldc_w 809
    //   554: aload 8
    //   556: invokestatic 190	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   559: goto +398 -> 957
    //   562: astore 8
    //   564: iload 7
    //   566: istore_1
    //   567: ldc_w 811
    //   570: aload 8
    //   572: invokestatic 190	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   575: goto +385 -> 960
    //   578: astore_0
    //   579: ldc_w 811
    //   582: aload_0
    //   583: invokestatic 190	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   586: return
    //   587: iload 6
    //   589: istore 7
    //   591: aload 8
    //   593: instanceof 71
    //   596: ifeq +361 -> 957
    //   599: iload 6
    //   601: istore 7
    //   603: getstatic 814	com/taplytics/kb:bear	Lcom/taplytics/kb;
    //   606: invokestatic 733	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   609: ifne +348 -> 957
    //   612: iload 6
    //   614: istore 7
    //   616: aload 8
    //   618: checkcast 71	android/support/v7/widget/RecyclerView
    //   621: astore 9
    //   623: aconst_null
    //   624: astore 8
    //   626: aload 8
    //   628: ifnull +31 -> 659
    //   631: aload 8
    //   633: invokevirtual 359	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   636: ldc_w 735
    //   639: invokevirtual 226	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   642: ifne +42 -> 684
    //   645: aload 8
    //   647: invokevirtual 359	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   650: ldc_w 816
    //   653: invokevirtual 226	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   656: ifne +28 -> 684
    //   659: aload 8
    //   661: ifnonnull +13 -> 674
    //   664: aload 9
    //   666: invokevirtual 472	java/lang/Object:getClass	()Ljava/lang/Class;
    //   669: astore 8
    //   671: goto -45 -> 626
    //   674: aload 8
    //   676: invokevirtual 370	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   679: astore 8
    //   681: goto -55 -> 626
    //   684: aload 8
    //   686: ldc_w 818
    //   689: invokevirtual 743	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   692: astore 10
    //   694: aload 10
    //   696: iconst_1
    //   697: invokevirtual 749	java/lang/reflect/Field:setAccessible	(Z)V
    //   700: aload 10
    //   702: aload 9
    //   704: invokevirtual 750	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   707: checkcast 820	android/support/v7/widget/RecyclerView$OnScrollListener
    //   710: astore 11
    //   712: aload 11
    //   714: instanceof 822
    //   717: ifne +19 -> 736
    //   720: aload 10
    //   722: aload 9
    //   724: new 822	com/taplytics/ew
    //   727: dup
    //   728: aload 11
    //   730: invokespecial 825	com/taplytics/ew:<init>	(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    //   733: invokevirtual 761	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   736: aload 8
    //   738: ldc_w 765
    //   741: invokevirtual 743	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   744: astore 8
    //   746: aload 8
    //   748: iconst_1
    //   749: invokevirtual 749	java/lang/reflect/Field:setAccessible	(Z)V
    //   752: aload 8
    //   754: aload 9
    //   756: invokevirtual 750	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   759: checkcast 827	android/support/v7/widget/RecyclerView$RecyclerListener
    //   762: astore 10
    //   764: aload 10
    //   766: instanceof 829
    //   769: ifne +19 -> 788
    //   772: aload 8
    //   774: aload 9
    //   776: new 829	com/taplytics/ez
    //   779: dup
    //   780: aload 10
    //   782: invokespecial 832	com/taplytics/ez:<init>	(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    //   785: invokevirtual 761	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   788: aload 9
    //   790: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   793: invokevirtual 666	com/taplytics/gq:t	()I
    //   796: invokevirtual 833	android/support/v7/widget/RecyclerView:getTag	(I)Ljava/lang/Object;
    //   799: astore 8
    //   801: aload 8
    //   803: ifnonnull +86 -> 889
    //   806: new 513	java/util/HashMap
    //   809: dup
    //   810: invokespecial 776	java/util/HashMap:<init>	()V
    //   813: astore 8
    //   815: aload 8
    //   817: ldc_w 835
    //   820: iconst_1
    //   821: invokestatic 783	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   824: invokevirtual 786	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   827: pop
    //   828: aload 9
    //   830: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   833: invokevirtual 666	com/taplytics/gq:t	()I
    //   836: aload 8
    //   838: invokevirtual 836	android/support/v7/widget/RecyclerView:setTag	(ILjava/lang/Object;)V
    //   841: iconst_0
    //   842: istore_3
    //   843: iload_3
    //   844: ifne +113 -> 957
    //   847: aload 9
    //   849: invokevirtual 839	android/support/v7/widget/RecyclerView:getAdapter	()Landroid/support/v7/widget/RecyclerView$Adapter;
    //   852: new 841	com/taplytics/fa
    //   855: dup
    //   856: aload 9
    //   858: invokespecial 844	com/taplytics/fa:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   861: invokevirtual 850	android/support/v7/widget/RecyclerView$Adapter:registerAdapterDataObserver	(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    //   864: goto +93 -> 957
    //   867: astore 8
    //   869: iload 6
    //   871: istore 7
    //   873: ldc_w 852
    //   876: aload 8
    //   878: invokestatic 190	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   881: goto +76 -> 957
    //   884: astore 8
    //   886: goto +71 -> 957
    //   889: aload 8
    //   891: instanceof 513
    //   894: ifeq +52 -> 946
    //   897: aload 8
    //   899: checkcast 513	java/util/HashMap
    //   902: astore 8
    //   904: aload 8
    //   906: ldc_w 835
    //   909: invokevirtual 804	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   912: ifne +34 -> 946
    //   915: aload 8
    //   917: ldc_w 835
    //   920: iconst_1
    //   921: invokestatic 783	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   924: invokevirtual 786	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   927: pop
    //   928: aload 9
    //   930: invokestatic 663	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   933: invokevirtual 666	com/taplytics/gq:t	()I
    //   936: aload 8
    //   938: invokevirtual 836	android/support/v7/widget/RecyclerView:setTag	(ILjava/lang/Object;)V
    //   941: iconst_0
    //   942: istore_3
    //   943: goto -100 -> 843
    //   946: iconst_1
    //   947: istore_3
    //   948: goto -105 -> 843
    //   951: iconst_1
    //   952: istore_1
    //   953: goto -512 -> 441
    //   956: return
    //   957: iload 6
    //   959: istore_1
    //   960: iload 4
    //   962: iconst_1
    //   963: iadd
    //   964: istore 4
    //   966: goto -934 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	969	0	paramViewGroup	ViewGroup
    //   0	969	1	paramBoolean	boolean
    //   0	969	2	paramAtomicBoolean	java.util.concurrent.atomic.AtomicBoolean
    //   842	106	3	i	int
    //   30	935	4	j	int
    //   27	10	5	k	int
    //   51	907	6	bool1	boolean
    //   40	832	7	bool2	boolean
    //   48	480	8	localObject1	Object
    //   545	10	8	localException1	Exception
    //   562	55	8	localException2	Exception
    //   624	213	8	localObject2	Object
    //   867	10	8	localException3	Exception
    //   884	14	8	localThrowable	Throwable
    //   902	35	8	localHashMap	HashMap
    //   191	738	9	localObject3	Object
    //   262	519	10	localObject4	Object
    //   280	449	11	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   201	229	545	java/lang/Exception
    //   234	241	545	java/lang/Exception
    //   244	251	545	java/lang/Exception
    //   254	306	545	java/lang/Exception
    //   306	386	545	java/lang/Exception
    //   386	399	545	java/lang/Exception
    //   404	439	545	java/lang/Exception
    //   445	467	545	java/lang/Exception
    //   470	522	545	java/lang/Exception
    //   527	542	545	java/lang/Exception
    //   42	50	562	java/lang/Exception
    //   56	64	562	java/lang/Exception
    //   70	81	562	java/lang/Exception
    //   87	98	562	java/lang/Exception
    //   104	117	562	java/lang/Exception
    //   124	133	562	java/lang/Exception
    //   137	142	562	java/lang/Exception
    //   146	157	562	java/lang/Exception
    //   161	169	562	java/lang/Exception
    //   173	182	562	java/lang/Exception
    //   186	193	562	java/lang/Exception
    //   551	559	562	java/lang/Exception
    //   591	599	562	java/lang/Exception
    //   603	612	562	java/lang/Exception
    //   616	623	562	java/lang/Exception
    //   873	881	562	java/lang/Exception
    //   0	9	578	java/lang/Exception
    //   10	23	578	java/lang/Exception
    //   23	29	578	java/lang/Exception
    //   567	575	578	java/lang/Exception
    //   631	659	867	java/lang/Exception
    //   664	671	867	java/lang/Exception
    //   674	681	867	java/lang/Exception
    //   684	736	867	java/lang/Exception
    //   736	788	867	java/lang/Exception
    //   788	801	867	java/lang/Exception
    //   806	841	867	java/lang/Exception
    //   847	864	867	java/lang/Exception
    //   889	941	867	java/lang/Exception
    //   591	599	884	java/lang/Throwable
    //   603	612	884	java/lang/Throwable
    //   616	623	884	java/lang/Throwable
    //   631	659	884	java/lang/Throwable
    //   664	671	884	java/lang/Throwable
    //   674	681	884	java/lang/Throwable
    //   684	736	884	java/lang/Throwable
    //   736	788	884	java/lang/Throwable
    //   788	801	884	java/lang/Throwable
    //   806	841	884	java/lang/Throwable
    //   847	864	884	java/lang/Throwable
    //   873	881	884	java/lang/Throwable
    //   889	941	884	java/lang/Throwable
  }
  
  private static void a(JSONObject paramJSONObject, View paramView, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      JSONObject localJSONObject1 = paramJSONObject.optJSONObject("anProperties");
      if (localJSONObject1 != null)
      {
        Iterator localIterator = localJSONObject1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          try
          {
            if (!(localJSONObject1.get(str) instanceof JSONObject)) {
              continue;
            }
            JSONObject localJSONObject2 = localJSONObject1.optJSONObject(str);
            kh.a(paramView, str, localJSONObject2.opt("value"), localJSONObject2.optString("type"), paramBoolean1, paramBoolean2);
            if (!paramBoolean1) {
              continue;
            }
            gq.h().c().remove(Integer.valueOf(paramJSONObject.optJSONObject("initProperties").optInt("anID")));
          }
          catch (JSONException localJSONException) {}
          continue;
          paramJSONObject = (Exception)paramJSONObject;
        }
      }
    }
    catch (Throwable paramJSONObject)
    {
      if (!(paramJSONObject instanceof Exception)) {}
    }
    for (;;)
    {
      ck.a("Problem applying methods", paramJSONObject);
      return;
      paramJSONObject = new Exception();
    }
  }
  
  public static boolean a(AlertDialog paramAlertDialog)
  {
    return (paramAlertDialog != null) && (paramAlertDialog.isShowing());
  }
  
  public static boolean a(ViewGroup paramViewGroup)
  {
    return (paramViewGroup != null) && (paramViewGroup.findViewById(js.b()) != null);
  }
  
  public static int b()
  {
    return 399293499;
  }
  
  public static int b(float paramFloat)
  {
    return Math.round(paramFloat / (epgetResourcesgetDisplayMetricsdensityDpi / 160.0F));
  }
  
  @TargetApi(15)
  public static View b(float paramFloat1, float paramFloat2, ViewGroup paramViewGroup)
  {
    paramViewGroup = b(paramViewGroup).iterator();
    while (paramViewGroup.hasNext())
    {
      View localView = (View)paramViewGroup.next();
      if (((localView instanceof Button)) || ((Build.VERSION.SDK_INT >= 15) && (localView.hasOnClickListeners())))
      {
        int[] arrayOfInt = new int[2];
        localView.getLocationOnScreen(arrayOfInt);
        int i = arrayOfInt[0];
        long l = arrayOfInt[1] - gq.h().u();
        if ((paramFloat1 > i) && (paramFloat1 < localView.getWidth() + i) && (paramFloat2 > (float)l) && (paramFloat2 < (float)(localView.getHeight() + l)) && (localView.getId() != -1)) {
          return localView;
        }
      }
    }
    return null;
  }
  
  public static ArrayList<View> b(ViewGroup paramViewGroup)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int i;
      try
      {
        if (!paramViewGroup.getClass().getName().contains("DecorView")) {
          localArrayList.add(paramViewGroup);
        }
        int j = paramViewGroup.getChildCount();
        i = 0;
        if (i < j)
        {
          View localView = paramViewGroup.getChildAt(i);
          if (((localView instanceof ViewGroup)) && (localView.getId() != js.a()) && (localView.getId() != js.b())) {
            localArrayList.addAll(b((ViewGroup)localView));
          } else if ((localView != null) && (!(localView instanceof ViewStub)) && (localView.getId() != js.a()) && (localView.getId() != js.b())) {
            localArrayList.add(localView);
          }
        }
      }
      catch (Exception paramViewGroup)
      {
        ck.b("Finding all views: ", paramViewGroup);
      }
      return localArrayList;
      i += 1;
    }
  }
  
  public static JSONArray b(View paramView)
  {
    JSONArray localJSONArray = new JSONArray();
    try
    {
      for (paramView = paramView.getClass(); (paramView != null) && (!paramView.getSimpleName().equals("View")); paramView = paramView.getSuperclass()) {
        localJSONArray.put(paramView.getSimpleName());
      }
      if (paramView != null) {
        localJSONArray.put(paramView.getSimpleName());
      }
      return localJSONArray;
    }
    catch (Exception paramView)
    {
      ck.b("Class hierarchy: ", paramView);
    }
    return localJSONArray;
  }
  
  private static void b(ViewGroup paramViewGroup, int paramInt, JSONObject paramJSONObject, boolean paramBoolean)
  {
    if ((paramViewGroup instanceof AbsListView)) {
      if (!iz.a(kb.bat)) {
        break label37;
      }
    }
    for (;;)
    {
      return;
      try
      {
        if ((paramViewGroup instanceof RecyclerView))
        {
          boolean bool = iz.a(kb.bear);
          if (bool) {
            continue;
          }
        }
        label37:
        localArrayList = new ArrayList();
        if (paramViewGroup.findViewById(paramInt) == null) {}
      }
      catch (Exception localException)
      {
        for (;;)
        {
          try
          {
            ArrayList localArrayList;
            View localView = paramViewGroup.findViewById(paramInt);
            if (localView != null)
            {
              Object localObject = localView.getTag(gq.h().t());
              if ((localObject != null) && ((localObject instanceof HashMap)))
              {
                localObject = (HashMap)localObject;
                ((HashMap)localObject).put("shouldReset", Boolean.valueOf(false));
                localView.setTag(gq.h().t(), localObject);
                a(paramJSONObject, localView, paramBoolean, true);
                localArrayList.add(new Pair(localView, Integer.valueOf(localView.getId())));
                localView.setId(0);
              }
              else
              {
                localObject = new HashMap();
                continue;
                paramViewGroup = localArrayList.iterator();
                if (!paramViewGroup.hasNext()) {
                  break;
                }
                paramJSONObject = (Pair)paramViewGroup.next();
                try
                {
                  ((View)first).setId(((Integer)second).intValue());
                }
                catch (Throwable paramJSONObject) {}
                continue;
                localException = localException;
              }
            }
          }
          catch (Throwable localThrowable) {}
        }
      }
    }
  }
  
  public static ViewGroup c(View paramView)
  {
    return (ViewGroup)paramView.getParent();
  }
  
  public static jw c()
  {
    jw localjw = new jw(fy.e().p());
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    localLayoutParams.setMargins(0, a(fy.e().p()), 0, 0);
    localjw.setLayoutParams(localLayoutParams);
    localjw.setId(js.a());
    return localjw;
  }
  
  private static void c(int paramInt1, ViewGroup paramViewGroup, int paramInt2, JSONObject paramJSONObject, boolean paramBoolean)
  {
    try
    {
      if (iz.a(kb.bat)) {
        return;
      }
      paramViewGroup = paramViewGroup.findViewById(paramInt2);
      if (paramViewGroup != null)
      {
        paramViewGroup = (ListView)f(paramViewGroup);
        if (paramViewGroup != null)
        {
          paramViewGroup = a(paramInt1, paramViewGroup);
          if (paramViewGroup != null)
          {
            paramViewGroup = paramViewGroup.findViewById(paramInt2);
            if (paramViewGroup != null)
            {
              a(paramJSONObject, paramViewGroup, paramBoolean, true);
              return;
            }
          }
        }
      }
    }
    catch (Throwable paramViewGroup) {}
  }
  
  public static void c(ViewGroup paramViewGroup)
    throws JSONException
  {
    JSONArray localJSONArray;
    HashMap localHashMap2;
    Object localObject1;
    Object localObject2;
    try
    {
      if ((!iz.a(kb.beaver)) && (fy.e().k() != null) && (fy.e().j()))
      {
        if (ck.c()) {
          ck.a("Setting properties to view: " + paramViewGroup.getClass().getSimpleName());
        }
        localJSONArray = fy.e().k().k();
        localHashMap2 = fy.e().k().a();
        localObject1 = gq.h().c().keySet().iterator();
      }
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = ((Iterator)localObject1).next();
        localJSONArray.put(gq.h().c().get(localObject2));
        continue;
        return;
      }
    }
    catch (Exception paramViewGroup)
    {
      ck.b("Critical: SetProps didn't work", paramViewGroup);
    }
    while (localJSONArray == null) {}
    int i = localJSONArray.length() - 1;
    label161:
    if (i >= 0) {
      localObject2 = (JSONObject)localJSONArray.opt(i);
    }
    for (;;)
    {
      boolean bool1;
      boolean bool2;
      try
      {
        Object localObject3 = ((JSONObject)localObject2).optJSONObject("initProperties");
        String str = ((JSONObject)localObject2).optString("_view");
        int j = ((JSONObject)localObject3).optInt("fragId");
        localObject1 = ((JSONObject)localObject3).optString("fragIdentifier");
        if ((localHashMap2.containsKey(str)) && (((String)localHashMap2.get(str)).equals(fy.e().r())) && ((j == 0) || ((localObject1 != null) && (fq.a().c().containsKey(Integer.valueOf(j))) && (((String)acgetvalueOfsecond).equals(localObject1))) || ((fq.a().c().containsKey(Integer.valueOf(j))) && (!fq.a().d().isEmpty()))))
        {
          int k = ((JSONObject)localObject3).optInt("anID");
          bool1 = ((JSONObject)localObject3).has("isInListView");
          bool2 = ((JSONObject)localObject3).has("isInRecycler");
          boolean bool3 = ((JSONObject)localObject2).optBoolean("cellElement");
          localObject3 = ((JSONObject)localObject3).optJSONObject("cellInfo");
          boolean bool4 = ((JSONObject)localObject2).optBoolean("reset", false);
          if (((!bool1) && (!bool2)) || (!bool3)) {
            break label744;
          }
          try
          {
            if (f(paramViewGroup))
            {
              localObject1 = new Handler(Looper.getMainLooper());
              localObject3 = new jn(paramViewGroup, k, (JSONObject)localObject2, bool4);
              if (j != 0) {
                break label736;
              }
              l = 10L;
              ((Handler)localObject1).postDelayed((Runnable)localObject3, l);
            }
            b(paramViewGroup, k, (JSONObject)localObject2, bool4);
          }
          catch (Exception localException1)
          {
            ck.b("Some issues with lists or something", localException1);
          }
          HashMap localHashMap1;
          if ((localObject3 != null) && (((JSONObject)localObject3).length() > 0))
          {
            int m = ((JSONObject)localObject3).optInt("position");
            localObject3 = paramViewGroup.findViewById(k);
            if (localObject3 != null)
            {
              localObject1 = ((View)localObject3).getTag(gq.h().t());
              if ((localObject1 != null) && ((localObject1 instanceof HashMap)))
              {
                localObject1 = (HashMap)localObject1;
                ((HashMap)localObject1).put("shouldReset", Boolean.valueOf(true));
                ((View)localObject3).setTag(gq.h().t(), localObject1);
              }
            }
            else
            {
              if ((m != -1) && (f(paramViewGroup)))
              {
                localObject1 = new Handler(Looper.getMainLooper());
                localObject3 = new kd(bool2, m, paramViewGroup, k, (JSONObject)localObject2, bool4);
                if (j != 0) {
                  break label757;
                }
                l = 10L;
                ((Handler)localObject1).postDelayed((Runnable)localObject3, l);
              }
              if (!bool2) {
                continue;
              }
              d(m, paramViewGroup, k, (JSONObject)localObject2, bool4);
              break label729;
            }
            localHashMap1 = new HashMap();
            continue;
            c(m, paramViewGroup, k, (JSONObject)localObject2, bool4);
          }
          else if ((localHashMap1 != null) && (!localHashMap1.equals("")))
          {
            a(paramViewGroup, k, localHashMap1, (JSONObject)localObject2, j, bool4);
          }
          else
          {
            c(paramViewGroup, k, (JSONObject)localObject2, bool4);
          }
        }
      }
      catch (Exception localException2) {}
      label729:
      i -= 1;
      break label161;
      break;
      label736:
      long l = 285L;
      continue;
      label744:
      if (!bool1) {
        if (bool2)
        {
          continue;
          label757:
          l = 285L;
        }
      }
    }
  }
  
  private static void c(ViewGroup paramViewGroup, int paramInt, JSONObject paramJSONObject, boolean paramBoolean)
  {
    if (paramViewGroup != null)
    {
      paramViewGroup = paramViewGroup.findViewById(paramInt);
      if (paramViewGroup != null)
      {
        if (ck.c()) {
          ck.a("Found View: " + paramViewGroup.getClass().getSimpleName());
        }
        a(paramJSONObject, paramViewGroup, paramBoolean, false);
      }
    }
  }
  
  private static void d(int paramInt1, ViewGroup paramViewGroup, int paramInt2, JSONObject paramJSONObject, boolean paramBoolean)
  {
    try
    {
      if (ck.c()) {
        ck.a("Applying to recycler cell");
      }
      if (iz.a(kb.bear)) {
        return;
      }
      paramViewGroup = paramViewGroup.findViewById(paramInt2);
      if (paramViewGroup != null)
      {
        paramViewGroup = g(paramViewGroup);
        if (paramViewGroup != null)
        {
          paramViewGroup = a(paramInt1, paramViewGroup);
          if (paramViewGroup != null)
          {
            paramViewGroup = paramViewGroup.findViewById(paramInt2);
            if (paramViewGroup != null)
            {
              a(paramJSONObject, paramViewGroup, paramBoolean, true);
              if (ck.c())
              {
                ck.a("made it! applying methods to recycler cell");
                return;
              }
            }
          }
        }
      }
    }
    catch (Throwable paramViewGroup) {}
  }
  
  private static void d(View paramView)
  {
    if (gq.h().b().isInstance(paramView)) {
      gq.h().c(true);
    }
  }
  
  public static void d(ViewGroup paramViewGroup)
  {
    int i = 0;
    while (i < paramViewGroup.getChildCount())
    {
      View localView = paramViewGroup.getChildAt(i);
      Object localObject1 = localView.getTag(gq.h().t());
      if ((localObject1 != null) && ((localObject1 instanceof HashMap)))
      {
        Object localObject2 = ((HashMap)localObject1).get("shouldReset");
        if ((localObject2 == null) || (((localObject2 instanceof Boolean)) && (((Boolean)localObject2).booleanValue()))) {
          a(localView, (HashMap)localObject1);
        }
      }
      if ((localView instanceof ViewGroup)) {
        d((ViewGroup)localView);
      }
      i += 1;
    }
  }
  
  private static ViewPager e(ViewGroup paramViewGroup)
  {
    Object localObject = null;
    ViewPager localViewPager = null;
    int i;
    if (paramViewGroup.getChildCount() > 0)
    {
      i = 0;
      localObject = localViewPager;
      if (i < paramViewGroup.getChildCount())
      {
        localObject = paramViewGroup.getChildAt(i);
        if ((localObject instanceof ViewPager)) {
          localViewPager = (ViewPager)localObject;
        }
      }
    }
    for (;;)
    {
      i += 1;
      break;
      if ((localObject instanceof ViewGroup))
      {
        localViewPager = e(paramViewGroup);
        continue;
        return (ViewPager)localObject;
      }
    }
  }
  
  private static JSONObject e(View paramView)
    throws JSONException
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    Object localObject = new int[2];
    paramView.getLocationOnScreen((int[])localObject);
    localJSONObject1.put("startX", localObject[0]);
    localJSONObject1.put("startY", localObject[1]);
    localJSONObject1.put("endX", localObject[0] + paramView.getWidth());
    localJSONObject1.put("endY", localObject[1] + paramView.getHeight());
    if (fy.e().q() != null)
    {
      paramView = fy.e().q().getWindowManager().getDefaultDisplay();
      localObject = new DisplayMetrics();
      paramView.getMetrics((DisplayMetrics)localObject);
    }
    for (;;)
    {
      int i;
      try
      {
        i = widthPixels;
      }
      catch (Exception localException1)
      {
        i = 0;
      }
      for (;;)
      {
        try
        {
          m = heightPixels;
          j = i;
          k = m;
          i = j;
          if (Build.VERSION.SDK_INT >= 14)
          {
            k = m;
            i = j;
            if (Build.VERSION.SDK_INT < 17) {
              i = j;
            }
          }
        }
        catch (Exception localException3)
        {
          continue;
        }
        try
        {
          j = ((Integer)Display.class.getMethod("getRawWidth", new Class[0]).invoke(paramView, new Object[0])).intValue();
          i = j;
          k = ((Integer)Display.class.getMethod("getRawHeight", new Class[0]).invoke(paramView, new Object[0])).intValue();
          i = j;
        }
        catch (Exception localException2)
        {
          ck.b("getting screen dimensions, but probably fine to ignore", localException2);
          k = m;
          break;
        }
      }
      m = k;
      int j = i;
      if (Build.VERSION.SDK_INT >= 17) {
        j = i;
      }
      try
      {
        localObject = new Point();
        j = i;
        Display.class.getMethod("getRealSize", new Class[] { Point.class }).invoke(paramView, new Object[] { localObject });
        j = i;
        i = x;
        j = i;
        m = y;
        j = i;
      }
      catch (Exception paramView)
      {
        m = k;
        continue;
      }
      localJSONObject2.put("width", j);
      localJSONObject2.put("height", m);
      localJSONObject1.put("screenDimensions", localJSONObject2);
      if (ck.c()) {
        ck.a(localJSONObject1.toString());
      }
      return localJSONObject1;
      m = 0;
      j = i;
    }
  }
  
  private static AbsListView f(View paramView)
  {
    try
    {
      paramView = c(paramView);
      if ((paramView != gq.h().i()) && ((paramView instanceof AbsListView))) {
        return (AbsListView)paramView;
      }
      if ((paramView != gq.h().i()) && (paramView != null))
      {
        paramView = f(paramView);
        return paramView;
      }
      return null;
    }
    catch (Exception paramView) {}
    return null;
  }
  
  private static boolean f(ViewGroup paramViewGroup)
  {
    Object localObject1 = paramViewGroup.getTag(gq.h().t());
    if ((localObject1 != null) && ((localObject1 instanceof HashMap)))
    {
      localObject1 = (HashMap)localObject1;
      Object localObject2 = ((HashMap)localObject1).get("listOrFragmentFirstTime");
      if ((localObject2 != null) && ((localObject2 instanceof Boolean))) {
        return ((Boolean)localObject2).booleanValue();
      }
      ((HashMap)localObject1).put("listOrFragmentFirstTime", Boolean.valueOf(false));
      paramViewGroup.setTag(gq.h().t(), localObject1);
    }
    for (;;)
    {
      return true;
      localObject1 = new HashMap();
      ((HashMap)localObject1).put("listOrFragmentFirstTime", Boolean.valueOf(false));
      paramViewGroup.setTag(gq.h().t(), localObject1);
    }
  }
  
  private static RecyclerView g(View paramView)
  {
    try
    {
      paramView = c(paramView);
      if ((paramView != gq.h().i()) && ((paramView instanceof RecyclerView))) {
        return (RecyclerView)paramView;
      }
      if ((paramView != gq.h().i()) && (paramView != null))
      {
        paramView = g(paramView);
        return paramView;
      }
      return null;
    }
    catch (Exception paramView) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.jk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */