package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a.b;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a.c;

public class V2UserAuthDTO$GHSSession
  implements GHSIUserAuthDataModel.GHSISession, b
{
  private String access_token;
  private long expire_in;
  private String grubhub_token;
  private long refresh_expire_in;
  private String refresh_token;
  private String refresh_token_created;
  private long refresh_token_created_time;
  private long refresh_token_expire_time;
  private String token_created;
  private long token_created_time;
  private long token_expire_time;
  private String token_type;
  
  public V2UserAuthDTO$GHSSession(V2UserAuthDTO paramV2UserAuthDTO) {}
  
  public void accept(c paramc)
  {
    if (paramc != null) {
      paramc.a(this);
    }
  }
  
  public String getAccess_token()
  {
    return access_token;
  }
  
  public long getExpire_in()
  {
    return expire_in;
  }
  
  public String getGrubhub_token()
  {
    return grubhub_token;
  }
  
  public long getRefresh_expire_in()
  {
    return refresh_expire_in;
  }
  
  public String getRefresh_token()
  {
    return refresh_token;
  }
  
  public String getRefresh_token_created()
  {
    return refresh_token_created;
  }
  
  public long getRefresh_token_created_time()
  {
    return refresh_token_created_time;
  }
  
  public long getRefresh_token_expire_time()
  {
    return refresh_token_expire_time;
  }
  
  public String getToken_created()
  {
    return token_created;
  }
  
  public long getToken_created_time()
  {
    return token_created_time;
  }
  
  public long getToken_expire_time()
  {
    return token_expire_time;
  }
  
  public String getToken_type()
  {
    return token_type;
  }
  
  public void setRefresh_token_expire_time(long paramLong)
  {
    refresh_token_expire_time = paramLong;
  }
  
  public void setToken_expire_time(long paramLong)
  {
    token_expire_time = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */