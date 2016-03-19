package com.android.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.volley.AuthFailureError;

public class AndroidAuthenticator
  implements Authenticator
{
  private final Account mAccount;
  private final String mAuthTokenType;
  private final Context mContext;
  private final boolean mNotifyAuthFailure;
  
  public AndroidAuthenticator(Context paramContext, Account paramAccount, String paramString)
  {
    this(paramContext, paramAccount, paramString, false);
  }
  
  public AndroidAuthenticator(Context paramContext, Account paramAccount, String paramString, boolean paramBoolean)
  {
    mContext = paramContext;
    mAccount = paramAccount;
    mAuthTokenType = paramString;
    mNotifyAuthFailure = paramBoolean;
  }
  
  public Account getAccount()
  {
    return mAccount;
  }
  
  public String getAuthToken()
    throws AuthFailureError
  {
    Object localObject2 = null;
    AccountManagerFuture localAccountManagerFuture = AccountManager.get(mContext).getAuthToken(mAccount, mAuthTokenType, mNotifyAuthFailure, null, null);
    Bundle localBundle;
    try
    {
      localBundle = (Bundle)localAccountManagerFuture.getResult();
      Object localObject1 = localObject2;
      if (!localAccountManagerFuture.isDone()) {
        break label108;
      }
      localObject1 = localObject2;
      if (localAccountManagerFuture.isCancelled()) {
        break label108;
      }
      if (localBundle.containsKey("intent")) {
        throw new AuthFailureError((Intent)localBundle.getParcelable("intent"));
      }
    }
    catch (Exception localException)
    {
      throw new AuthFailureError("Error while retrieving auth token", localException);
    }
    String str = localBundle.getString("authtoken");
    label108:
    if (str == null) {
      throw new AuthFailureError("Got null auth token for type: " + mAuthTokenType);
    }
    return str;
  }
  
  public void invalidateAuthToken(String paramString)
  {
    AccountManager.get(mContext).invalidateAuthToken(mAccount.type, paramString);
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.AndroidAuthenticator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */