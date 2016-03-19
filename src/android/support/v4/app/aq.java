package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.l;
import android.support.v4.content.n;
import android.support.v4.e.c;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class aq
  implements android.support.v4.content.m<Object>, n<Object>
{
  final int a;
  final Bundle b;
  ao<Object> c;
  l<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  aq n;
  
  public aq(int paramInt, Bundle paramBundle, ao<Object> paramao)
  {
    a = paramBundle;
    b = paramao;
    ao localao;
    c = localao;
  }
  
  void a()
  {
    if ((i) && (j)) {
      h = true;
    }
    do
    {
      do
      {
        return;
      } while (h);
      h = true;
      if (ap.a) {
        Log.v("LoaderManager", "  Starting: " + this);
      }
      if ((d == null) && (c != null)) {
        d = c.a(a, b);
      }
    } while (d == null);
    if ((d.getClass().isMemberClass()) && (!Modifier.isStatic(d.getClass().getModifiers()))) {
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + d);
    }
    if (!m)
    {
      d.a(a, this);
      d.a(this);
      m = true;
    }
    d.d();
  }
  
  public void a(l<Object> paraml)
  {
    if (ap.a) {
      Log.v("LoaderManager", "onLoadCanceled: " + this);
    }
    if (l) {
      if (ap.a) {
        Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (o.b.a(a) == this) {
          break;
        }
      } while (!ap.a);
      Log.v("LoaderManager", "  Ignoring load canceled -- not active");
      return;
      paraml = n;
    } while (paraml == null);
    if (ap.a) {
      Log.v("LoaderManager", "  Switching to pending loader: " + paraml);
    }
    n = null;
    o.b.b(a, null);
    g();
    o.a(paraml);
  }
  
  public void a(l<Object> paraml, Object paramObject)
  {
    if (ap.a) {
      Log.v("LoaderManager", "onLoadComplete: " + this);
    }
    if (l) {
      if (ap.a) {
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (o.b.a(a) == this) {
          break;
        }
      } while (!ap.a);
      Log.v("LoaderManager", "  Ignoring load complete -- not active");
      return;
      aq localaq = n;
      if (localaq != null)
      {
        if (ap.a) {
          Log.v("LoaderManager", "  Switching to pending loader: " + localaq);
        }
        n = null;
        o.b.b(a, null);
        g();
        o.a(localaq);
        return;
      }
      if ((g != paramObject) || (!e))
      {
        g = paramObject;
        e = true;
        if (h) {
          b(paraml, paramObject);
        }
      }
      paraml = (aq)o.c.a(a);
      if ((paraml != null) && (paraml != this))
      {
        f = false;
        paraml.g();
        o.c.c(a);
      }
    } while ((ap.a(o) == null) || (o.a()));
    ao).d.g();
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(a);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(b);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(c);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(d);
    if (d != null) {
      d.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if ((e) || (f))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(e);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(f);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(g);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(h);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(k);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(i);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(j);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(m);
    if (n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(n);
      paramPrintWriter.println(":");
      n.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  void b()
  {
    if (ap.a) {
      Log.v("LoaderManager", "  Retaining: " + this);
    }
    i = true;
    j = h;
    h = false;
    c = null;
  }
  
  void b(l<Object> paraml, Object paramObject)
  {
    String str;
    if (c != null)
    {
      if (ap.a(o) == null) {
        break label161;
      }
      str = ao).d.u;
      ao).d.u = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (ap.a) {
          Log.v("LoaderManager", "  onLoadFinished in " + paraml + ": " + paraml.b(paramObject));
        }
        c.a(paraml, paramObject);
        if (ap.a(o) != null) {
          ao).d.u = str;
        }
        f = true;
        return;
      }
      finally
      {
        if (ap.a(o) != null) {
          ao).d.u = str;
        }
      }
      label161:
      str = null;
    }
  }
  
  void c()
  {
    if (i)
    {
      if (ap.a) {
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      }
      i = false;
      if ((h != j) && (!h)) {
        e();
      }
    }
    if ((h) && (e) && (!k)) {
      b(d, g);
    }
  }
  
  void d()
  {
    if ((h) && (k))
    {
      k = false;
      if (e) {
        b(d, g);
      }
    }
  }
  
  void e()
  {
    if (ap.a) {
      Log.v("LoaderManager", "  Stopping: " + this);
    }
    h = false;
    if ((!i) && (d != null) && (m))
    {
      m = false;
      d.a(this);
      d.b(this);
      d.h();
    }
  }
  
  void f()
  {
    if (ap.a) {
      Log.v("LoaderManager", "  Canceling: " + this);
    }
    if ((h) && (d != null) && (m) && (!d.f())) {
      a(d);
    }
  }
  
  void g()
  {
    if (ap.a) {
      Log.v("LoaderManager", "  Destroying: " + this);
    }
    l = true;
    boolean bool = f;
    f = false;
    String str;
    if ((c != null) && (d != null) && (e) && (bool))
    {
      if (ap.a) {
        Log.v("LoaderManager", "  Reseting: " + this);
      }
      if (ap.a(o) == null) {
        break label280;
      }
      str = ao).d.u;
      ao).d.u = "onLoaderReset";
    }
    for (;;)
    {
      try
      {
        c.a(d);
        if (ap.a(o) != null) {
          ao).d.u = str;
        }
        c = null;
        g = null;
        e = false;
        if (d != null)
        {
          if (m)
          {
            m = false;
            d.a(this);
            d.b(this);
          }
          d.l();
        }
        if (n != null) {
          n.g();
        }
        return;
      }
      finally
      {
        if (ap.a(o) != null) {
          ao).d.u = str;
        }
      }
      label280:
      str = null;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(a);
    localStringBuilder.append(" : ");
    c.a(d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */