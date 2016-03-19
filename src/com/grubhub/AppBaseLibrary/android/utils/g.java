package com.grubhub.AppBaseLibrary.android.utils;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Patterns;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class g
{
  private static final String a = g.class.getSimpleName();
  
  protected static String a(int paramInt1, int paramInt2)
  {
    try
    {
      Object localObject = new Date();
      ((Date)localObject).setYear(paramInt1);
      ((Date)localObject).setMonth(paramInt2 - 1);
      SimpleDateFormat localSimpleDateFormat1 = new SimpleDateFormat("MM");
      SimpleDateFormat localSimpleDateFormat2 = new SimpleDateFormat("yy");
      localSimpleDateFormat1.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
      localSimpleDateFormat2.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
      localObject = localSimpleDateFormat1.format((Date)localObject) + "/" + localSimpleDateFormat2.format((Date)localObject);
      return (String)localObject;
    }
    catch (Exception localException)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, localException.getMessage());
    }
    return null;
  }
  
  public static String a(GHSIVaultedCreditCardModel paramGHSIVaultedCreditCardModel, Resources paramResources)
  {
    if (paramGHSIVaultedCreditCardModel != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if (f.b(paramGHSIVaultedCreditCardModel.getCreditCardType()))
      {
        if (!paramGHSIVaultedCreditCardModel.getCreditCardType().equalsIgnoreCase(paramResources.getString(2131230924))) {
          break label153;
        }
        localStringBuilder.append("AMEX");
      }
      for (;;)
      {
        localStringBuilder.append(" - ");
        if (f.b(paramGHSIVaultedCreditCardModel.getCreditCardList4())) {
          localStringBuilder.append("xxxx-").append(paramGHSIVaultedCreditCardModel.getCreditCardList4());
        }
        if ((paramGHSIVaultedCreditCardModel.getExpirationYear() != null) && (paramGHSIVaultedCreditCardModel.getExpirationMonth() != null))
        {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append("\n");
          }
          paramGHSIVaultedCreditCardModel = a(paramGHSIVaultedCreditCardModel.getExpirationYear().intValue(), paramGHSIVaultedCreditCardModel.getExpirationMonth().intValue());
          if (paramGHSIVaultedCreditCardModel != null) {
            localStringBuilder.append(paramGHSIVaultedCreditCardModel);
          }
        }
        return localStringBuilder.toString();
        label153:
        localStringBuilder.append(paramGHSIVaultedCreditCardModel.getCreditCardType().toUpperCase());
      }
    }
    return null;
  }
  
  public static void a(TextView paramTextView, GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if ((paramTextView != null) && (paramGHSIAddressDataModel != null))
    {
      Context localContext = paramTextView.getContext();
      StringBuilder localStringBuilder = new StringBuilder();
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getPhone()))
      {
        String str2 = paramGHSIAddressDataModel.getPhone();
        String str1 = str2;
        if (com.grubhub.AppBaseLibrary.android.utils.h.a.c(str2)) {
          str1 = com.grubhub.AppBaseLibrary.android.utils.h.a.a(str2);
        }
        localStringBuilder.append(localContext.getString(2131231974)).append(str1);
      }
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("\n");
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress1())) {
        localStringBuilder.append(paramGHSIAddressDataModel.getAddress1()).append("\n");
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress2())) {
        localStringBuilder.append(paramGHSIAddressDataModel.getAddress2()).append("\n");
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCity()))
      {
        localStringBuilder.append(paramGHSIAddressDataModel.getCity());
        if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState())) {
          localStringBuilder.append(", ");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState()))
      {
        localStringBuilder.append(paramGHSIAddressDataModel.getState());
        if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip())) {
          localStringBuilder.append(", ");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip()))
      {
        localStringBuilder.append(paramGHSIAddressDataModel.getZip());
        if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCrossStreet())) {
          localStringBuilder.append("\n");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCrossStreet())) {
        localStringBuilder.append(localContext.getString(2131231962)).append(paramGHSIAddressDataModel.getCrossStreet());
      }
      paramTextView.setText(localStringBuilder.toString());
    }
  }
  
  public static void a(TextView paramTextView, String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    Context localContext;
    StringBuilder localStringBuilder;
    if ((paramTextView != null) && (paramGHSIAddressDataModel != null))
    {
      localContext = paramTextView.getContext();
      localStringBuilder = new StringBuilder();
      if (!TextUtils.isEmpty(paramString1))
      {
        localStringBuilder.append(paramString1);
        if (TextUtils.isEmpty(paramString2)) {
          break label371;
        }
        localStringBuilder.append(" ");
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramString2)) {
        localStringBuilder.append(paramString2).append("\n");
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getPhone()))
      {
        paramString2 = paramGHSIAddressDataModel.getPhone();
        paramString1 = paramString2;
        if (com.grubhub.AppBaseLibrary.android.utils.h.a.c(paramString2)) {
          paramString1 = com.grubhub.AppBaseLibrary.android.utils.h.a.a(paramString2);
        }
        localStringBuilder.append(localContext.getString(2131231974)).append(paramString1);
      }
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("\n");
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress1())) {
        localStringBuilder.append(paramGHSIAddressDataModel.getAddress1()).append("\n");
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress2())) {
        localStringBuilder.append(paramGHSIAddressDataModel.getAddress2()).append("\n");
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCity()))
      {
        localStringBuilder.append(paramGHSIAddressDataModel.getCity());
        if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState())) {
          localStringBuilder.append(", ");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState()))
      {
        localStringBuilder.append(paramGHSIAddressDataModel.getState());
        if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip())) {
          localStringBuilder.append(", ");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip()))
      {
        localStringBuilder.append(paramGHSIAddressDataModel.getZip());
        if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCrossStreet())) {
          localStringBuilder.append("\n");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCrossStreet())) {
        localStringBuilder.append(localContext.getString(2131231962)).append(paramGHSIAddressDataModel.getCrossStreet());
      }
      paramTextView.setText(localStringBuilder.toString());
      return;
      label371:
      localStringBuilder.append("\n");
    }
  }
  
  public static void a(TextView paramTextView, String paramString1, String paramString2, String paramString3)
  {
    Context localContext;
    StringBuilder localStringBuilder;
    if (paramTextView != null)
    {
      localContext = paramTextView.getContext();
      localStringBuilder = new StringBuilder();
      if (!TextUtils.isEmpty(paramString1))
      {
        localStringBuilder.append(paramString1);
        if (TextUtils.isEmpty(paramString2)) {
          break label115;
        }
        localStringBuilder.append(" ");
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramString2)) {
        localStringBuilder.append(paramString2).append("\n");
      }
      if (!TextUtils.isEmpty(paramString3))
      {
        paramString1 = paramString3;
        if (com.grubhub.AppBaseLibrary.android.utils.h.a.c(paramString3)) {
          paramString1 = com.grubhub.AppBaseLibrary.android.utils.h.a.a(paramString3);
        }
        localStringBuilder.append(localContext.getString(2131231974)).append(paramString1);
      }
      paramTextView.setText(localStringBuilder.toString());
      return;
      label115:
      localStringBuilder.append("\n");
    }
  }
  
  public static boolean a(String paramString)
  {
    boolean bool = false;
    if (f.b(paramString)) {
      bool = Patterns.EMAIL_ADDRESS.matcher(paramString).matches();
    }
    return bool;
  }
  
  public static boolean b(String paramString)
  {
    return f.b(paramString);
  }
  
  public static boolean c(String paramString)
  {
    return f.b(paramString);
  }
  
  public static boolean d(String paramString)
  {
    return f.b(paramString);
  }
  
  public static boolean e(String paramString)
  {
    return f.b(paramString);
  }
  
  public static boolean f(String paramString)
  {
    return f.b(paramString);
  }
  
  public static boolean g(String paramString)
  {
    return (f.b(paramString)) && (paramString.matches("^[0-9]{5}$"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */