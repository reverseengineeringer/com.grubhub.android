package android.support.v4.app;

import android.os.Build.VERSION;
import android.support.v4.e.a;
import android.support.v4.e.d;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

final class k
  extends ag
  implements x, Runnable
{
  static final boolean a;
  final z b;
  l c;
  l d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  int k;
  boolean l;
  boolean m = true;
  String n;
  boolean o;
  int p = -1;
  int q;
  CharSequence r;
  int s;
  CharSequence t;
  ArrayList<String> u;
  ArrayList<String> v;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public k(z paramz)
  {
    b = paramz;
  }
  
  private m a(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2, boolean paramBoolean)
  {
    int i5 = 0;
    m localm = new m(this);
    d = new View(b.o.i());
    int i2 = 0;
    int i1 = 0;
    int i3 = i5;
    int i4 = i1;
    if (i2 < paramSparseArray1.size())
    {
      if (!a(paramSparseArray1.keyAt(i2), localm, paramBoolean, paramSparseArray1, paramSparseArray2)) {
        break label164;
      }
      i1 = 1;
    }
    label164:
    for (;;)
    {
      i2 += 1;
      break;
      while (i3 < paramSparseArray2.size())
      {
        i2 = paramSparseArray2.keyAt(i3);
        i1 = i4;
        if (paramSparseArray1.get(i2) == null)
        {
          i1 = i4;
          if (a(i2, localm, paramBoolean, paramSparseArray1, paramSparseArray2)) {
            i1 = 1;
          }
        }
        i3 += 1;
        i4 = i1;
      }
      paramSparseArray1 = localm;
      if (i4 == 0) {
        paramSparseArray1 = null;
      }
      return paramSparseArray1;
    }
  }
  
  private a<String, View> a(m paramm, Fragment paramFragment, boolean paramBoolean)
  {
    a locala2 = new a();
    a locala1 = locala2;
    if (u != null)
    {
      ah.a(locala2, paramFragment.getView());
      if (!paramBoolean) {
        break label82;
      }
      locala2.a(v);
    }
    label82:
    for (locala1 = locala2; paramBoolean; locala1 = a(u, v, locala2))
    {
      if (mEnterTransitionCallback != null) {
        mEnterTransitionCallback.a(v, locala1);
      }
      a(paramm, locala1, false);
      return locala1;
    }
    if (mExitTransitionCallback != null) {
      mExitTransitionCallback.a(v, locala1);
    }
    b(paramm, locala1, false);
    return locala1;
  }
  
  private a<String, View> a(m paramm, boolean paramBoolean, Fragment paramFragment)
  {
    a locala = b(paramm, paramFragment, paramBoolean);
    if (paramBoolean)
    {
      if (mExitTransitionCallback != null) {
        mExitTransitionCallback.a(v, locala);
      }
      a(paramm, locala, true);
      return locala;
    }
    if (mEnterTransitionCallback != null) {
      mEnterTransitionCallback.a(v, locala);
    }
    b(paramm, locala, true);
    return locala;
  }
  
  private static a<String, View> a(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, a<String, View> parama)
  {
    if (parama.isEmpty()) {
      return parama;
    }
    a locala = new a();
    int i2 = paramArrayList1.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = (View)parama.get(paramArrayList1.get(i1));
      if (localView != null) {
        locala.put(paramArrayList2.get(i1), localView);
      }
      i1 += 1;
    }
    return locala;
  }
  
  private static Object a(Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean)
  {
    if ((paramFragment1 == null) || (paramFragment2 == null)) {
      return null;
    }
    if (paramBoolean) {}
    for (paramFragment1 = paramFragment2.getSharedElementReturnTransition();; paramFragment1 = paramFragment1.getSharedElementEnterTransition()) {
      return ah.b(paramFragment1);
    }
  }
  
  private static Object a(Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {}
    for (paramFragment = paramFragment.getReenterTransition();; paramFragment = paramFragment.getEnterTransition()) {
      return ah.a(paramFragment);
    }
  }
  
  private static Object a(Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList, a<String, View> parama, View paramView)
  {
    Object localObject = paramObject;
    if (paramObject != null) {
      localObject = ah.a(paramObject, paramFragment.getView(), paramArrayList, parama, paramView);
    }
    return localObject;
  }
  
  private void a(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    mFragmentManager = b;
    if (paramString != null)
    {
      if ((mTag != null) && (!paramString.equals(mTag))) {
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + mTag + " now " + paramString);
      }
      mTag = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((mFragmentId != 0) && (mFragmentId != paramInt1)) {
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + mFragmentId + " now " + paramInt1);
      }
      mFragmentId = paramInt1;
      mContainerId = paramInt1;
    }
    paramString = new l();
    c = paramInt2;
    d = paramFragment;
    a(paramString);
  }
  
  private void a(m paramm, int paramInt, Object paramObject)
  {
    if (b.g != null)
    {
      int i1 = 0;
      if (i1 < b.g.size())
      {
        Fragment localFragment = (Fragment)b.g.get(i1);
        if ((mView != null) && (mContainer != null) && (mContainerId == paramInt))
        {
          if (!mHidden) {
            break label125;
          }
          if (!b.contains(mView))
          {
            ah.a(paramObject, mView, true);
            b.add(mView);
          }
        }
        for (;;)
        {
          i1 += 1;
          break;
          label125:
          ah.a(paramObject, mView, false);
          b.remove(mView);
        }
      }
    }
  }
  
  private void a(m paramm, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean, a<String, View> parama)
  {
    if (paramBoolean) {}
    for (paramm = mEnterTransitionCallback;; paramm = mEnterTransitionCallback)
    {
      if (paramm != null) {
        paramm.b(new ArrayList(parama.keySet()), new ArrayList(parama.values()), null);
      }
      return;
    }
  }
  
  private void a(m paramm, a<String, View> parama, boolean paramBoolean)
  {
    int i1;
    int i2;
    label13:
    String str;
    Object localObject;
    if (v == null)
    {
      i1 = 0;
      i2 = 0;
      if (i2 >= i1) {
        return;
      }
      str = (String)u.get(i2);
      localObject = (View)parama.get((String)v.get(i2));
      if (localObject != null)
      {
        localObject = ah.a((View)localObject);
        if (!paramBoolean) {
          break label103;
        }
        a(a, str, (String)localObject);
      }
    }
    for (;;)
    {
      i2 += 1;
      break label13;
      i1 = v.size();
      break;
      label103:
      a(a, (String)localObject, str);
    }
  }
  
  private void a(final m paramm, final View paramView, final Object paramObject, final Fragment paramFragment1, final Fragment paramFragment2, final boolean paramBoolean, final ArrayList<View> paramArrayList)
  {
    paramView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
    {
      public boolean onPreDraw()
      {
        paramView.getViewTreeObserver().removeOnPreDrawListener(this);
        if (paramObject != null)
        {
          ah.a(paramObject, paramArrayList);
          paramArrayList.clear();
          a locala = k.a(k.this, paramm, paramBoolean, paramFragment1);
          ah.a(paramObject, parammd, locala, paramArrayList);
          k.a(k.this, locala, paramm);
          k.a(k.this, paramm, paramFragment1, paramFragment2, paramBoolean, locala);
        }
        return true;
      }
    });
  }
  
  private static void a(m paramm, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if (paramArrayList1 != null)
    {
      int i1 = 0;
      while (i1 < paramArrayList1.size())
      {
        String str1 = (String)paramArrayList1.get(i1);
        String str2 = (String)paramArrayList2.get(i1);
        a(a, str1, str2);
        i1 += 1;
      }
    }
  }
  
  private void a(a<String, View> parama, m paramm)
  {
    if ((v != null) && (!parama.isEmpty()))
    {
      parama = (View)parama.get(v.get(0));
      if (parama != null) {
        c.a = parama;
      }
    }
  }
  
  private static void a(a<String, String> parama, String paramString1, String paramString2)
  {
    int i1;
    if ((paramString1 != null) && (paramString2 != null)) {
      i1 = 0;
    }
    while (i1 < parama.size())
    {
      if (paramString1.equals(parama.c(i1)))
      {
        parama.a(i1, paramString2);
        return;
      }
      i1 += 1;
    }
    parama.put(paramString1, paramString2);
  }
  
  private static void a(SparseArray<Fragment> paramSparseArray, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i1 = mContainerId;
      if ((i1 != 0) && (!paramFragment.isHidden()) && (paramFragment.isAdded()) && (paramFragment.getView() != null) && (paramSparseArray.get(i1) == null)) {
        paramSparseArray.put(i1, paramFragment);
      }
    }
  }
  
  private void a(final View paramView, final m paramm, final int paramInt, final Object paramObject)
  {
    paramView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
    {
      public boolean onPreDraw()
      {
        paramView.getViewTreeObserver().removeOnPreDrawListener(this);
        k.a(k.this, paramm, paramInt, paramObject);
        return true;
      }
    });
  }
  
  private boolean a(int paramInt, m paramm, boolean paramBoolean, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    ViewGroup localViewGroup = (ViewGroup)b.p.a(paramInt);
    if (localViewGroup == null) {
      return false;
    }
    final Object localObject2 = (Fragment)paramSparseArray2.get(paramInt);
    Object localObject4 = (Fragment)paramSparseArray1.get(paramInt);
    Object localObject3 = a((Fragment)localObject2, paramBoolean);
    paramSparseArray2 = a((Fragment)localObject2, (Fragment)localObject4, paramBoolean);
    Object localObject5 = b((Fragment)localObject4, paramBoolean);
    paramSparseArray1 = null;
    ArrayList localArrayList1 = new ArrayList();
    if (paramSparseArray2 != null)
    {
      localObject1 = a(paramm, (Fragment)localObject4, paramBoolean);
      if (((a)localObject1).isEmpty())
      {
        paramSparseArray1 = null;
        paramSparseArray2 = null;
        if ((localObject3 != null) || (paramSparseArray2 != null) || (localObject5 != null)) {
          break label208;
        }
        return false;
      }
      if (!paramBoolean) {
        break label198;
      }
    }
    label198:
    for (paramSparseArray1 = mEnterTransitionCallback;; paramSparseArray1 = mEnterTransitionCallback)
    {
      if (paramSparseArray1 != null) {
        paramSparseArray1.a(new ArrayList(((a)localObject1).keySet()), new ArrayList(((a)localObject1).values()), null);
      }
      a(paramm, localViewGroup, paramSparseArray2, (Fragment)localObject2, (Fragment)localObject4, paramBoolean, localArrayList1);
      paramSparseArray1 = (SparseArray<Fragment>)localObject1;
      break;
    }
    label208:
    Object localObject1 = new ArrayList();
    localObject4 = a(localObject5, (Fragment)localObject4, (ArrayList)localObject1, paramSparseArray1, d);
    if ((v != null) && (paramSparseArray1 != null))
    {
      localObject5 = (View)paramSparseArray1.get(v.get(0));
      if (localObject5 != null)
      {
        if (localObject4 != null) {
          ah.a(localObject4, (View)localObject5);
        }
        if (paramSparseArray2 != null) {
          ah.a(paramSparseArray2, (View)localObject5);
        }
      }
    }
    localObject5 = new aj()
    {
      public View a()
      {
        return localObject2.getView();
      }
    };
    ArrayList localArrayList2 = new ArrayList();
    a locala = new a();
    boolean bool = true;
    if (localObject2 != null) {
      if (!paramBoolean) {
        break label462;
      }
    }
    label462:
    for (bool = ((Fragment)localObject2).getAllowReturnTransitionOverlap();; bool = ((Fragment)localObject2).getAllowEnterTransitionOverlap())
    {
      localObject2 = ah.a(localObject3, localObject4, paramSparseArray2, bool);
      if (localObject2 != null)
      {
        ah.a(localObject3, paramSparseArray2, localViewGroup, (aj)localObject5, d, c, a, localArrayList2, paramSparseArray1, locala, localArrayList1);
        a(localViewGroup, paramm, paramInt, localObject2);
        ah.a(localObject2, d, true);
        a(paramm, paramInt, localObject2);
        ah.a(localViewGroup, localObject2);
        ah.a(localViewGroup, d, localObject3, localArrayList2, localObject4, (ArrayList)localObject1, paramSparseArray2, localArrayList1, localObject2, b, locala);
      }
      if (localObject2 == null) {
        break;
      }
      return true;
    }
    return false;
  }
  
  private a<String, View> b(m paramm, Fragment paramFragment, boolean paramBoolean)
  {
    a locala = new a();
    paramFragment = paramFragment.getView();
    paramm = locala;
    if (paramFragment != null)
    {
      paramm = locala;
      if (u != null)
      {
        ah.a(locala, paramFragment);
        if (!paramBoolean) {
          break label57;
        }
        paramm = a(u, v, locala);
      }
    }
    return paramm;
    label57:
    locala.a(v);
    return locala;
  }
  
  private static Object b(Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {}
    for (paramFragment = paramFragment.getReturnTransition();; paramFragment = paramFragment.getExitTransition()) {
      return ah.a(paramFragment);
    }
  }
  
  private void b(m paramm, a<String, View> parama, boolean paramBoolean)
  {
    int i2 = parama.size();
    int i1 = 0;
    if (i1 < i2)
    {
      String str1 = (String)parama.b(i1);
      String str2 = ah.a((View)parama.c(i1));
      if (paramBoolean) {
        a(a, str1, str2);
      }
      for (;;)
      {
        i1 += 1;
        break;
        a(a, str2, str1);
      }
    }
  }
  
  private void b(SparseArray<Fragment> paramSparseArray, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i1 = mContainerId;
      if (i1 != 0) {
        paramSparseArray.put(i1, paramFragment);
      }
    }
  }
  
  private void b(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!b.p.a()) {}
    l locall;
    do
    {
      return;
      locall = c;
    } while (locall == null);
    switch (c)
    {
    }
    for (;;)
    {
      locall = a;
      break;
      b(paramSparseArray2, d);
      continue;
      Object localObject1 = d;
      Object localObject2;
      if (b.g != null)
      {
        int i1 = 0;
        localObject2 = localObject1;
        if (i1 < b.g.size())
        {
          Fragment localFragment = (Fragment)b.g.get(i1);
          if (localObject1 != null)
          {
            localObject2 = localObject1;
            if (mContainerId != mContainerId) {}
          }
          else
          {
            if (localFragment != localObject1) {
              break label191;
            }
          }
          for (localObject2 = null;; localObject2 = localObject1)
          {
            i1 += 1;
            localObject1 = localObject2;
            break;
            label191:
            a(paramSparseArray1, localFragment);
          }
        }
      }
      else
      {
        localObject2 = localObject1;
      }
      b(paramSparseArray2, (Fragment)localObject2);
      continue;
      a(paramSparseArray1, d);
      continue;
      a(paramSparseArray1, d);
      continue;
      b(paramSparseArray2, d);
      continue;
      a(paramSparseArray1, d);
      continue;
      b(paramSparseArray2, d);
    }
  }
  
  public int a()
  {
    return a(false);
  }
  
  int a(boolean paramBoolean)
  {
    if (o) {
      throw new IllegalStateException("commit already called");
    }
    if (z.a)
    {
      Log.v("FragmentManager", "Commit: " + this);
      a("  ", null, new PrintWriter(new d("FragmentManager")), null);
    }
    o = true;
    if (l) {}
    for (p = b.a(this);; p = -1)
    {
      b.a(this, paramBoolean);
      return p;
    }
  }
  
  public ag a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, 0, 0);
  }
  
  public ag a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    f = paramInt1;
    g = paramInt2;
    h = paramInt3;
    i = paramInt4;
    return this;
  }
  
  public ag a(int paramInt, Fragment paramFragment)
  {
    a(paramInt, paramFragment, null, 1);
    return this;
  }
  
  public ag a(int paramInt, Fragment paramFragment, String paramString)
  {
    a(paramInt, paramFragment, paramString, 1);
    return this;
  }
  
  public ag a(Fragment paramFragment)
  {
    l locall = new l();
    c = 3;
    d = paramFragment;
    a(locall);
    return this;
  }
  
  public ag a(Fragment paramFragment, String paramString)
  {
    a(0, paramFragment, paramString, 1);
    return this;
  }
  
  public ag a(String paramString)
  {
    if (!m) {
      throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }
    l = true;
    n = paramString;
    return this;
  }
  
  public m a(boolean paramBoolean, m paramm, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (z.a)
    {
      Log.v("FragmentManager", "popFromBackStack: " + this);
      a("  ", null, new PrintWriter(new d("FragmentManager")), null);
    }
    m localm = paramm;
    if (a)
    {
      if (paramm != null) {
        break label223;
      }
      if (paramSparseArray1.size() == 0)
      {
        localm = paramm;
        if (paramSparseArray2.size() == 0) {}
      }
      else
      {
        localm = a(paramSparseArray1, paramSparseArray2, true);
      }
    }
    label100:
    a(-1);
    int i1;
    label113:
    int i2;
    label121:
    int i3;
    if (localm != null)
    {
      i1 = 0;
      if (localm == null) {
        break label257;
      }
      i2 = 0;
      paramm = d;
      if (paramm == null) {
        break label546;
      }
      if (localm == null) {
        break label266;
      }
      i3 = 0;
      label138:
      if (localm == null) {
        break label275;
      }
    }
    label223:
    label257:
    label266:
    label275:
    for (int i4 = 0;; i4 = h) {
      switch (c)
      {
      default: 
        throw new IllegalArgumentException("Unknown cmd: " + c);
        localm = paramm;
        if (paramBoolean) {
          break label100;
        }
        a(paramm, v, u);
        localm = paramm;
        break label100;
        i1 = k;
        break label113;
        i2 = j;
        break label121;
        i3 = g;
        break label138;
      }
    }
    paramSparseArray1 = d;
    mNextAnim = i4;
    b.a(paramSparseArray1, z.d(i2), i1);
    for (;;)
    {
      paramm = b;
      break;
      paramSparseArray1 = d;
      if (paramSparseArray1 != null)
      {
        mNextAnim = i4;
        b.a(paramSparseArray1, z.d(i2), i1);
      }
      if (i != null)
      {
        i4 = 0;
        while (i4 < i.size())
        {
          paramSparseArray1 = (Fragment)i.get(i4);
          mNextAnim = i3;
          b.a(paramSparseArray1, false);
          i4 += 1;
        }
        paramSparseArray1 = d;
        mNextAnim = i3;
        b.a(paramSparseArray1, false);
        continue;
        paramSparseArray1 = d;
        mNextAnim = i3;
        b.c(paramSparseArray1, z.d(i2), i1);
        continue;
        paramSparseArray1 = d;
        mNextAnim = i4;
        b.b(paramSparseArray1, z.d(i2), i1);
        continue;
        paramSparseArray1 = d;
        mNextAnim = i3;
        b.e(paramSparseArray1, z.d(i2), i1);
        continue;
        paramSparseArray1 = d;
        mNextAnim = i3;
        b.d(paramSparseArray1, z.d(i2), i1);
      }
    }
    label546:
    if (paramBoolean)
    {
      b.a(b.n, z.d(i2), i1, true);
      localm = null;
    }
    if (p >= 0)
    {
      b.c(p);
      p = -1;
    }
    return localm;
  }
  
  void a(int paramInt)
  {
    if (!l) {}
    for (;;)
    {
      return;
      if (z.a) {
        Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
      }
      for (l locall = c; locall != null; locall = a)
      {
        Fragment localFragment;
        if (d != null)
        {
          localFragment = d;
          mBackStackNesting += paramInt;
          if (z.a) {
            Log.v("FragmentManager", "Bump nesting of " + d + " to " + d.mBackStackNesting);
          }
        }
        if (i != null)
        {
          int i1 = i.size() - 1;
          while (i1 >= 0)
          {
            localFragment = (Fragment)i.get(i1);
            mBackStackNesting += paramInt;
            if (z.a) {
              Log.v("FragmentManager", "Bump nesting of " + localFragment + " to " + mBackStackNesting);
            }
            i1 -= 1;
          }
        }
      }
    }
  }
  
  void a(l paraml)
  {
    if (c == null)
    {
      d = paraml;
      c = paraml;
    }
    for (;;)
    {
      e = f;
      f = g;
      g = h;
      h = i;
      e += 1;
      return;
      b = d;
      d.a = paraml;
      d = paraml;
    }
  }
  
  public void a(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!b.p.a()) {}
    l locall;
    do
    {
      return;
      locall = c;
    } while (locall == null);
    switch (c)
    {
    }
    for (;;)
    {
      locall = a;
      break;
      a(paramSparseArray1, d);
      continue;
      if (i != null)
      {
        int i1 = i.size() - 1;
        while (i1 >= 0)
        {
          b(paramSparseArray2, (Fragment)i.get(i1));
          i1 -= 1;
        }
      }
      a(paramSparseArray1, d);
      continue;
      b(paramSparseArray2, d);
      continue;
      b(paramSparseArray2, d);
      continue;
      a(paramSparseArray1, d);
      continue;
      b(paramSparseArray2, d);
      continue;
      a(paramSparseArray1, d);
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a(paramString, paramPrintWriter, true);
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(n);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(p);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(o);
      if (j != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(j));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(k));
      }
      if ((f != 0) || (g != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(f));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(g));
      }
      if ((h != 0) || (i != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(h));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(i));
      }
      if ((q != 0) || (r != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(q));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(r);
      }
      if ((s != 0) || (t != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(s));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(t);
      }
    }
    if (c != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str2 = paramString + "    ";
      l locall = c;
      int i1 = 0;
      while (locall != null)
      {
        String str1;
        int i2;
        switch (c)
        {
        default: 
          str1 = "cmd=" + c;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str1);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(d);
          if (paramBoolean)
          {
            if ((e != 0) || (f != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(e));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(f));
            }
            if ((g != 0) || (h != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(g));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(h));
            }
          }
          if ((i == null) || (i.size() <= 0)) {
            break label807;
          }
          i2 = 0;
          label641:
          if (i2 >= i.size()) {
            break label807;
          }
          paramPrintWriter.print(str2);
          if (i.size() == 1) {
            paramPrintWriter.print("Removed: ");
          }
          break;
        }
        for (;;)
        {
          paramPrintWriter.println(i.get(i2));
          i2 += 1;
          break label641;
          str1 = "NULL";
          break;
          str1 = "ADD";
          break;
          str1 = "REPLACE";
          break;
          str1 = "REMOVE";
          break;
          str1 = "HIDE";
          break;
          str1 = "SHOW";
          break;
          str1 = "DETACH";
          break;
          str1 = "ATTACH";
          break;
          if (i2 == 0) {
            paramPrintWriter.println("Removed:");
          }
          paramPrintWriter.print(str2);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i2);
          paramPrintWriter.print(": ");
        }
        label807:
        locall = a;
        i1 += 1;
      }
    }
  }
  
  public int b()
  {
    return a(true);
  }
  
  public ag b(int paramInt, Fragment paramFragment)
  {
    return b(paramInt, paramFragment, null);
  }
  
  public ag b(int paramInt, Fragment paramFragment, String paramString)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Must use non-zero containerViewId");
    }
    a(paramInt, paramFragment, paramString, 2);
    return this;
  }
  
  public ag b(Fragment paramFragment)
  {
    l locall = new l();
    c = 6;
    d = paramFragment;
    a(locall);
    return this;
  }
  
  public ag c(Fragment paramFragment)
  {
    l locall = new l();
    c = 7;
    d = paramFragment;
    a(locall);
    return this;
  }
  
  public String c()
  {
    return n;
  }
  
  public void run()
  {
    if (z.a) {
      Log.v("FragmentManager", "Run: " + this);
    }
    if ((l) && (p < 0)) {
      throw new IllegalStateException("addToBackStack() called after commit()");
    }
    a(1);
    Object localObject1;
    if (a)
    {
      localObject1 = new SparseArray();
      localObject2 = new SparseArray();
      b((SparseArray)localObject1, (SparseArray)localObject2);
    }
    for (Object localObject2 = a((SparseArray)localObject1, (SparseArray)localObject2, false);; localObject2 = null)
    {
      int i1;
      label113:
      int i2;
      label120:
      l locall;
      int i3;
      if (localObject2 != null)
      {
        i1 = 0;
        if (localObject2 == null) {
          break label232;
        }
        i2 = 0;
        locall = c;
        if (locall == null) {
          break label732;
        }
        if (localObject2 == null) {
          break label240;
        }
        i3 = 0;
        label138:
        if (localObject2 == null) {
          break label249;
        }
      }
      label232:
      label240:
      label249:
      for (int i4 = 0;; i4 = f) {
        switch (c)
        {
        default: 
          throw new IllegalArgumentException("Unknown cmd: " + c);
          i1 = k;
          break label113;
          i2 = j;
          break label120;
          i3 = e;
          break label138;
        }
      }
      localObject1 = d;
      mNextAnim = i3;
      b.a((Fragment)localObject1, false);
      for (;;)
      {
        locall = a;
        break;
        localObject1 = d;
        int i6 = mContainerId;
        Object localObject3;
        if (b.g != null)
        {
          int i5 = 0;
          localObject3 = localObject1;
          if (i5 < b.g.size())
          {
            Fragment localFragment = (Fragment)b.g.get(i5);
            if (z.a) {
              Log.v("FragmentManager", "OP_REPLACE: adding=" + localObject1 + " old=" + localFragment);
            }
            localObject3 = localObject1;
            if (mContainerId == i6)
            {
              if (localFragment != localObject1) {
                break label443;
              }
              localObject3 = null;
              d = null;
            }
            for (;;)
            {
              i5 += 1;
              localObject1 = localObject3;
              break;
              label443:
              if (i == null) {
                i = new ArrayList();
              }
              i.add(localFragment);
              mNextAnim = i4;
              if (l)
              {
                mBackStackNesting += 1;
                if (z.a) {
                  Log.v("FragmentManager", "Bump nesting of " + localFragment + " to " + mBackStackNesting);
                }
              }
              b.a(localFragment, i2, i1);
              localObject3 = localObject1;
            }
          }
        }
        else
        {
          localObject3 = localObject1;
        }
        if (localObject3 != null)
        {
          mNextAnim = i3;
          b.a((Fragment)localObject3, false);
          continue;
          localObject1 = d;
          mNextAnim = i4;
          b.a((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = d;
          mNextAnim = i4;
          b.b((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = d;
          mNextAnim = i3;
          b.c((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = d;
          mNextAnim = i4;
          b.d((Fragment)localObject1, i2, i1);
          continue;
          localObject1 = d;
          mNextAnim = i3;
          b.e((Fragment)localObject1, i2, i1);
        }
      }
      label732:
      b.a(b.n, i2, i1, true);
      if (l) {
        b.b(this);
      }
      return;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (p >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(p);
    }
    if (n != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(n);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */