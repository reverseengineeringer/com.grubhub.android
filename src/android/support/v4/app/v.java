package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.v4.e.l;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class v<E>
  extends t
{
  private final Activity a;
  final Context b;
  final int c;
  final z d = new z();
  private final Handler e;
  private l<String, an> f;
  private ap g;
  private boolean h;
  private boolean i;
  
  v(Activity paramActivity, Context paramContext, Handler paramHandler, int paramInt)
  {
    a = paramActivity;
    b = paramContext;
    e = paramHandler;
    c = paramInt;
  }
  
  v(q paramq)
  {
    this(paramq, paramq, mHandler, 0);
  }
  
  ap a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f == null) {
      f = new l();
    }
    ap localap = (ap)f.get(paramString);
    if (localap == null)
    {
      if (paramBoolean2)
      {
        localap = new ap(paramString, this, paramBoolean1);
        f.put(paramString, localap);
      }
      return localap;
    }
    localap.a(this);
    return localap;
  }
  
  public View a(int paramInt)
  {
    return null;
  }
  
  public void a(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt != -1) {
      throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }
    b.startActivity(paramIntent);
  }
  
  public void a(Fragment paramFragment, String[] paramArrayOfString, int paramInt) {}
  
  void a(l<String, an> paraml)
  {
    f = paraml;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  void a(boolean paramBoolean)
  {
    if (g == null) {}
    while (!i) {
      return;
    }
    i = false;
    if (paramBoolean)
    {
      g.d();
      return;
    }
    g.c();
  }
  
  public boolean a()
  {
    return true;
  }
  
  public boolean a(Fragment paramFragment)
  {
    return true;
  }
  
  public boolean a(String paramString)
  {
    return false;
  }
  
  public LayoutInflater b()
  {
    return (LayoutInflater)b.getSystemService("layout_inflater");
  }
  
  void b(Fragment paramFragment) {}
  
  void b(String paramString)
  {
    if (f != null)
    {
      ap localap = (ap)f.get(paramString);
      if ((localap != null) && (!f))
      {
        localap.h();
        f.remove(paramString);
      }
    }
  }
  
  void b(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(i);
    if (g != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(g)));
      paramPrintWriter.println(":");
      g.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public void d() {}
  
  public boolean e()
  {
    return true;
  }
  
  public int f()
  {
    return c;
  }
  
  public abstract E g();
  
  Activity h()
  {
    return a;
  }
  
  Context i()
  {
    return b;
  }
  
  Handler j()
  {
    return e;
  }
  
  z k()
  {
    return d;
  }
  
  ap l()
  {
    if (g != null) {
      return g;
    }
    h = true;
    g = a("(root)", i, true);
    return g;
  }
  
  void m()
  {
    if (i) {
      return;
    }
    i = true;
    if (g != null) {
      g.b();
    }
    for (;;)
    {
      h = true;
      return;
      if (!h)
      {
        g = a("(root)", i, false);
        if ((g != null) && (!g.e)) {
          g.b();
        }
      }
    }
  }
  
  void n()
  {
    if (g == null) {
      return;
    }
    g.h();
  }
  
  void o()
  {
    if (f != null)
    {
      int k = f.size();
      ap[] arrayOfap = new ap[k];
      int j = k - 1;
      while (j >= 0)
      {
        arrayOfap[j] = ((ap)f.c(j));
        j -= 1;
      }
      j = 0;
      while (j < k)
      {
        ap localap = arrayOfap[j];
        localap.e();
        localap.g();
        j += 1;
      }
    }
  }
  
  l<String, an> p()
  {
    int k = 0;
    int m;
    if (f != null)
    {
      int n = f.size();
      ap[] arrayOfap = new ap[n];
      int j = n - 1;
      while (j >= 0)
      {
        arrayOfap[j] = ((ap)f.c(j));
        j -= 1;
      }
      j = 0;
      m = j;
      if (k < n)
      {
        ap localap = arrayOfap[k];
        if (f) {
          j = 1;
        }
        for (;;)
        {
          k += 1;
          break;
          localap.h();
          f.remove(d);
        }
      }
    }
    else
    {
      m = 0;
    }
    if (m != 0) {
      return f;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */