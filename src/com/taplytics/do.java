package com.taplytics;

import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Iterator;

class do
  extends AsyncTask<ArrayList<cx>, Void, Boolean>
{
  private do(dg paramdg) {}
  
  protected final Boolean a(ArrayList<cx>[] paramArrayOfArrayList)
  {
    try
    {
      paramArrayOfArrayList = paramArrayOfArrayList[0].iterator();
      while (paramArrayOfArrayList.hasNext()) {
        ((cx)paramArrayOfArrayList.next()).b();
      }
      return Boolean.valueOf(true);
    }
    catch (Exception paramArrayOfArrayList)
    {
      return Boolean.valueOf(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */