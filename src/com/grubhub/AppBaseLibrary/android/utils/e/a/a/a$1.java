package com.grubhub.AppBaseLibrary.android.utils.e.a.a;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import java.util.HashMap;

class a$1
  extends HashMap<String, String>
{
  a$1(a parama, GHSIUserAuthDataModel.GHSISession paramGHSISession)
  {
    put("AccessToken", a.getAccess_token());
    put("RefreshToken", a.getRefresh_token());
    put("AccessTokenExpireTime", Long.toString(a.getToken_expire_time()));
    put("RefreshTokenExpireTime", Long.toString(a.getRefresh_token_expire_time()));
    put("AccessTokenCreatedTime", Long.toString(a.getToken_created_time()));
    put("RefreshTokenCreatedTime", Long.toString(a.getRefresh_token_created_time()));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.e.a.a.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */