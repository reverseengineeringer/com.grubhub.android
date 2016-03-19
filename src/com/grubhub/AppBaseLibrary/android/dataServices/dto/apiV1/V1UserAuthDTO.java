package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSIClaim;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSICredential;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.utils.b.a;
import java.util.ArrayList;

public class V1UserAuthDTO
  implements GHSIUserAuthDataModel
{
  private String email;
  private V1UserAuthDTO.GHSFavorites favorites;
  protected String firstName;
  private String id;
  protected String lastName;
  private V1UserAuthDTO.GHSMessages messages;
  private V1UserAuthDTO.GHSOrders orders;
  private String savedPassword;
  private String token;
  
  private String findTagData(String paramString1, String paramString2)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramString2 != null)
    {
      localObject1 = localObject2;
      if (paramString1 != null)
      {
        localObject1 = paramString1.replace("<", "</");
        int i = paramString2.indexOf(paramString1);
        int j = paramString2.indexOf((String)localObject1, paramString1.length() + i);
        localObject1 = localObject2;
        if (i != -1)
        {
          localObject1 = localObject2;
          if (j != -1) {
            localObject1 = paramString2.substring(paramString1.length() + i, j);
          }
        }
      }
    }
    return (String)localObject1;
  }
  
  public String getAccessToken()
  {
    return null;
  }
  
  public ArrayList<GHSIUserAuthDataModel.GHSIClaim> getClaims()
  {
    return null;
  }
  
  public GHSIUserAuthDataModel.GHSICredential getCredential()
  {
    return null;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public String getErrorMessage()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (messages != null)
    {
      localObject1 = localObject2;
      if (V1UserAuthDTO.GHSMessages.access$000(messages) != null)
      {
        localObject1 = localObject2;
        if (V1UserAuthDTO.GHSMessages.access$000(messages).size() > 0) {
          localObject1 = V1UserAuthDTO.GHSMessage.access$100((V1UserAuthDTO.GHSMessage)V1UserAuthDTO.GHSMessages.access$000(messages).get(0));
        }
      }
    }
    return (String)localObject1;
  }
  
  public String getFirstName()
  {
    return firstName;
  }
  
  public String getGrubHubToken()
  {
    return token;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getLastName()
  {
    return lastName;
  }
  
  public V1UserAuthDTO.GHSOrders getOrders()
  {
    return orders;
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
    return null;
  }
  
  public GHSIUserAuthDataModel.GHSISession getSession()
  {
    return null;
  }
  
  public String getToken()
  {
    return token;
  }
  
  public String getUdid()
  {
    return null;
  }
  
  public V1UserAuthDTO parseXMLNonErrorResponse(String paramString)
  {
    String str1 = findTagData("<first-name>", paramString);
    String str2 = findTagData("<last-name>", paramString);
    String str3 = findTagData("<token>", paramString);
    paramString = findTagData("<id>", paramString);
    if (str1 != null) {
      firstName = str1;
    }
    if (str2 != null) {
      lastName = str2;
    }
    if (str3 != null) {
      token = str3;
    }
    if (paramString != null) {
      id = paramString;
    }
    return this;
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1UserAuthDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */