package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<af> a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private w d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private af g;
  private boolean h;
  
  public FragmentTabHost(Context paramContext)
  {
    super(paramContext, null);
    a(paramContext, null);
  }
  
  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private ag a(String paramString, ag paramag)
  {
    Object localObject = null;
    int i = 0;
    if (i < a.size())
    {
      af localaf = (af)a.get(i);
      if (!af.b(localaf).equals(paramString)) {
        break label217;
      }
      localObject = localaf;
    }
    label204:
    label217:
    for (;;)
    {
      i += 1;
      break;
      if (localObject == null) {
        throw new IllegalStateException("No tab known for tag " + paramString);
      }
      paramString = paramag;
      if (g != localObject)
      {
        paramString = paramag;
        if (paramag == null) {
          paramString = d.a();
        }
        if ((g != null) && (af.a(g) != null)) {
          paramString.b(af.a(g));
        }
        if (localObject != null)
        {
          if (af.a((af)localObject) != null) {
            break label204;
          }
          af.a((af)localObject, Fragment.instantiate(c, af.c((af)localObject).getName(), af.d((af)localObject)));
          paramString.a(e, af.a((af)localObject), af.b((af)localObject));
        }
      }
      for (;;)
      {
        g = ((af)localObject);
        return paramString;
        paramString.c(af.a((af)localObject));
      }
    }
  }
  
  private void a()
  {
    if (b == null)
    {
      b = ((FrameLayout)findViewById(e));
      if (b == null) {
        throw new IllegalStateException("No tab content FrameLayout found for id " + e);
      }
    }
  }
  
  private void a(Context paramContext)
  {
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      Object localObject = new TabWidget(paramContext);
      ((TabWidget)localObject).setId(16908307);
      ((TabWidget)localObject).setOrientation(0);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      localObject = new FrameLayout(paramContext);
      ((FrameLayout)localObject).setId(16908305);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(0, 0, 0.0F));
      paramContext = new FrameLayout(paramContext);
      b = paramContext;
      b.setId(e);
      localLinearLayout.addView(paramContext, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    e = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    super.setOnTabChangedListener(this);
  }
  
  public void a(Context paramContext, w paramw, int paramInt)
  {
    a(paramContext);
    super.setup();
    c = paramContext;
    d = paramw;
    e = paramInt;
    a();
    b.setId(paramInt);
    if (getId() == -1) {
      setId(16908306);
    }
  }
  
  public void a(TabHost.TabSpec paramTabSpec, Class<?> paramClass, Bundle paramBundle)
  {
    paramTabSpec.setContent(new ae(c));
    String str = paramTabSpec.getTag();
    paramClass = new af(str, paramClass, paramBundle);
    if (h)
    {
      af.a(paramClass, d.a(str));
      if ((af.a(paramClass) != null) && (!af.a(paramClass).isDetached()))
      {
        paramBundle = d.a();
        paramBundle.b(af.a(paramClass));
        paramBundle.a();
      }
    }
    a.add(paramClass);
    addTab(paramTabSpec);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    Object localObject1 = null;
    int i = 0;
    if (i < a.size())
    {
      af localaf = (af)a.get(i);
      af.a(localaf, d.a(af.b(localaf)));
      Object localObject2 = localObject1;
      if (af.a(localaf) != null)
      {
        localObject2 = localObject1;
        if (!af.a(localaf).isDetached())
        {
          if (!af.b(localaf).equals(str)) {
            break label109;
          }
          g = localaf;
          localObject2 = localObject1;
        }
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label109:
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = d.a();
        }
        ((ag)localObject2).b(af.a(localaf));
      }
    }
    h = true;
    localObject1 = a(str, (ag)localObject1);
    if (localObject1 != null)
    {
      ((ag)localObject1).a();
      d.b();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    h = false;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (FragmentTabHost.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setCurrentTabByTag(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    FragmentTabHost.SavedState localSavedState = new FragmentTabHost.SavedState(super.onSaveInstanceState());
    a = getCurrentTabTag();
    return localSavedState;
  }
  
  public void onTabChanged(String paramString)
  {
    if (h)
    {
      ag localag = a(paramString, null);
      if (localag != null) {
        localag.a();
      }
    }
    if (f != null) {
      f.onTabChanged(paramString);
    }
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    f = paramOnTabChangeListener;
  }
  
  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentTabHost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */