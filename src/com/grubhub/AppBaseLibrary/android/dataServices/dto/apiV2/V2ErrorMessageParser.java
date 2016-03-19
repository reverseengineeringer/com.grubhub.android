package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.lang.reflect.Type;
import java.util.ArrayList;

public class V2ErrorMessageParser
{
  private static final String TAG = V2ErrorMessageParser.class.getSimpleName();
  
  public ArrayList<GHSIErrorMessage> parseJSONMessages(String paramString)
  {
    try
    {
      Type localType = new TypeToken() {}.getType();
      paramString = (ArrayList)new Gson().fromJson(paramString, localType);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      a.b(TAG, paramString.getMessage());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ErrorMessageParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */