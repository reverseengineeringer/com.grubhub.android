package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.e.c;
import android.support.v4.e.d;
import android.support.v4.view.ai;
import android.support.v4.view.bp;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class z
  extends w
  implements ai
{
  static final Interpolator A = new DecelerateInterpolator(1.5F);
  static final Interpolator B = new AccelerateInterpolator(2.5F);
  static final Interpolator C = new AccelerateInterpolator(1.5F);
  static boolean a;
  static final boolean b;
  static final Interpolator z;
  ArrayList<Runnable> c;
  Runnable[] d;
  boolean e;
  ArrayList<Fragment> f;
  ArrayList<Fragment> g;
  ArrayList<Integer> h;
  ArrayList<k> i;
  ArrayList<Fragment> j;
  ArrayList<k> k;
  ArrayList<Integer> l;
  ArrayList<y> m;
  int n = 0;
  v o;
  t p;
  Fragment q;
  boolean r;
  boolean s;
  boolean t;
  String u;
  boolean v;
  Bundle w = null;
  SparseArray<Parcelable> x = null;
  Runnable y = new Runnable()
  {
    public void run()
    {
      h();
    }
  };
  
  static
  {
    boolean bool = false;
    a = false;
    if (Build.VERSION.SDK_INT >= 11) {
      bool = true;
    }
    b = bool;
    z = new DecelerateInterpolator(2.5F);
  }
  
  static Animation a(Context paramContext, float paramFloat1, float paramFloat2)
  {
    paramContext = new AlphaAnimation(paramFloat1, paramFloat2);
    paramContext.setInterpolator(A);
    paramContext.setDuration(220L);
    return paramContext;
  }
  
  static Animation a(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramContext = new AnimationSet(false);
    Object localObject = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    ((ScaleAnimation)localObject).setInterpolator(z);
    ((ScaleAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    localObject = new AlphaAnimation(paramFloat3, paramFloat4);
    ((AlphaAnimation)localObject).setInterpolator(A);
    ((AlphaAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    return paramContext;
  }
  
  private void a(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new d("FragmentManager"));
    if (o != null) {}
    for (;;)
    {
      try
      {
        o.a("  ", null, localPrintWriter, new String[0]);
        throw paramRuntimeException;
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
        continue;
      }
      try
      {
        a("  ", null, localException1, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
  }
  
  static boolean a(View paramView, Animation paramAnimation)
  {
    return (bp.d(paramView) == 0) && (bp.q(paramView)) && (a(paramAnimation));
  }
  
  static boolean a(Animation paramAnimation)
  {
    boolean bool2 = false;
    boolean bool1;
    if ((paramAnimation instanceof AlphaAnimation)) {
      bool1 = true;
    }
    do
    {
      return bool1;
      bool1 = bool2;
    } while (!(paramAnimation instanceof AnimationSet));
    paramAnimation = ((AnimationSet)paramAnimation).getAnimations();
    int i1 = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i1 >= paramAnimation.size()) {
        break;
      }
      if ((paramAnimation.get(i1) instanceof AlphaAnimation)) {
        return true;
      }
      i1 += 1;
    }
  }
  
  public static int b(int paramInt, boolean paramBoolean)
  {
    switch (paramInt)
    {
    default: 
      return -1;
    case 4097: 
      if (paramBoolean) {
        return 1;
      }
      return 2;
    case 8194: 
      if (paramBoolean) {
        return 3;
      }
      return 4;
    }
    if (paramBoolean) {
      return 5;
    }
    return 6;
  }
  
  private void b(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null)) {}
    while (!a(paramView, paramAnimation)) {
      return;
    }
    paramAnimation.setAnimationListener(new aa(paramView, paramAnimation));
  }
  
  public static int d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 4097: 
      return 8194;
    case 8194: 
      return 4097;
    }
    return 4099;
  }
  
  private void x()
  {
    if (s) {
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
    if (u != null) {
      throw new IllegalStateException("Can not perform this action inside of " + u);
    }
  }
  
  public int a(k paramk)
  {
    try
    {
      if ((l == null) || (l.size() <= 0))
      {
        if (k == null) {
          k = new ArrayList();
        }
        i1 = k.size();
        if (a) {
          Log.v("FragmentManager", "Setting back stack index " + i1 + " to " + paramk);
        }
        k.add(paramk);
        return i1;
      }
      int i1 = ((Integer)l.remove(l.size() - 1)).intValue();
      if (a) {
        Log.v("FragmentManager", "Adding back stack index " + i1 + " with " + paramk);
      }
      k.set(i1, paramk);
      return i1;
    }
    finally {}
  }
  
  public Fragment.SavedState a(Fragment paramFragment)
  {
    Object localObject2 = null;
    if (mIndex < 0) {
      a(new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager"));
    }
    Object localObject1 = localObject2;
    if (mState > 0)
    {
      paramFragment = g(paramFragment);
      localObject1 = localObject2;
      if (paramFragment != null) {
        localObject1 = new Fragment.SavedState(paramFragment);
      }
    }
    return (Fragment.SavedState)localObject1;
  }
  
  public Fragment a(int paramInt)
  {
    int i1;
    Object localObject;
    if (g != null)
    {
      i1 = g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (Fragment)g.get(i1);
        if ((localObject != null) && (mFragmentId == paramInt)) {
          return (Fragment)localObject;
        }
        i1 -= 1;
      }
    }
    if (f != null)
    {
      i1 = f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label112;
        }
        Fragment localFragment = (Fragment)f.get(i1);
        if (localFragment != null)
        {
          localObject = localFragment;
          if (mFragmentId == paramInt) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label112:
    return null;
  }
  
  public Fragment a(Bundle paramBundle, String paramString)
  {
    int i1 = paramBundle.getInt(paramString, -1);
    if (i1 == -1) {
      paramBundle = null;
    }
    Fragment localFragment;
    do
    {
      return paramBundle;
      if (i1 >= f.size()) {
        a(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i1));
      }
      localFragment = (Fragment)f.get(i1);
      paramBundle = localFragment;
    } while (localFragment != null);
    a(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i1));
    return localFragment;
  }
  
  public Fragment a(String paramString)
  {
    int i1;
    Object localObject;
    if ((g != null) && (paramString != null))
    {
      i1 = g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (Fragment)g.get(i1);
        if ((localObject != null) && (paramString.equals(mTag))) {
          return (Fragment)localObject;
        }
        i1 -= 1;
      }
    }
    if ((f != null) && (paramString != null))
    {
      i1 = f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label126;
        }
        Fragment localFragment = (Fragment)f.get(i1);
        if (localFragment != null)
        {
          localObject = localFragment;
          if (paramString.equals(mTag)) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label126:
    return null;
  }
  
  public ag a()
  {
    return new k(this);
  }
  
  public View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString)) {
      return null;
    }
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    paramString = paramContext.obtainStyledAttributes(paramAttributeSet, ab.a);
    if (str1 == null) {
      str1 = paramString.getString(0);
    }
    for (;;)
    {
      int i3 = paramString.getResourceId(1, -1);
      String str2 = paramString.getString(2);
      paramString.recycle();
      if (!Fragment.isSupportFragmentClass(o.i(), str1)) {
        return null;
      }
      if (paramView != null) {}
      for (int i1 = paramView.getId(); (i1 == -1) && (i3 == -1) && (str2 == null); i1 = 0) {
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
      }
      int i2;
      if (i3 != -1)
      {
        paramString = a(i3);
        paramView = paramString;
        if (paramString == null)
        {
          paramView = paramString;
          if (str2 != null) {
            paramView = a(str2);
          }
        }
        paramString = paramView;
        if (paramView == null)
        {
          paramString = paramView;
          if (i1 != -1) {
            paramString = a(i1);
          }
        }
        if (a) {
          Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(i3) + " fname=" + str1 + " existing=" + paramString);
        }
        if (paramString != null) {
          break label420;
        }
        paramView = Fragment.instantiate(paramContext, str1);
        mFromLayout = true;
        if (i3 == 0) {
          break label413;
        }
        i2 = i3;
        label291:
        mFragmentId = i2;
        mContainerId = i1;
        mTag = str2;
        mInLayout = true;
        mFragmentManager = this;
        paramView.onInflate(o.i(), paramAttributeSet, mSavedFragmentState);
        a(paramView, true);
        label342:
        if ((n >= 1) || (!mFromLayout)) {
          break label539;
        }
        a(paramView, 1, 0, 0, false);
      }
      for (;;)
      {
        if (mView != null) {
          break label547;
        }
        throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
        paramString = null;
        break;
        label413:
        i2 = i1;
        break label291;
        label420:
        if (mInLayout) {
          throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(i3) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(i1) + " with another fragment for " + str1);
        }
        mInLayout = true;
        if (!mRetaining) {
          paramString.onInflate(o.i(), paramAttributeSet, mSavedFragmentState);
        }
        paramView = paramString;
        break label342;
        label539:
        c(paramView);
      }
      label547:
      if (i3 != 0) {
        mView.setId(i3);
      }
      if (mView.getTag() == null) {
        mView.setTag(str2);
      }
      return mView;
    }
  }
  
  Animation a(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    Animation localAnimation = paramFragment.onCreateAnimation(paramInt1, paramBoolean, mNextAnim);
    if (localAnimation != null) {
      paramFragment = localAnimation;
    }
    do
    {
      return paramFragment;
      if (mNextAnim == 0) {
        break;
      }
      localAnimation = AnimationUtils.loadAnimation(o.i(), mNextAnim);
      paramFragment = localAnimation;
    } while (localAnimation != null);
    if (paramInt1 == 0) {
      return null;
    }
    paramInt1 = b(paramInt1, paramBoolean);
    if (paramInt1 < 0) {
      return null;
    }
    switch (paramInt1)
    {
    default: 
      paramInt1 = paramInt2;
      if (paramInt2 == 0)
      {
        paramInt1 = paramInt2;
        if (o.e()) {
          paramInt1 = o.f();
        }
      }
      if (paramInt1 == 0) {
        return null;
      }
      break;
    case 1: 
      return a(o.i(), 1.125F, 1.0F, 0.0F, 1.0F);
    case 2: 
      return a(o.i(), 1.0F, 0.975F, 1.0F, 0.0F);
    case 3: 
      return a(o.i(), 0.975F, 1.0F, 0.0F, 1.0F);
    case 4: 
      return a(o.i(), 1.0F, 1.075F, 1.0F, 0.0F);
    case 5: 
      return a(o.i(), 0.0F, 1.0F);
    case 6: 
      return a(o.i(), 1.0F, 0.0F);
    }
    return null;
  }
  
  public void a(final int paramInt1, final int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Bad id: " + paramInt1);
    }
    a(new Runnable()
    {
      public void run()
      {
        a(o.j(), null, paramInt1, paramInt2);
      }
    }, false);
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((o == null) && (paramInt1 != 0)) {
      throw new IllegalStateException("No host");
    }
    if ((!paramBoolean) && (n == paramInt1)) {}
    do
    {
      return;
      n = paramInt1;
    } while (f == null);
    int i1 = 0;
    boolean bool = false;
    label54:
    if (i1 < f.size())
    {
      Fragment localFragment = (Fragment)f.get(i1);
      if (localFragment == null) {
        break label169;
      }
      a(localFragment, paramInt1, paramInt2, paramInt3, false);
      if (mLoaderManager == null) {
        break label169;
      }
      bool |= mLoaderManager.a();
    }
    label169:
    for (;;)
    {
      i1 += 1;
      break label54;
      if (!bool) {
        g();
      }
      if ((!r) || (o == null) || (n != 5)) {
        break;
      }
      o.d();
      r = false;
      return;
    }
  }
  
  /* Error */
  public void a(int paramInt, k paramk)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 256	android/support/v4/app/z:k	Ljava/util/ArrayList;
    //   6: ifnonnull +14 -> 20
    //   9: aload_0
    //   10: new 253	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 257	java/util/ArrayList:<init>	()V
    //   17: putfield 256	android/support/v4/app/z:k	Ljava/util/ArrayList;
    //   20: aload_0
    //   21: getfield 256	android/support/v4/app/z:k	Ljava/util/ArrayList;
    //   24: invokevirtual 254	java/util/ArrayList:size	()I
    //   27: istore 4
    //   29: iload 4
    //   31: istore_3
    //   32: iload_1
    //   33: iload 4
    //   35: if_icmpge +58 -> 93
    //   38: getstatic 67	android/support/v4/app/z:a	Z
    //   41: ifeq +39 -> 80
    //   44: ldc -110
    //   46: new 238	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   53: ldc_w 259
    //   56: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: iload_1
    //   60: invokevirtual 262	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   63: ldc_w 264
    //   66: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_2
    //   70: invokevirtual 267	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokestatic 269	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   79: pop
    //   80: aload_0
    //   81: getfield 256	android/support/v4/app/z:k	Ljava/util/ArrayList;
    //   84: iload_1
    //   85: aload_2
    //   86: invokevirtual 289	java/util/ArrayList:set	(ILjava/lang/Object;)Ljava/lang/Object;
    //   89: pop
    //   90: aload_0
    //   91: monitorexit
    //   92: return
    //   93: iload_3
    //   94: iload_1
    //   95: if_icmpge +81 -> 176
    //   98: aload_0
    //   99: getfield 256	android/support/v4/app/z:k	Ljava/util/ArrayList;
    //   102: aconst_null
    //   103: invokevirtual 273	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   106: pop
    //   107: aload_0
    //   108: getfield 251	android/support/v4/app/z:l	Ljava/util/ArrayList;
    //   111: ifnonnull +14 -> 125
    //   114: aload_0
    //   115: new 253	java/util/ArrayList
    //   118: dup
    //   119: invokespecial 257	java/util/ArrayList:<init>	()V
    //   122: putfield 251	android/support/v4/app/z:l	Ljava/util/ArrayList;
    //   125: getstatic 67	android/support/v4/app/z:a	Z
    //   128: ifeq +29 -> 157
    //   131: ldc -110
    //   133: new 238	java/lang/StringBuilder
    //   136: dup
    //   137: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   140: ldc_w 530
    //   143: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: iload_3
    //   147: invokevirtual 262	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   150: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 269	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   156: pop
    //   157: aload_0
    //   158: getfield 251	android/support/v4/app/z:l	Ljava/util/ArrayList;
    //   161: iload_3
    //   162: invokestatic 534	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   165: invokevirtual 273	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   168: pop
    //   169: iload_3
    //   170: iconst_1
    //   171: iadd
    //   172: istore_3
    //   173: goto -80 -> 93
    //   176: getstatic 67	android/support/v4/app/z:a	Z
    //   179: ifeq +39 -> 218
    //   182: ldc -110
    //   184: new 238	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   191: ldc_w 283
    //   194: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: iload_1
    //   198: invokevirtual 262	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   201: ldc_w 285
    //   204: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload_2
    //   208: invokevirtual 267	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: invokestatic 269	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   217: pop
    //   218: aload_0
    //   219: getfield 256	android/support/v4/app/z:k	Ljava/util/ArrayList;
    //   222: aload_2
    //   223: invokevirtual 273	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   226: pop
    //   227: goto -137 -> 90
    //   230: astore_2
    //   231: aload_0
    //   232: monitorexit
    //   233: aload_2
    //   234: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	235	0	this	z
    //   0	235	1	paramInt	int
    //   0	235	2	paramk	k
    //   31	142	3	i1	int
    //   27	9	4	i2	int
    // Exception table:
    //   from	to	target	type
    //   2	20	230	finally
    //   20	29	230	finally
    //   38	80	230	finally
    //   80	90	230	finally
    //   90	92	230	finally
    //   98	125	230	finally
    //   125	157	230	finally
    //   157	169	230	finally
    //   176	218	230	finally
    //   218	227	230	finally
    //   231	233	230	finally
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, 0, 0, paramBoolean);
  }
  
  public void a(Configuration paramConfiguration)
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if (localFragment != null) {
          localFragment.performConfigurationChanged(paramConfiguration);
        }
        i1 += 1;
      }
    }
  }
  
  public void a(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (mIndex < 0) {
      a(new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager"));
    }
    paramBundle.putInt(paramString, mIndex);
  }
  
  void a(Parcelable paramParcelable, List<Fragment> paramList)
  {
    if (paramParcelable == null) {}
    for (;;)
    {
      return;
      paramParcelable = (FragmentManagerState)paramParcelable;
      if (a != null)
      {
        Object localObject1;
        Object localObject2;
        if (paramList != null)
        {
          i1 = 0;
          while (i1 < paramList.size())
          {
            localObject1 = (Fragment)paramList.get(i1);
            if (a) {
              Log.v("FragmentManager", "restoreAllState: re-attaching retained " + localObject1);
            }
            localObject2 = a[mIndex];
            k = ((Fragment)localObject1);
            mSavedViewState = null;
            mBackStackNesting = 0;
            mInLayout = false;
            mAdded = false;
            mTarget = null;
            if (j != null)
            {
              j.setClassLoader(o.i().getClassLoader());
              mSavedViewState = j.getSparseParcelableArray("android:view_state");
              mSavedFragmentState = j;
            }
            i1 += 1;
          }
        }
        f = new ArrayList(a.length);
        if (h != null) {
          h.clear();
        }
        int i1 = 0;
        if (i1 < a.length)
        {
          localObject1 = a[i1];
          if (localObject1 != null)
          {
            localObject2 = ((FragmentState)localObject1).a(o, q);
            if (a) {
              Log.v("FragmentManager", "restoreAllState: active #" + i1 + ": " + localObject2);
            }
            f.add(localObject2);
            k = null;
          }
          for (;;)
          {
            i1 += 1;
            break;
            f.add(null);
            if (h == null) {
              h = new ArrayList();
            }
            if (a) {
              Log.v("FragmentManager", "restoreAllState: avail #" + i1);
            }
            h.add(Integer.valueOf(i1));
          }
        }
        if (paramList != null)
        {
          i1 = 0;
          if (i1 < paramList.size())
          {
            localObject1 = (Fragment)paramList.get(i1);
            if (mTargetIndex >= 0) {
              if (mTargetIndex >= f.size()) {
                break label473;
              }
            }
            for (mTarget = ((Fragment)f.get(mTargetIndex));; mTarget = null)
            {
              i1 += 1;
              break;
              label473:
              Log.w("FragmentManager", "Re-attaching retained fragment " + localObject1 + " target no longer exists: " + mTargetIndex);
            }
          }
        }
        if (b != null)
        {
          g = new ArrayList(b.length);
          i1 = 0;
          while (i1 < b.length)
          {
            paramList = (Fragment)f.get(b[i1]);
            if (paramList == null) {
              a(new IllegalStateException("No instantiated fragment for index #" + b[i1]));
            }
            mAdded = true;
            if (a) {
              Log.v("FragmentManager", "restoreAllState: added #" + i1 + ": " + paramList);
            }
            if (g.contains(paramList)) {
              throw new IllegalStateException("Already added!");
            }
            g.add(paramList);
            i1 += 1;
          }
        }
        g = null;
        if (c == null) {
          break;
        }
        i = new ArrayList(c.length);
        i1 = 0;
        while (i1 < c.length)
        {
          paramList = c[i1].a(this);
          if (a)
          {
            Log.v("FragmentManager", "restoreAllState: back stack #" + i1 + " (index " + p + "): " + paramList);
            paramList.a("  ", new PrintWriter(new d("FragmentManager")), false);
          }
          i.add(paramList);
          if (p >= 0) {
            a(p, paramList);
          }
          i1 += 1;
        }
      }
    }
    i = null;
  }
  
  public void a(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "remove: " + paramFragment + " nesting=" + mBackStackNesting);
    }
    if (!paramFragment.isInBackStack())
    {
      i1 = 1;
      if ((!mDetached) || (i1 != 0))
      {
        if (g != null) {
          g.remove(paramFragment);
        }
        if ((mHasMenu) && (mMenuVisible)) {
          r = true;
        }
        mAdded = false;
        mRemoving = true;
        if (i1 == 0) {
          break label137;
        }
      }
    }
    label137:
    for (int i1 = 0;; i1 = 1)
    {
      a(paramFragment, i1, paramInt1, paramInt2, false);
      return;
      i1 = 0;
      break;
    }
  }
  
  void a(final Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i1;
    if (mAdded)
    {
      i1 = paramInt1;
      if (!mDetached) {}
    }
    else
    {
      i1 = paramInt1;
      if (paramInt1 > 1) {
        i1 = 1;
      }
    }
    int i2 = i1;
    if (mRemoving)
    {
      i2 = i1;
      if (i1 > mState) {
        i2 = mState;
      }
    }
    paramInt1 = i2;
    if (mDeferStart)
    {
      paramInt1 = i2;
      if (mState < 4)
      {
        paramInt1 = i2;
        if (i2 > 3) {
          paramInt1 = 3;
        }
      }
    }
    int i3;
    label550:
    label582:
    Object localObject2;
    if (mState < paramInt1)
    {
      if ((mFromLayout) && (!mInLayout)) {
        return;
      }
      if (mAnimatingAway != null)
      {
        mAnimatingAway = null;
        a(paramFragment, mStateAfterAnimating, 0, 0, true);
      }
      i1 = paramInt1;
      i3 = paramInt1;
      i2 = paramInt1;
      switch (mState)
      {
      default: 
        i1 = paramInt1;
        mState = i1;
        return;
      case 0: 
        if (a) {
          Log.v("FragmentManager", "moveto CREATED: " + paramFragment);
        }
        i2 = paramInt1;
        if (mSavedFragmentState != null)
        {
          mSavedFragmentState.setClassLoader(o.i().getClassLoader());
          mSavedViewState = mSavedFragmentState.getSparseParcelableArray("android:view_state");
          mTarget = a(mSavedFragmentState, "android:target_state");
          if (mTarget != null) {
            mTargetRequestCode = mSavedFragmentState.getInt("android:target_req_state", 0);
          }
          mUserVisibleHint = mSavedFragmentState.getBoolean("android:user_visible_hint", true);
          i2 = paramInt1;
          if (!mUserVisibleHint)
          {
            mDeferStart = true;
            i2 = paramInt1;
            if (paramInt1 > 3) {
              i2 = 3;
            }
          }
        }
        mHost = o;
        mParentFragment = q;
        if (q != null) {}
        for (localObject1 = q.mChildFragmentManager;; localObject1 = o.k())
        {
          mFragmentManager = ((z)localObject1);
          mCalled = false;
          paramFragment.onAttach(o.i());
          if (mCalled) {
            break;
          }
          throw new dh("Fragment " + paramFragment + " did not call through to super.onAttach()");
        }
        if (mParentFragment == null) {
          o.b(paramFragment);
        }
        if (!mRetaining) {
          paramFragment.performCreate(mSavedFragmentState);
        }
        mRetaining = false;
        i1 = i2;
        if (mFromLayout)
        {
          mView = paramFragment.performCreateView(paramFragment.getLayoutInflater(mSavedFragmentState), null, mSavedFragmentState);
          if (mView == null) {
            break label1045;
          }
          mInnerView = mView;
          if (Build.VERSION.SDK_INT < 11) {
            break label1031;
          }
          bp.a(mView, false);
          if (mHidden) {
            mView.setVisibility(8);
          }
          paramFragment.onViewCreated(mView, mSavedFragmentState);
          i1 = i2;
        }
      case 1: 
        i3 = i1;
        if (i1 > 1)
        {
          if (a) {
            Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + paramFragment);
          }
          if (!mFromLayout)
          {
            if (mContainerId == 0) {
              break label1655;
            }
            localObject2 = (ViewGroup)p.a(mContainerId);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = localObject2;
              if (!mRestored) {
                a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(mContainerId) + " (" + paramFragment.getResources().getResourceName(mContainerId) + ") for fragment " + paramFragment));
              }
            }
          }
        }
        break;
      }
    }
    label804:
    label1031:
    label1045:
    label1134:
    label1504:
    label1649:
    label1655:
    for (Object localObject1 = localObject2;; localObject1 = null)
    {
      mContainer = ((ViewGroup)localObject1);
      mView = paramFragment.performCreateView(paramFragment.getLayoutInflater(mSavedFragmentState), (ViewGroup)localObject1, mSavedFragmentState);
      if (mView != null)
      {
        mInnerView = mView;
        if (Build.VERSION.SDK_INT >= 11)
        {
          bp.a(mView, false);
          if (localObject1 != null)
          {
            localObject2 = a(paramFragment, paramInt2, true, paramInt3);
            if (localObject2 != null)
            {
              b(mView, (Animation)localObject2);
              mView.startAnimation((Animation)localObject2);
            }
            ((ViewGroup)localObject1).addView(mView);
          }
          if (mHidden) {
            mView.setVisibility(8);
          }
          paramFragment.onViewCreated(mView, mSavedFragmentState);
        }
      }
      for (;;)
      {
        paramFragment.performActivityCreated(mSavedFragmentState);
        if (mView != null) {
          paramFragment.restoreViewState(mSavedFragmentState);
        }
        mSavedFragmentState = null;
        i3 = i1;
        i2 = i3;
        if (i3 > 3)
        {
          if (a) {
            Log.v("FragmentManager", "moveto STARTED: " + paramFragment);
          }
          paramFragment.performStart();
          i2 = i3;
        }
        i1 = i2;
        if (i2 <= 4) {
          break;
        }
        if (a) {
          Log.v("FragmentManager", "moveto RESUMED: " + paramFragment);
        }
        mResumed = true;
        paramFragment.performResume();
        mSavedFragmentState = null;
        mSavedViewState = null;
        i1 = i2;
        break;
        mView = aw.a(mView);
        break label550;
        mInnerView = null;
        i1 = i2;
        break label582;
        mView = aw.a(mView);
        break label804;
        mInnerView = null;
      }
      i1 = paramInt1;
      if (mState <= paramInt1) {
        break;
      }
      switch (mState)
      {
      default: 
        i1 = paramInt1;
        break;
      case 1: 
      case 5: 
      case 4: 
      case 3: 
      case 2: 
        do
        {
          i1 = paramInt1;
          if (paramInt1 >= 1) {
            break;
          }
          if ((t) && (mAnimatingAway != null))
          {
            localObject1 = mAnimatingAway;
            mAnimatingAway = null;
            ((View)localObject1).clearAnimation();
          }
          if (mAnimatingAway == null) {
            break label1504;
          }
          mStateAfterAnimating = paramInt1;
          i1 = 1;
          break;
          if (paramInt1 < 5)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom RESUMED: " + paramFragment);
            }
            paramFragment.performPause();
            mResumed = false;
          }
          if (paramInt1 < 4)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom STARTED: " + paramFragment);
            }
            paramFragment.performStop();
          }
          if (paramInt1 < 3)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom STOPPED: " + paramFragment);
            }
            paramFragment.performReallyStop();
          }
        } while (paramInt1 >= 2);
        if (a) {
          Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + paramFragment);
        }
        if ((mView != null) && (o.a(paramFragment)) && (mSavedViewState == null)) {
          f(paramFragment);
        }
        paramFragment.performDestroyView();
        if ((mView != null) && (mContainer != null)) {
          if ((n <= 0) || (t)) {
            break label1649;
          }
        }
        for (localObject1 = a(paramFragment, paramInt2, false, paramInt3);; localObject1 = null)
        {
          if (localObject1 != null)
          {
            mAnimatingAway = mView;
            mStateAfterAnimating = paramInt1;
            ((Animation)localObject1).setAnimationListener(new aa(mView, (Animation)localObject1)
            {
              public void onAnimationEnd(Animation paramAnonymousAnimation)
              {
                super.onAnimationEnd(paramAnonymousAnimation);
                if (paramFragmentmAnimatingAway != null)
                {
                  paramFragmentmAnimatingAway = null;
                  a(paramFragment, paramFragmentmStateAfterAnimating, 0, 0, false);
                }
              }
            });
            mView.startAnimation((Animation)localObject1);
          }
          mContainer.removeView(mView);
          mContainer = null;
          mView = null;
          mInnerView = null;
          break label1134;
          if (a) {
            Log.v("FragmentManager", "movefrom CREATED: " + paramFragment);
          }
          if (!mRetaining) {
            paramFragment.performDestroy();
          }
          mCalled = false;
          paramFragment.onDetach();
          if (!mCalled) {
            throw new dh("Fragment " + paramFragment + " did not call through to super.onDetach()");
          }
          i1 = paramInt1;
          if (paramBoolean) {
            break;
          }
          if (!mRetaining)
          {
            e(paramFragment);
            i1 = paramInt1;
            break;
          }
          mHost = null;
          mParentFragment = null;
          mFragmentManager = null;
          mChildFragmentManager = null;
          i1 = paramInt1;
          break;
        }
      }
    }
  }
  
  public void a(Fragment paramFragment, boolean paramBoolean)
  {
    if (g == null) {
      g = new ArrayList();
    }
    if (a) {
      Log.v("FragmentManager", "add: " + paramFragment);
    }
    d(paramFragment);
    if (!mDetached)
    {
      if (g.contains(paramFragment)) {
        throw new IllegalStateException("Fragment already added: " + paramFragment);
      }
      g.add(paramFragment);
      mAdded = true;
      mRemoving = false;
      if ((mHasMenu) && (mMenuVisible)) {
        r = true;
      }
      if (paramBoolean) {
        c(paramFragment);
      }
    }
  }
  
  public void a(v paramv, t paramt, Fragment paramFragment)
  {
    if (o != null) {
      throw new IllegalStateException("Already attached");
    }
    o = paramv;
    p = paramt;
    q = paramFragment;
  }
  
  public void a(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!paramBoolean) {
      x();
    }
    try
    {
      if ((t) || (o == null)) {
        throw new IllegalStateException("Activity has been destroyed");
      }
    }
    finally
    {
      throw paramRunnable;
      if (c == null) {
        c = new ArrayList();
      }
      c.add(paramRunnable);
      if (c.size() == 1) {
        o.j().removeCallbacks(y);
      }
    }
  }
  
  public void a(final String paramString, final int paramInt)
  {
    a(new Runnable()
    {
      public void run()
      {
        a(o.j(), paramString, -1, paramInt);
      }
    }, false);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i2 = 0;
    String str = paramString + "    ";
    int i3;
    int i1;
    Object localObject;
    if (f != null)
    {
      i3 = f.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (Fragment)f.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localObject);
          if (localObject != null) {
            ((Fragment)localObject).dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          }
          i1 += 1;
        }
      }
    }
    if (g != null)
    {
      i3 = g.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (Fragment)g.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((Fragment)localObject).toString());
          i1 += 1;
        }
      }
    }
    if (j != null)
    {
      i3 = j.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (Fragment)j.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((Fragment)localObject).toString());
          i1 += 1;
        }
      }
    }
    if (i != null)
    {
      i3 = i.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject = (k)i.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((k)localObject).toString());
          ((k)localObject).a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          i1 += 1;
        }
      }
    }
    try
    {
      if (k != null)
      {
        i3 = k.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          i1 = 0;
          while (i1 < i3)
          {
            paramFileDescriptor = (k)k.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      if ((l != null) && (l.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(l.toArray()));
      }
      if (c != null)
      {
        i3 = c.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          i1 = i2;
          while (i1 < i3)
          {
            paramFileDescriptor = (Runnable)c.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      paramPrintWriter.print(paramString);
    }
    finally {}
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mHost=");
    paramPrintWriter.println(o);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mContainer=");
    paramPrintWriter.println(p);
    if (q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mParent=");
      paramPrintWriter.println(q);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(n);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(s);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(t);
    if (r)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(r);
    }
    if (u != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(u);
    }
    if ((h != null) && (h.size() > 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mAvailIndices: ");
      paramPrintWriter.println(Arrays.toString(h.toArray()));
    }
  }
  
  boolean a(Handler paramHandler, String paramString, int paramInt1, int paramInt2)
  {
    if (i == null) {
      break label145;
    }
    label7:
    do
    {
      return false;
      if ((paramString != null) || (paramInt1 >= 0) || ((paramInt2 & 0x1) != 0)) {
        break;
      }
      paramInt1 = i.size() - 1;
    } while (paramInt1 < 0);
    paramHandler = (k)i.remove(paramInt1);
    paramString = new SparseArray();
    SparseArray localSparseArray1 = new SparseArray();
    paramHandler.a(paramString, localSparseArray1);
    paramHandler.a(true, null, paramString, localSparseArray1);
    i();
    for (;;)
    {
      return true;
      int i1 = -1;
      if ((paramString != null) || (paramInt1 >= 0))
      {
        int i2 = i.size() - 1;
        for (;;)
        {
          if (i2 >= 0)
          {
            paramHandler = (k)i.get(i2);
            if ((paramString == null) || (!paramString.equals(paramHandler.c()))) {}
          }
          else
          {
            label145:
            if (i2 < 0) {
              break label7;
            }
            i1 = i2;
            if ((paramInt2 & 0x1) == 0) {
              break label254;
            }
            paramInt2 = i2 - 1;
            for (;;)
            {
              i1 = paramInt2;
              if (paramInt2 < 0) {
                break;
              }
              paramHandler = (k)i.get(paramInt2);
              if ((paramString == null) || (!paramString.equals(paramHandler.c())))
              {
                i1 = paramInt2;
                if (paramInt1 < 0) {
                  break;
                }
                i1 = paramInt2;
                if (paramInt1 != p) {
                  break;
                }
              }
              paramInt2 -= 1;
            }
          }
          if ((paramInt1 >= 0) && (paramInt1 == p)) {
            break;
          }
          i2 -= 1;
        }
      }
      label254:
      if (i1 == i.size() - 1) {
        break label7;
      }
      paramString = new ArrayList();
      paramInt1 = i.size() - 1;
      while (paramInt1 > i1)
      {
        paramString.add(i.remove(paramInt1));
        paramInt1 -= 1;
      }
      paramInt2 = paramString.size() - 1;
      localSparseArray1 = new SparseArray();
      SparseArray localSparseArray2 = new SparseArray();
      paramInt1 = 0;
      while (paramInt1 <= paramInt2)
      {
        ((k)paramString.get(paramInt1)).a(localSparseArray1, localSparseArray2);
        paramInt1 += 1;
      }
      paramHandler = null;
      paramInt1 = 0;
      if (paramInt1 <= paramInt2)
      {
        if (a) {
          Log.v("FragmentManager", "Popping back stack state: " + paramString.get(paramInt1));
        }
        k localk = (k)paramString.get(paramInt1);
        if (paramInt1 == paramInt2) {}
        for (boolean bool = true;; bool = false)
        {
          paramHandler = localk.a(bool, paramHandler, localSparseArray1, localSparseArray2);
          paramInt1 += 1;
          break;
        }
      }
      i();
    }
  }
  
  public boolean a(Menu paramMenu)
  {
    if (g != null)
    {
      int i1 = 0;
      for (boolean bool1 = false;; bool1 = bool2)
      {
        bool2 = bool1;
        if (i1 >= g.size()) {
          break;
        }
        Fragment localFragment = (Fragment)g.get(i1);
        bool2 = bool1;
        if (localFragment != null)
        {
          bool2 = bool1;
          if (localFragment.performPrepareOptionsMenu(paramMenu)) {
            bool2 = true;
          }
        }
        i1 += 1;
      }
    }
    boolean bool2 = false;
    return bool2;
  }
  
  public boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int i2 = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    int i1;
    if (g != null)
    {
      i1 = 0;
      boolean bool1 = false;
      for (;;)
      {
        localObject2 = localObject1;
        bool2 = bool1;
        if (i1 >= g.size()) {
          break;
        }
        Fragment localFragment = (Fragment)g.get(i1);
        localObject2 = localObject1;
        bool2 = bool1;
        if (localFragment != null)
        {
          localObject2 = localObject1;
          bool2 = bool1;
          if (localFragment.performCreateOptionsMenu(paramMenu, paramMenuInflater))
          {
            bool2 = true;
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localFragment);
          }
        }
        i1 += 1;
        bool1 = bool2;
        localObject1 = localObject2;
      }
    }
    boolean bool2 = false;
    if (j != null)
    {
      i1 = i2;
      while (i1 < j.size())
      {
        paramMenu = (Fragment)j.get(i1);
        if ((localObject2 == null) || (!((ArrayList)localObject2).contains(paramMenu))) {
          paramMenu.onDestroyOptionsMenu();
        }
        i1 += 1;
      }
    }
    j = ((ArrayList)localObject2);
    return bool2;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (g != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if ((localFragment != null) && (localFragment.performOptionsItemSelected(paramMenuItem))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public Fragment b(String paramString)
  {
    if ((f != null) && (paramString != null))
    {
      int i1 = f.size() - 1;
      while (i1 >= 0)
      {
        Fragment localFragment = (Fragment)f.get(i1);
        if (localFragment != null)
        {
          localFragment = localFragment.findFragmentByWho(paramString);
          if (localFragment != null) {
            return localFragment;
          }
        }
        i1 -= 1;
      }
    }
    return null;
  }
  
  public x b(int paramInt)
  {
    return (x)i.get(paramInt);
  }
  
  public void b(Fragment paramFragment)
  {
    if (mDeferStart)
    {
      if (e) {
        v = true;
      }
    }
    else {
      return;
    }
    mDeferStart = false;
    a(paramFragment, n, 0, 0, false);
  }
  
  public void b(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "hide: " + paramFragment);
    }
    if (!mHidden)
    {
      mHidden = true;
      if (mView != null)
      {
        Animation localAnimation = a(paramFragment, paramInt1, false, paramInt2);
        if (localAnimation != null)
        {
          b(mView, localAnimation);
          mView.startAnimation(localAnimation);
        }
        mView.setVisibility(8);
      }
      if ((mAdded) && (mHasMenu) && (mMenuVisible)) {
        r = true;
      }
      paramFragment.onHiddenChanged(true);
    }
  }
  
  void b(k paramk)
  {
    if (i == null) {
      i = new ArrayList();
    }
    i.add(paramk);
    i();
  }
  
  public void b(Menu paramMenu)
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if (localFragment != null) {
          localFragment.performOptionsMenuClosed(paramMenu);
        }
        i1 += 1;
      }
    }
  }
  
  public boolean b()
  {
    return h();
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (g != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if ((localFragment != null) && (localFragment.performContextItemSelected(paramMenuItem))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public boolean b(String paramString, int paramInt)
  {
    x();
    b();
    return a(o.j(), paramString, -1, paramInt);
  }
  
  public void c()
  {
    a(new Runnable()
    {
      public void run()
      {
        a(o.j(), null, -1, 0);
      }
    }, false);
  }
  
  public void c(int paramInt)
  {
    try
    {
      k.set(paramInt, null);
      if (l == null) {
        l = new ArrayList();
      }
      if (a) {
        Log.v("FragmentManager", "Freeing back stack index " + paramInt);
      }
      l.add(Integer.valueOf(paramInt));
      return;
    }
    finally {}
  }
  
  void c(Fragment paramFragment)
  {
    a(paramFragment, n, 0, 0, false);
  }
  
  public void c(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "show: " + paramFragment);
    }
    if (mHidden)
    {
      mHidden = false;
      if (mView != null)
      {
        Animation localAnimation = a(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null)
        {
          b(mView, localAnimation);
          mView.startAnimation(localAnimation);
        }
        mView.setVisibility(0);
      }
      if ((mAdded) && (mHasMenu) && (mMenuVisible)) {
        r = true;
      }
      paramFragment.onHiddenChanged(false);
    }
  }
  
  void d(Fragment paramFragment)
  {
    if (mIndex >= 0) {}
    for (;;)
    {
      return;
      if ((h == null) || (h.size() <= 0))
      {
        if (f == null) {
          f = new ArrayList();
        }
        paramFragment.setIndex(f.size(), q);
        f.add(paramFragment);
      }
      while (a)
      {
        Log.v("FragmentManager", "Allocated fragment index " + paramFragment);
        return;
        paramFragment.setIndex(((Integer)h.remove(h.size() - 1)).intValue(), q);
        f.set(mIndex, paramFragment);
      }
    }
  }
  
  public void d(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "detach: " + paramFragment);
    }
    if (!mDetached)
    {
      mDetached = true;
      if (mAdded)
      {
        if (g != null)
        {
          if (a) {
            Log.v("FragmentManager", "remove from detach: " + paramFragment);
          }
          g.remove(paramFragment);
        }
        if ((mHasMenu) && (mMenuVisible)) {
          r = true;
        }
        mAdded = false;
        a(paramFragment, 1, paramInt1, paramInt2, false);
      }
    }
  }
  
  public boolean d()
  {
    x();
    b();
    return a(o.j(), null, -1, 0);
  }
  
  public int e()
  {
    if (i != null) {
      return i.size();
    }
    return 0;
  }
  
  void e(Fragment paramFragment)
  {
    if (mIndex < 0) {
      return;
    }
    if (a) {
      Log.v("FragmentManager", "Freeing fragment index " + paramFragment);
    }
    f.set(mIndex, null);
    if (h == null) {
      h = new ArrayList();
    }
    h.add(Integer.valueOf(mIndex));
    o.b(mWho);
    paramFragment.initState();
  }
  
  public void e(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "attach: " + paramFragment);
    }
    if (mDetached)
    {
      mDetached = false;
      if (!mAdded)
      {
        if (g == null) {
          g = new ArrayList();
        }
        if (g.contains(paramFragment)) {
          throw new IllegalStateException("Fragment already added: " + paramFragment);
        }
        if (a) {
          Log.v("FragmentManager", "add from attach: " + paramFragment);
        }
        g.add(paramFragment);
        mAdded = true;
        if ((mHasMenu) && (mMenuVisible)) {
          r = true;
        }
        a(paramFragment, n, paramInt1, paramInt2, false);
      }
    }
  }
  
  public List<Fragment> f()
  {
    return f;
  }
  
  void f(Fragment paramFragment)
  {
    if (mInnerView == null) {
      return;
    }
    if (x == null) {
      x = new SparseArray();
    }
    for (;;)
    {
      mInnerView.saveHierarchyState(x);
      if (x.size() <= 0) {
        break;
      }
      mSavedViewState = x;
      x = null;
      return;
      x.clear();
    }
  }
  
  Bundle g(Fragment paramFragment)
  {
    if (w == null) {
      w = new Bundle();
    }
    paramFragment.performSaveInstanceState(w);
    Object localObject2;
    if (!w.isEmpty())
    {
      localObject2 = w;
      w = null;
    }
    for (;;)
    {
      if (mView != null) {
        f(paramFragment);
      }
      Object localObject1 = localObject2;
      if (mSavedViewState != null)
      {
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = new Bundle();
        }
        ((Bundle)localObject1).putSparseParcelableArray("android:view_state", mSavedViewState);
      }
      localObject2 = localObject1;
      if (!mUserVisibleHint)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new Bundle();
        }
        ((Bundle)localObject2).putBoolean("android:user_visible_hint", mUserVisibleHint);
      }
      return (Bundle)localObject2;
      localObject2 = null;
    }
  }
  
  void g()
  {
    if (f == null) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < f.size())
      {
        Fragment localFragment = (Fragment)f.get(i1);
        if (localFragment != null) {
          b(localFragment);
        }
        i1 += 1;
      }
    }
  }
  
  public boolean h()
  {
    if (e) {
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    }
    if (Looper.myLooper() != o.j().getLooper()) {
      throw new IllegalStateException("Must be called from main thread of process");
    }
    int i2;
    for (boolean bool = false;; bool = true) {
      try
      {
        if ((c == null) || (c.size() == 0))
        {
          if (!v) {
            break label276;
          }
          i1 = 0;
          int i4;
          for (i2 = 0; i1 < f.size(); i2 = i4)
          {
            Fragment localFragment = (Fragment)f.get(i1);
            int i3 = i2;
            if (localFragment != null)
            {
              i3 = i2;
              if (mLoaderManager != null) {
                i4 = i2 | mLoaderManager.a();
              }
            }
            i1 += 1;
          }
        }
        i2 = c.size();
        if ((d == null) || (d.length < i2)) {
          d = new Runnable[i2];
        }
        c.toArray(d);
        c.clear();
        o.j().removeCallbacks(y);
        e = true;
        int i1 = 0;
        while (i1 < i2)
        {
          d[i1].run();
          d[i1] = null;
          i1 += 1;
        }
        e = false;
      }
      finally {}
    }
    if (i2 == 0)
    {
      v = false;
      g();
    }
    label276:
    return bool;
  }
  
  void i()
  {
    if (m != null)
    {
      int i1 = 0;
      while (i1 < m.size())
      {
        ((y)m.get(i1)).a();
        i1 += 1;
      }
    }
  }
  
  ArrayList<Fragment> j()
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (f != null)
    {
      int i1 = 0;
      localObject2 = localObject1;
      if (i1 < f.size())
      {
        Fragment localFragment = (Fragment)f.get(i1);
        Object localObject3 = localObject1;
        if (localFragment != null)
        {
          localObject3 = localObject1;
          if (mRetainInstance)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localFragment);
            mRetaining = true;
            if (mTarget == null) {
              break label164;
            }
          }
        }
        label164:
        for (int i2 = mTarget.mIndex;; i2 = -1)
        {
          mTargetIndex = i2;
          localObject3 = localObject2;
          if (a)
          {
            Log.v("FragmentManager", "retainNonConfig: keeping retained " + localFragment);
            localObject3 = localObject2;
          }
          i1 += 1;
          localObject1 = localObject3;
          break;
        }
      }
    }
    return (ArrayList<Fragment>)localObject2;
  }
  
  Parcelable k()
  {
    Object localObject3 = null;
    h();
    if (b) {
      s = true;
    }
    if ((f == null) || (f.size() <= 0)) {
      return null;
    }
    int i3 = f.size();
    FragmentState[] arrayOfFragmentState = new FragmentState[i3];
    int i2 = 0;
    int i1 = 0;
    label56:
    Object localObject1;
    Object localObject2;
    if (i2 < i3)
    {
      localObject1 = (Fragment)f.get(i2);
      if (localObject1 == null) {
        break label718;
      }
      if (mIndex < 0) {
        a(new IllegalStateException("Failure saving state: active " + localObject1 + " has cleared index: " + mIndex));
      }
      localObject2 = new FragmentState((Fragment)localObject1);
      arrayOfFragmentState[i2] = localObject2;
      if ((mState > 0) && (j == null))
      {
        j = g((Fragment)localObject1);
        if (mTarget != null)
        {
          if (mTarget.mIndex < 0) {
            a(new IllegalStateException("Failure saving state: " + localObject1 + " has target not in fragment manager: " + mTarget));
          }
          if (j == null) {
            j = new Bundle();
          }
          a(j, "android:target_state", mTarget);
          if (mTargetRequestCode != 0) {
            j.putInt("android:target_req_state", mTargetRequestCode);
          }
        }
        label303:
        if (a) {
          Log.v("FragmentManager", "Saved state of " + localObject1 + ": " + j);
        }
        i1 = 1;
      }
    }
    label718:
    for (;;)
    {
      i2 += 1;
      break label56;
      j = mSavedFragmentState;
      break label303;
      if (i1 == 0)
      {
        if (!a) {
          break;
        }
        Log.v("FragmentManager", "saveAllState: no fragments!");
        return null;
      }
      if (g != null)
      {
        i2 = g.size();
        if (i2 > 0)
        {
          localObject2 = new int[i2];
          i1 = 0;
          for (;;)
          {
            localObject1 = localObject2;
            if (i1 >= i2) {
              break;
            }
            localObject2[i1] = g.get(i1)).mIndex;
            if (localObject2[i1] < 0) {
              a(new IllegalStateException("Failure saving state: active " + g.get(i1) + " has cleared index: " + localObject2[i1]));
            }
            if (a) {
              Log.v("FragmentManager", "saveAllState: adding fragment #" + i1 + ": " + g.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject1 = null;
      localObject2 = localObject3;
      if (i != null)
      {
        i2 = i.size();
        localObject2 = localObject3;
        if (i2 > 0)
        {
          localObject3 = new BackStackState[i2];
          i1 = 0;
          for (;;)
          {
            localObject2 = localObject3;
            if (i1 >= i2) {
              break;
            }
            localObject3[i1] = new BackStackState((k)i.get(i1));
            if (a) {
              Log.v("FragmentManager", "saveAllState: adding back stack #" + i1 + ": " + i.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject3 = new FragmentManagerState();
      a = arrayOfFragmentState;
      b = ((int[])localObject1);
      c = ((BackStackState[])localObject2);
      return (Parcelable)localObject3;
    }
  }
  
  public void l()
  {
    s = false;
  }
  
  public void m()
  {
    s = false;
    a(1, false);
  }
  
  public void n()
  {
    s = false;
    a(2, false);
  }
  
  public void o()
  {
    s = false;
    a(4, false);
  }
  
  public void p()
  {
    s = false;
    a(5, false);
  }
  
  public void q()
  {
    a(4, false);
  }
  
  public void r()
  {
    s = true;
    a(3, false);
  }
  
  public void s()
  {
    a(2, false);
  }
  
  public void t()
  {
    a(1, false);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (q != null) {
      c.a(q, localStringBuilder);
    }
    for (;;)
    {
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
      c.a(o, localStringBuilder);
    }
  }
  
  public void u()
  {
    t = true;
    h();
    a(0, false);
    o = null;
    p = null;
    q = null;
  }
  
  public void v()
  {
    if (g != null)
    {
      int i1 = 0;
      while (i1 < g.size())
      {
        Fragment localFragment = (Fragment)g.get(i1);
        if (localFragment != null) {
          localFragment.performLowMemory();
        }
        i1 += 1;
      }
    }
  }
  
  ai w()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */