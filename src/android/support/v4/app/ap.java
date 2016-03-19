package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.l;
import android.support.v4.e.c;
import android.support.v4.e.m;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class ap
  extends an
{
  static boolean a = false;
  final m<aq> b = new m();
  final m<aq> c = new m();
  final String d;
  boolean e;
  boolean f;
  boolean g;
  private v h;
  
  ap(String paramString, v paramv, boolean paramBoolean)
  {
    d = paramString;
    h = paramv;
    e = paramBoolean;
  }
  
  private aq c(int paramInt, Bundle paramBundle, ao<Object> paramao)
  {
    aq localaq = new aq(this, paramInt, paramBundle, paramao);
    d = paramao.a(paramInt, paramBundle);
    return localaq;
  }
  
  private aq d(int paramInt, Bundle paramBundle, ao<Object> paramao)
  {
    try
    {
      g = true;
      paramBundle = c(paramInt, paramBundle, paramao);
      a(paramBundle);
      return paramBundle;
    }
    finally
    {
      g = false;
    }
  }
  
  public <D> l<D> a(int paramInt, Bundle paramBundle, ao<D> paramao)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    aq localaq = (aq)b.a(paramInt);
    if (a) {
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle);
    }
    if (localaq == null)
    {
      paramao = d(paramInt, paramBundle, paramao);
      paramBundle = paramao;
      if (a) {
        Log.v("LoaderManager", "  Created new loader " + paramao);
      }
    }
    for (paramBundle = paramao;; paramBundle = localaq)
    {
      if ((e) && (e)) {
        paramBundle.b(d, g);
      }
      return d;
      if (a) {
        Log.v("LoaderManager", "  Re-using existing loader " + localaq);
      }
      c = paramao;
    }
  }
  
  public void a(int paramInt)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    if (a) {
      Log.v("LoaderManager", "destroyLoader in " + this + " of " + paramInt);
    }
    int i = b.g(paramInt);
    aq localaq;
    if (i >= 0)
    {
      localaq = (aq)b.f(i);
      b.d(i);
      localaq.g();
    }
    paramInt = c.g(paramInt);
    if (paramInt >= 0)
    {
      localaq = (aq)c.f(paramInt);
      c.d(paramInt);
      localaq.g();
    }
    if ((h != null) && (!a())) {
      h.d.g();
    }
  }
  
  void a(aq paramaq)
  {
    b.b(a, paramaq);
    if (e) {
      paramaq.a();
    }
  }
  
  void a(v paramv)
  {
    h = paramv;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    aq localaq;
    if (b.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < b.b())
      {
        localaq = (aq)b.f(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(b.e(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localaq.toString());
        localaq.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (c.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < c.b())
      {
        localaq = (aq)c.f(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(c.e(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localaq.toString());
        localaq.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  public boolean a()
  {
    int j = b.b();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      aq localaq = (aq)b.f(i);
      if ((h) && (!f)) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        bool2 |= bool1;
        i += 1;
        break;
      }
    }
    return bool2;
  }
  
  public <D> l<D> b(int paramInt)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    aq localaq = (aq)b.a(paramInt);
    if (localaq != null)
    {
      if (n != null) {
        return n.d;
      }
      return d;
    }
    return null;
  }
  
  public <D> l<D> b(int paramInt, Bundle paramBundle, ao<D> paramao)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    aq localaq1 = (aq)b.a(paramInt);
    if (a) {
      Log.v("LoaderManager", "restartLoader in " + this + ": args=" + paramBundle);
    }
    if (localaq1 != null)
    {
      aq localaq2 = (aq)c.a(paramInt);
      if (localaq2 == null) {
        break label323;
      }
      if (!e) {
        break label173;
      }
      if (a) {
        Log.v("LoaderManager", "  Removing last inactive loader: " + localaq1);
      }
      f = false;
      localaq2.g();
      d.j();
      c.b(paramInt, localaq1);
    }
    for (;;)
    {
      return dd;
      label173:
      if (!h)
      {
        if (a) {
          Log.v("LoaderManager", "  Current loader is stopped; replacing");
        }
        b.b(paramInt, null);
        localaq1.g();
      }
      else
      {
        if (a) {
          Log.v("LoaderManager", "  Current loader is running; attempting to cancel");
        }
        localaq1.f();
        if (n != null)
        {
          if (a) {
            Log.v("LoaderManager", "  Removing pending loader: " + n);
          }
          n.g();
          n = null;
        }
        if (a) {
          Log.v("LoaderManager", "  Enqueuing as new pending loader");
        }
        n = c(paramInt, paramBundle, paramao);
        return n.d;
        label323:
        if (a) {
          Log.v("LoaderManager", "  Making last loader inactive: " + localaq1);
        }
        d.j();
        c.b(paramInt, localaq1);
      }
    }
  }
  
  void b()
  {
    if (a) {
      Log.v("LoaderManager", "Starting in " + this);
    }
    if (e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      e = true;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((aq)b.f(i)).a();
        i -= 1;
      }
    }
  }
  
  void c()
  {
    if (a) {
      Log.v("LoaderManager", "Stopping in " + this);
    }
    if (!e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = b.b() - 1;
    while (i >= 0)
    {
      ((aq)b.f(i)).e();
      i -= 1;
    }
    e = false;
  }
  
  void d()
  {
    if (a) {
      Log.v("LoaderManager", "Retaining in " + this);
    }
    if (!e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      f = true;
      e = false;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((aq)b.f(i)).b();
        i -= 1;
      }
    }
  }
  
  void e()
  {
    if (f)
    {
      if (a) {
        Log.v("LoaderManager", "Finished Retaining in " + this);
      }
      f = false;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((aq)b.f(i)).c();
        i -= 1;
      }
    }
  }
  
  void f()
  {
    int i = b.b() - 1;
    while (i >= 0)
    {
      b.f(i)).k = true;
      i -= 1;
    }
  }
  
  void g()
  {
    int i = b.b() - 1;
    while (i >= 0)
    {
      ((aq)b.f(i)).d();
      i -= 1;
    }
  }
  
  void h()
  {
    if (!f)
    {
      if (a) {
        Log.v("LoaderManager", "Destroying Active in " + this);
      }
      i = b.b() - 1;
      while (i >= 0)
      {
        ((aq)b.f(i)).g();
        i -= 1;
      }
      b.c();
    }
    if (a) {
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    }
    int i = c.b() - 1;
    while (i >= 0)
    {
      ((aq)c.f(i)).g();
      i -= 1;
    }
    c.c();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    c.a(h, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */