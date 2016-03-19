package com.facebook.internal;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.facebook.h;
import java.util.Iterator;
import java.util.List;

public abstract class o<CONTENT, RESULT>
{
  protected static final Object a = new Object();
  private final Activity b;
  private final Fragment c;
  private List<o<CONTENT, RESULT>.p> d;
  private int e;
  
  protected o(Activity paramActivity, int paramInt)
  {
    ap.a(paramActivity, "activity");
    b = paramActivity;
    c = null;
    e = paramInt;
  }
  
  protected o(Fragment paramFragment, int paramInt)
  {
    ap.a(paramFragment, "fragment");
    c = paramFragment;
    b = null;
    e = paramInt;
    if (paramFragment.getActivity() == null) {
      throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
    }
  }
  
  private a b(CONTENT paramCONTENT, Object paramObject)
  {
    int i;
    p localp;
    if (paramObject == a)
    {
      i = 1;
      Iterator localIterator = d().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localp = (p)localIterator.next();
      } while (((i == 0) && (!al.a(localp.a(), paramObject))) || (!localp.a(paramCONTENT)));
    }
    for (;;)
    {
      try
      {
        paramCONTENT = localp.b(paramCONTENT);
        paramObject = paramCONTENT;
        if (paramCONTENT == null)
        {
          paramObject = c();
          m.a((a)paramObject);
        }
        return (a)paramObject;
        i = 0;
      }
      catch (h paramObject)
      {
        paramCONTENT = c();
        m.a(paramCONTENT, (h)paramObject);
        continue;
      }
      paramCONTENT = null;
    }
  }
  
  private List<o<CONTENT, RESULT>.p> d()
  {
    if (d == null) {
      d = b();
    }
    return d;
  }
  
  public int a()
  {
    return e;
  }
  
  public void a(CONTENT paramCONTENT)
  {
    a(paramCONTENT, a);
  }
  
  protected void a(CONTENT paramCONTENT, Object paramObject)
  {
    paramCONTENT = b(paramCONTENT, paramObject);
    if (paramCONTENT != null) {
      if (c != null) {
        m.a(paramCONTENT, c);
      }
    }
    do
    {
      return;
      m.a(paramCONTENT, b);
      return;
      Log.e("FacebookDialog", "No code path should ever result in a null appCall");
    } while (!com.facebook.m.b());
    throw new IllegalStateException("No code path should ever result in a null appCall");
  }
  
  protected abstract List<o<CONTENT, RESULT>.p> b();
  
  protected abstract a c();
}

/* Location:
 * Qualified Name:     com.facebook.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */