package com.facebook.share.internal;

import android.content.res.Resources;
import com.facebook.aj;
import com.facebook.am;
import com.facebook.an;
import com.facebook.f;

public class s
  extends f
{
  private void a()
  {
    if (isSelected())
    {
      setCompoundDrawablesWithIntrinsicBounds(aj.com_facebook_button_like_icon_selected, 0, 0, 0);
      setText(getResources().getString(am.com_facebook_like_button_liked));
      return;
    }
    setCompoundDrawablesWithIntrinsicBounds(aj.com_facebook_button_icon, 0, 0, 0);
    setText(getResources().getString(am.com_facebook_like_button_not_liked));
  }
  
  protected int getDefaultRequestCode()
  {
    return 0;
  }
  
  protected int getDefaultStyleResource()
  {
    return an.com_facebook_button_like;
  }
  
  public void setSelected(boolean paramBoolean)
  {
    super.setSelected(paramBoolean);
    a();
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */