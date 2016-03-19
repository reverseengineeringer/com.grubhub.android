package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.bc;

class f
  implements o
{
  private f(e parame) {}
  
  public Drawable a()
  {
    bc localbc = bc.a(b(), null, new int[] { a.j() });
    Drawable localDrawable = localbc.a(0);
    localbc.b();
    return localDrawable;
  }
  
  public void a(int paramInt)
  {
    a locala = a.b();
    if (locala != null) {
      locala.a(paramInt);
    }
  }
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    a locala = a.b();
    if (locala != null)
    {
      locala.a(paramDrawable);
      locala.a(paramInt);
    }
  }
  
  public Context b()
  {
    return a.l();
  }
  
  public boolean c()
  {
    a locala = a.b();
    return (locala != null) && ((locala.a() & 0x4) != 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */