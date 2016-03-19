package android.support.v4.content;

import android.content.Context;
import android.support.v4.e.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class l<D>
{
  int a;
  n<D> b;
  m<D> c;
  Context d;
  boolean e = false;
  boolean f = false;
  boolean g = true;
  boolean h = false;
  boolean i = false;
  
  public l(Context paramContext)
  {
    d = paramContext.getApplicationContext();
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt, n<D> paramn)
  {
    if (b != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    b = paramn;
    a = paramInt;
  }
  
  public void a(m<D> paramm)
  {
    if (c != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    c = paramm;
  }
  
  public void a(n<D> paramn)
  {
    if (b == null) {
      throw new IllegalStateException("No listener register");
    }
    if (b != paramn) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    b = null;
  }
  
  public void a(D paramD)
  {
    if (b != null) {
      b.a(this, paramD);
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(a);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(b);
    if ((e) || (h) || (i))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(e);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(h);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(i);
    }
    if ((f) || (g))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(f);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(g);
    }
  }
  
  public String b(D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    c.a(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void b(m<D> paramm)
  {
    if (c == null) {
      throw new IllegalStateException("No listener register");
    }
    if (c != paramm) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    c = null;
  }
  
  public boolean b()
  {
    return e;
  }
  
  public boolean c()
  {
    return f;
  }
  
  public final void d()
  {
    e = true;
    g = false;
    f = false;
    e();
  }
  
  protected void e() {}
  
  public boolean f()
  {
    return g();
  }
  
  protected boolean g()
  {
    return false;
  }
  
  public void h()
  {
    e = false;
    i();
  }
  
  protected void i() {}
  
  public void j()
  {
    f = true;
    k();
  }
  
  protected void k() {}
  
  public void l()
  {
    m();
    g = true;
    e = false;
    f = false;
    h = false;
    i = false;
  }
  
  protected void m() {}
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    c.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */