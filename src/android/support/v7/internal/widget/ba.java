package android.support.v7.internal.widget;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;

class ba
  extends af
{
  private final av a;
  
  public ba(Resources paramResources, av paramav)
  {
    super(paramResources);
    a = paramav;
  }
  
  public Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    if (localDrawable != null) {
      a.a(paramInt, localDrawable);
    }
    return localDrawable;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */