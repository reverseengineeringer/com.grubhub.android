package com.grubhub.AppBaseLibrary.android.utils.c;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import java.util.HashMap;

class h$2
  extends HashMap<String, Object>
{
  h$2(h paramh, GHSICartDataModel paramGHSICartDataModel)
  {
    if (a.isAsapOrder()) {}
    for (paramh = "asap";; paramh = "later")
    {
      put("futureorderflag", paramh);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.c.h.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */