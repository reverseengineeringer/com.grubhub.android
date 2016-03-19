package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.order.cart.n;

public class GHSTipModel
{
  private boolean isCash;
  private n selectedTip;
  private float tipAmount;
  
  public boolean getIsCash()
  {
    return isCash;
  }
  
  public n getSelectedTip()
  {
    return selectedTip;
  }
  
  public float getTipAmount()
  {
    return tipAmount;
  }
  
  public void setIsCash(Boolean paramBoolean)
  {
    isCash = paramBoolean.booleanValue();
  }
  
  public void setSelectedTip(n paramn)
  {
    selectedTip = paramn;
  }
  
  public void setTipAmount(float paramFloat)
  {
    tipAmount = paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSTipModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */