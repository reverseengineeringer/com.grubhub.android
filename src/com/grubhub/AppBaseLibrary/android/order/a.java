package com.grubhub.AppBaseLibrary.android.order;

import android.content.res.Resources;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

public class a
{
  private static Map<String, String> a;
  private static Map<String, String> b;
  
  public static GHSAddressDataModel a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    GHSAddressDataModel localGHSAddressDataModel = null;
    if (paramGHSIAddressDataModel != null)
    {
      localGHSAddressDataModel = new GHSAddressDataModel();
      localGHSAddressDataModel.setId(paramGHSIAddressDataModel.getId());
      if (paramGHSIAddressDataModel.getId() != null) {
        localGHSAddressDataModel.setLabel(paramGHSIAddressDataModel.getLabel());
      }
      localGHSAddressDataModel.setAddress1(paramGHSIAddressDataModel.getAddress1());
      localGHSAddressDataModel.setAddress2(paramGHSIAddressDataModel.getAddress2());
      localGHSAddressDataModel.setCity(paramGHSIAddressDataModel.getCity());
      localGHSAddressDataModel.setState(paramGHSIAddressDataModel.getState());
      localGHSAddressDataModel.setCrossStreet(paramGHSIAddressDataModel.getCrossStreet());
      localGHSAddressDataModel.setZip(paramGHSIAddressDataModel.getZip());
      localGHSAddressDataModel.setCountry(paramGHSIAddressDataModel.getCountry());
      localGHSAddressDataModel.setPhone(paramGHSIAddressDataModel.getPhone());
      localGHSAddressDataModel.setLatitude(paramGHSIAddressDataModel.getLatitude());
      localGHSAddressDataModel.setLongitude(paramGHSIAddressDataModel.getLongitude());
      localGHSAddressDataModel.setIsDefault(paramGHSIAddressDataModel.getIsDefault());
      localGHSAddressDataModel.setIsSavedAddress(paramGHSIAddressDataModel.getIsSavedAddress());
      localGHSAddressDataModel.setIsPrecise(paramGHSIAddressDataModel.getIsPrecise());
      localGHSAddressDataModel.setPickupRadius(paramGHSIAddressDataModel.getPickupRadius());
    }
    return localGHSAddressDataModel;
  }
  
  public static String a(GHSIAddressDataModel paramGHSIAddressDataModel, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramGHSIAddressDataModel != null)
    {
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress1())) {
        localStringBuilder.append(paramGHSIAddressDataModel.getAddress1());
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCity()))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append(paramGHSIAddressDataModel.getCity());
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState()))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append(paramGHSIAddressDataModel.getState());
      }
      if ((paramBoolean) && (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip())))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append(paramGHSIAddressDataModel.getZip());
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString)
  {
    if (f.b(paramString))
    {
      if (b == null)
      {
        b = new HashMap();
        Object localObject2 = GHSApplication.a().getResources();
        localObject1 = ((Resources)localObject2).getStringArray(2131623945);
        localObject2 = ((Resources)localObject2).getStringArray(2131623944);
        int i = 0;
        while ((i < localObject1.length) && (i < localObject2.length))
        {
          String str = localObject1[i].toLowerCase(Locale.US);
          b.put(str, localObject2[i]);
          i += 1;
        }
      }
      Object localObject1 = (String)b.get(paramString.toLowerCase(Locale.US));
      if (localObject1 == null) {
        return paramString;
      }
      return (String)localObject1;
    }
    return null;
  }
  
  public static ArrayList<GHSIAddressDataModel> a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList != null)
    {
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)paramArrayList.next();
        if ((localGHSIAddressDataModel != null) && (localGHSIAddressDataModel.getIsPrecise())) {
          localArrayList.add(localGHSIAddressDataModel);
        }
      }
    }
    return localArrayList;
  }
  
  public static String b(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    return a(paramGHSIAddressDataModel, true);
  }
  
  public static String b(String paramString)
  {
    Object localObject = null;
    if (f.b(paramString))
    {
      if (a == null)
      {
        a = new HashMap();
        String[] arrayOfString = Locale.getISOCountries();
        int j = arrayOfString.length;
        int i = 0;
        if (i < j)
        {
          String str = arrayOfString[i];
          localObject = new Locale("en", str);
          if (((Locale)localObject).getDisplayCountry() != null) {}
          for (localObject = ((Locale)localObject).getDisplayCountry().toLowerCase(Locale.US);; localObject = "")
          {
            a.put(localObject, str);
            i += 1;
            break;
          }
        }
      }
      localObject = (String)a.get(paramString.toLowerCase(Locale.US));
    }
    return (String)localObject;
  }
  
  public static boolean c(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    GHSIAddressDataModel localGHSIAddressDataModel = GHSApplication.a().b().t();
    return (localGHSIAddressDataModel != null) && (paramGHSIAddressDataModel != null) && (localGHSIAddressDataModel.getId() != null) && (localGHSIAddressDataModel.getId().equals(paramGHSIAddressDataModel.getId()));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */