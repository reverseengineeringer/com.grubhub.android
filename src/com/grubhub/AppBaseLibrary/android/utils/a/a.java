package com.grubhub.AppBaseLibrary.android.utils.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Date;

public class a
{
  public static String a(Context paramContext)
  {
    paramContext = GHSApplication.d(paramContext);
    if (paramContext != null) {
      return paramContext.getGrubHubToken();
    }
    return null;
  }
  
  public static boolean a(GHSIUserAuthDataModel.GHSISession paramGHSISession, Date paramDate)
  {
    return (paramGHSISession != null) && (f.b(paramGHSISession.getRefresh_token())) && (paramDate.getTime() < paramGHSISession.getRefresh_token_expire_time());
  }
  
  public static boolean a(GHSIUserAuthDataModel.GHSISession paramGHSISession, Date paramDate, boolean paramBoolean)
  {
    boolean bool = false;
    if (paramBoolean) {}
    for (int i = 300000;; i = 0)
    {
      paramBoolean = bool;
      if (paramGHSISession != null)
      {
        paramBoolean = bool;
        if (paramDate.getTime() >= paramGHSISession.getToken_expire_time() - i) {
          paramBoolean = true;
        }
      }
      return paramBoolean;
    }
  }
  
  public static String b(Context paramContext)
  {
    Date localDate = new Date();
    paramContext = GHSApplication.d(paramContext);
    if ((paramContext != null) && (!a(paramContext.getSession(), localDate, false))) {
      return paramContext.getAccessToken();
    }
    return null;
  }
  
  public static String c(Context paramContext)
  {
    Date localDate = new Date();
    paramContext = GHSApplication.c(paramContext);
    if ((paramContext != null) && (!a(paramContext.getSession(), localDate, false))) {
      return paramContext.getAccessToken();
    }
    return null;
  }
  
  public static String d(Context paramContext)
  {
    String str2 = b(paramContext);
    String str1 = str2;
    if (f.a(str2)) {
      str1 = c(paramContext);
    }
    return str1;
  }
  
  public static String e(Context paramContext)
  {
    String str = null;
    Object localObject = GHSApplication.d(paramContext);
    if (localObject != null) {
      str = ((GHSIUserAuthDataModel)localObject).getAccessToken();
    }
    localObject = str;
    if (str == null)
    {
      paramContext = GHSApplication.c(paramContext);
      localObject = str;
      if (paramContext != null) {
        localObject = paramContext.getAccessToken();
      }
    }
    return (String)localObject;
  }
  
  public static String f(Context paramContext)
  {
    Object localObject = null;
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.c(paramContext);
    paramContext = (Context)localObject;
    if (localGHSIUserAuthDataModel != null) {
      paramContext = localGHSIUserAuthDataModel.getAccessToken();
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */