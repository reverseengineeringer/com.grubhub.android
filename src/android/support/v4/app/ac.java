package android.support.v4.app;

import android.os.Parcelable;
import android.support.v4.view.bi;
import android.view.View;
import android.view.ViewGroup;

public abstract class ac
  extends bi
{
  private final w a;
  private ag b = null;
  private Fragment c = null;
  
  public ac(w paramw)
  {
    a = paramw;
  }
  
  private static String a(int paramInt, long paramLong)
  {
    return "android:switcher:" + paramInt + ":" + paramLong;
  }
  
  public Parcelable a()
  {
    return null;
  }
  
  public abstract Fragment a(int paramInt);
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (b == null) {
      b = a.a();
    }
    long l = b(paramInt);
    Object localObject = a(paramViewGroup.getId(), l);
    localObject = a.a((String)localObject);
    if (localObject != null) {
      b.c((Fragment)localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (ViewGroup)localObject)
    {
      if (paramViewGroup != c)
      {
        paramViewGroup.setMenuVisibility(false);
        paramViewGroup.setUserVisibleHint(false);
      }
      return paramViewGroup;
      localObject = a(paramInt);
      b.a(paramViewGroup.getId(), (Fragment)localObject, a(paramViewGroup.getId(), l));
    }
  }
  
  public void a(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public void a(ViewGroup paramViewGroup) {}
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (b == null) {
      b = a.a();
    }
    b.b((Fragment)paramObject);
  }
  
  public boolean a(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }
  
  public long b(int paramInt)
  {
    return paramInt;
  }
  
  public void b(ViewGroup paramViewGroup)
  {
    if (b != null)
    {
      b.b();
      b = null;
      a.b();
    }
  }
  
  public void b(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup = (Fragment)paramObject;
    if (paramViewGroup != c)
    {
      if (c != null)
      {
        c.setMenuVisibility(false);
        c.setUserVisibleHint(false);
      }
      if (paramViewGroup != null)
      {
        paramViewGroup.setMenuVisibility(true);
        paramViewGroup.setUserVisibleHint(true);
      }
      c = paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */