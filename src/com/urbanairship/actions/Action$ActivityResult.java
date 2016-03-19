package com.urbanairship.actions;

import android.content.Intent;

public class Action$ActivityResult
{
  private Intent intent;
  private int resultCode = 0;
  
  private void setResult(int paramInt, Intent paramIntent)
  {
    resultCode = paramInt;
    intent = paramIntent;
  }
  
  public Intent getIntent()
  {
    return intent;
  }
  
  public int getResultCode()
  {
    return resultCode;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.Action.ActivityResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */