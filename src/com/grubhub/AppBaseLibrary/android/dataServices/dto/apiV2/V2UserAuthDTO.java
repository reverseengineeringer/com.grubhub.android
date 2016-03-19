package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSIClaim;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSICredential;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSIOrders;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.utils.b.a;
import java.util.ArrayList;
import java.util.Iterator;

public class V2UserAuthDTO
  implements GHSIUserAuthDataModel
{
  private ArrayList<V2UserAuthDTO.GHSClaim> claims;
  private V2UserAuthDTO.GHSCredential credential;
  private String savedPassword;
  private V2UserAuthDTO.GHSSession session_handle;
  
  public V2UserAuthDTO(V2UserAuthDTO.GHSCredential paramGHSCredential, V2UserAuthDTO.GHSSession paramGHSSession, ArrayList<V2UserAuthDTO.GHSClaim> paramArrayList)
  {
    credential = paramGHSCredential;
    session_handle = paramGHSSession;
    claims = paramArrayList;
  }
  
  public String getAccessToken()
  {
    if (session_handle != null) {
      return V2UserAuthDTO.GHSSession.access$400(session_handle);
    }
    return null;
  }
  
  public ArrayList<GHSIUserAuthDataModel.GHSIClaim> getClaims()
  {
    return new ArrayList(claims);
  }
  
  public GHSIUserAuthDataModel.GHSICredential getCredential()
  {
    return credential;
  }
  
  public String getEmail()
  {
    if (credential != null) {
      return V2UserAuthDTO.GHSCredential.access$200(credential);
    }
    return null;
  }
  
  public String getErrorMessage()
  {
    return null;
  }
  
  public String getFirstName()
  {
    if (credential != null) {
      return V2UserAuthDTO.GHSCredential.access$000(credential);
    }
    return null;
  }
  
  public String getGrubHubToken()
  {
    return getToken();
  }
  
  public String getId()
  {
    if (credential != null) {
      return V2UserAuthDTO.GHSCredential.access$700(credential);
    }
    return null;
  }
  
  public String getLastName()
  {
    if (credential != null) {
      return V2UserAuthDTO.GHSCredential.access$100(credential);
    }
    return null;
  }
  
  public GHSIUserAuthDataModel.GHSIOrders getOrders()
  {
    return null;
  }
  
  public String getPassword()
  {
    if (savedPassword != null) {
      return GHSApplication.a().c().b(savedPassword);
    }
    return savedPassword;
  }
  
  public String getRefreshToken()
  {
    if (session_handle != null) {
      return V2UserAuthDTO.GHSSession.access$600(session_handle);
    }
    return null;
  }
  
  public GHSIUserAuthDataModel.GHSISession getSession()
  {
    return session_handle;
  }
  
  public String getToken()
  {
    if ((session_handle != null) && (V2UserAuthDTO.GHSSession.access$300(session_handle) != null)) {
      return V2UserAuthDTO.GHSSession.access$300(session_handle);
    }
    if (claims != null)
    {
      Iterator localIterator = claims.iterator();
      while (localIterator.hasNext())
      {
        GHSIUserAuthDataModel.GHSIClaim localGHSIClaim = (GHSIUserAuthDataModel.GHSIClaim)localIterator.next();
        if (localGHSIClaim.getClaim().equalsIgnoreCase("gh_token")) {
          return localGHSIClaim.getClaim_id();
        }
      }
    }
    return null;
  }
  
  public String getUdid()
  {
    if (credential != null) {
      return V2UserAuthDTO.GHSCredential.access$500(credential);
    }
    return null;
  }
  
  public void setPassword(String paramString)
  {
    if (paramString != null)
    {
      savedPassword = GHSApplication.a().c().a(paramString);
      return;
    }
    savedPassword = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */