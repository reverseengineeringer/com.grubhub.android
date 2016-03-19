package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.v7.b.b;
import android.view.KeyEvent;

public abstract class a
{
  public abstract int a();
  
  public android.support.v7.b.a a(b paramb)
  {
    return null;
  }
  
  public void a(float paramFloat)
  {
    if (paramFloat != 0.0F) {
      throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
    }
  }
  
  public void a(int paramInt) {}
  
  public void a(Configuration paramConfiguration) {}
  
  public void a(Drawable paramDrawable) {}
  
  public void a(CharSequence paramCharSequence) {}
  
  public void a(boolean paramBoolean) {}
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public Context b()
  {
    return null;
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {
      throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
    }
  }
  
  public void c(boolean paramBoolean) {}
  
  public boolean c()
  {
    return false;
  }
  
  public void d(boolean paramBoolean) {}
  
  public boolean d()
  {
    return false;
  }
  
  public void e(boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     android.support.v7.app.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */