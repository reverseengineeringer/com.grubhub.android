package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

public class GooglePlaceResultDataModel
{
  private static final String ADMINISTRATIVE_AREA_LEVEL_1 = "administrative_area_level_1";
  private static final String COUNTRY = "country";
  private static final String LOCALITY = "locality";
  private static final String POLITICAL = "political";
  private static final String POSTAL_CODE = "postal_code";
  private static final String ROUTE = "route";
  private static final String STREET_NUMBER = "street_number";
  private static final String SUBLOCALITY_LEVEL_1 = "sublocality_level_1";
  private ArrayList<GooglePlaceResultDataModel.AddressComponent> address_components;
  private ArrayList<GooglePlaceResultDataModel.AltId> alt_ids;
  private String formatted_address;
  private String formatted_phone_number;
  private GooglePlaceResultDataModel.Geometry geometry;
  private String icon;
  private String id;
  private String international_phone_number;
  private String name;
  private GooglePlaceResultDataModel.OpeningHours opening_hours;
  private ArrayList<GooglePlaceResultDataModel.Photo> photos;
  private String place_id;
  private int price_level;
  private double rating;
  private String reference;
  private ArrayList<GooglePlaceResultDataModel.Review> reviews;
  private String scope;
  private ArrayList<String> types;
  private String url;
  private int utc_offset;
  private String vicinity;
  private String website;
  
  private GooglePlaceResultDataModel.AddressComponent findAddressComponentOfType(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (address_components != null))
    {
      GooglePlaceResultDataModel.AddressComponent localAddressComponent;
      Iterator localIterator2;
      do
      {
        Iterator localIterator1 = address_components.iterator();
        while (!localIterator2.hasNext())
        {
          do
          {
            if (!localIterator1.hasNext()) {
              break;
            }
            localAddressComponent = (GooglePlaceResultDataModel.AddressComponent)localIterator1.next();
          } while ((localAddressComponent == null) || (GooglePlaceResultDataModel.AddressComponent.access$400(localAddressComponent) == null) || (GooglePlaceResultDataModel.AddressComponent.access$400(localAddressComponent).isEmpty()));
          localIterator2 = GooglePlaceResultDataModel.AddressComponent.access$400(localAddressComponent).iterator();
        }
      } while (!paramString.equals((String)localIterator2.next()));
      return localAddressComponent;
    }
    return null;
  }
  
  public String getAddressLine()
  {
    Object localObject1 = "";
    Object localObject2 = getStreetNumber();
    String str = getStreetName();
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject2 = "" + (String)localObject2;
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(str)) {
        localObject1 = (String)localObject2 + " ";
      }
    }
    localObject2 = localObject1;
    if (!TextUtils.isEmpty(str)) {
      localObject2 = (String)localObject1 + str;
    }
    return (String)localObject2;
  }
  
  public String getCity()
  {
    GooglePlaceResultDataModel.AddressComponent localAddressComponent1 = findAddressComponentOfType("locality");
    GooglePlaceResultDataModel.AddressComponent localAddressComponent2 = findAddressComponentOfType("sublocality_level_1");
    if (localAddressComponent1 != null) {
      return GooglePlaceResultDataModel.AddressComponent.access$000(localAddressComponent1);
    }
    if (localAddressComponent2 != null) {
      return GooglePlaceResultDataModel.AddressComponent.access$000(localAddressComponent2);
    }
    return null;
  }
  
  public String getCountry()
  {
    GooglePlaceResultDataModel.AddressComponent localAddressComponent = findAddressComponentOfType("country");
    if (localAddressComponent != null) {
      return GooglePlaceResultDataModel.AddressComponent.access$000(localAddressComponent);
    }
    return null;
  }
  
  public double getLatitude()
  {
    if ((geometry != null) && (GooglePlaceResultDataModel.Geometry.access$100(geometry) != null)) {
      return GooglePlaceResultDataModel.Geometry.Location.access$200(GooglePlaceResultDataModel.Geometry.access$100(geometry));
    }
    return 0.0D;
  }
  
  public double getLongitude()
  {
    if ((geometry != null) && (GooglePlaceResultDataModel.Geometry.access$100(geometry) != null)) {
      return GooglePlaceResultDataModel.Geometry.Location.access$300(GooglePlaceResultDataModel.Geometry.access$100(geometry));
    }
    return 0.0D;
  }
  
  public String getPlaceId()
  {
    return place_id;
  }
  
  public String getState()
  {
    GooglePlaceResultDataModel.AddressComponent localAddressComponent = findAddressComponentOfType("administrative_area_level_1");
    if (localAddressComponent != null) {
      return GooglePlaceResultDataModel.AddressComponent.access$000(localAddressComponent);
    }
    return null;
  }
  
  public String getStreetName()
  {
    GooglePlaceResultDataModel.AddressComponent localAddressComponent = findAddressComponentOfType("route");
    if (localAddressComponent != null) {
      return GooglePlaceResultDataModel.AddressComponent.access$000(localAddressComponent);
    }
    return null;
  }
  
  public String getStreetNumber()
  {
    GooglePlaceResultDataModel.AddressComponent localAddressComponent = findAddressComponentOfType("street_number");
    if (localAddressComponent != null) {
      return GooglePlaceResultDataModel.AddressComponent.access$000(localAddressComponent);
    }
    return null;
  }
  
  public String getZip()
  {
    GooglePlaceResultDataModel.AddressComponent localAddressComponent = findAddressComponentOfType("postal_code");
    if (localAddressComponent != null) {
      return GooglePlaceResultDataModel.AddressComponent.access$000(localAddressComponent);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GooglePlaceResultDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */