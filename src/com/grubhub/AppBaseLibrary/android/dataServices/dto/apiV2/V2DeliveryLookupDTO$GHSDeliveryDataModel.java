package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeoInfo;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;

public class V2DeliveryLookupDTO$GHSDeliveryDataModel
  implements GHSIDeliveryDataModel
{
  private String account_id;
  private V2DeliveryLookupDTO.GHSMoney collected_tip;
  private ArrayList<String> contents;
  private V2DeliveryLookupDTO.GHSCourier courier;
  private String created;
  private V2DeliveryLookupDTO.GHSPickupDropoff dropoff;
  private String id;
  private V2DeliveryLookupDTO.GHSMetadata metadata;
  private String name;
  private V2DeliveryLookupDTO.GHSPickupDropoff pickup;
  private V2DeliveryLookupDTO.GHSPrefs preferences;
  private String status;
  private V2DeliveryLookupDTO.GHSTimes times;
  private V2DeliveryLookupDTO.GHSMoney total;
  
  public String getAccountId()
  {
    return account_id;
  }
  
  public ArrayList<String> getContents()
  {
    return contents;
  }
  
  public String getCourierFirstName()
  {
    if ((courier == null) || (f.a(V2DeliveryLookupDTO.GHSCourier.access$1600(courier)))) {}
    int i;
    do
    {
      return null;
      i = V2DeliveryLookupDTO.GHSCourier.access$1600(courier).indexOf(' ');
      if (i < 0) {
        return V2DeliveryLookupDTO.GHSCourier.access$1600(courier);
      }
    } while ((i == 0) || (i >= V2DeliveryLookupDTO.GHSCourier.access$1600(courier).length()));
    return V2DeliveryLookupDTO.GHSCourier.access$1600(courier).substring(0, i);
  }
  
  public GHSIGeoInfo getCourierLocation()
  {
    if (courier == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSCourier.access$2100(courier);
  }
  
  public String getCourierPhoneNumber()
  {
    if (courier == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSCourier.access$1700(courier);
  }
  
  public String getCourierPhoto()
  {
    if (courier == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSCourier.access$2000(courier);
  }
  
  public String getCourierVehicleType()
  {
    if ((courier == null) || (V2DeliveryLookupDTO.GHSCourier.access$1800(courier) == null)) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSVehicle.access$1900(V2DeliveryLookupDTO.GHSCourier.access$1800(courier));
  }
  
  public String getCreatedTime()
  {
    return created;
  }
  
  public String getDeliveryId()
  {
    return id;
  }
  
  public String getDinerName()
  {
    return name;
  }
  
  public GHSIAddressDataModel getDropoffAddress()
  {
    if ((dropoff == null) || (V2DeliveryLookupDTO.GHSPickupDropoff.access$100(dropoff) == null)) {
      return null;
    }
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    localGHSAddressDataModel.setAddress1(V2DeliveryLookupDTO.GHSAddress.access$200(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(dropoff)));
    localGHSAddressDataModel.setAddress2(V2DeliveryLookupDTO.GHSAddress.access$300(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(dropoff)));
    localGHSAddressDataModel.setCity(V2DeliveryLookupDTO.GHSAddress.access$400(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(dropoff)));
    localGHSAddressDataModel.setState(V2DeliveryLookupDTO.GHSAddress.access$500(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(dropoff)));
    localGHSAddressDataModel.setZip(V2DeliveryLookupDTO.GHSAddress.access$600(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(dropoff)));
    return localGHSAddressDataModel;
  }
  
  public GHSIGeoInfo getDropoffLocation()
  {
    if (dropoff == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSPickupDropoff.access$900(dropoff);
  }
  
  public String getDropoffNotes()
  {
    if (dropoff == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSPickupDropoff.access$800(dropoff);
  }
  
  public String getDropoffPhoneNumber()
  {
    if (dropoff == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSPickupDropoff.access$700(dropoff);
  }
  
  public String getDropoffTime()
  {
    if ((times == null) || (V2DeliveryLookupDTO.GHSTimes.access$1200(times) == null)) {
      return null;
    }
    Object localObject = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
    ((SimpleDateFormat)localObject).setTimeZone(TimeZone.getTimeZone("UTC"));
    try
    {
      localObject = ((SimpleDateFormat)localObject).parse(V2DeliveryLookupDTO.GHSTime.access$1300(V2DeliveryLookupDTO.GHSTimes.access$1200(times)));
      return new SimpleDateFormat("h:mm aa").format((Date)localObject);
    }
    catch (ParseException localParseException)
    {
      a.b(V2DeliveryLookupDTO.access$1400(), localParseException.getMessage());
    }
    return null;
  }
  
  public String getDropoffTimeRange()
  {
    String str = getDropoffTime();
    if (f.a(str)) {
      return null;
    }
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("h:mm aa");
    try
    {
      Date localDate = localSimpleDateFormat.parse(str);
      localDate.setTime(localDate.getTime() + 600000L);
      return String.format("%s-%s", new Object[] { str, localSimpleDateFormat.format(localDate) });
    }
    catch (ParseException localParseException)
    {
      a.b(V2DeliveryLookupDTO.access$1400(), localParseException.getMessage());
    }
    return null;
  }
  
  public String getOrderId()
  {
    if (metadata == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSMetadata.access$1500(metadata);
  }
  
  public GHSIAddressDataModel getPickupAddress()
  {
    if ((pickup == null) || (V2DeliveryLookupDTO.GHSPickupDropoff.access$100(pickup) == null)) {
      return null;
    }
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    localGHSAddressDataModel.setAddress1(V2DeliveryLookupDTO.GHSAddress.access$200(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(pickup)));
    localGHSAddressDataModel.setAddress2(V2DeliveryLookupDTO.GHSAddress.access$300(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(pickup)));
    localGHSAddressDataModel.setCity(V2DeliveryLookupDTO.GHSAddress.access$400(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(pickup)));
    localGHSAddressDataModel.setState(V2DeliveryLookupDTO.GHSAddress.access$500(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(pickup)));
    localGHSAddressDataModel.setZip(V2DeliveryLookupDTO.GHSAddress.access$600(V2DeliveryLookupDTO.GHSPickupDropoff.access$100(pickup)));
    return localGHSAddressDataModel;
  }
  
  public GHSIGeoInfo getPickupLocation()
  {
    if (pickup == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSPickupDropoff.access$900(pickup);
  }
  
  public String getPickupNotes()
  {
    if (pickup == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSPickupDropoff.access$800(pickup);
  }
  
  public String getPickupPhoneNumber()
  {
    if (pickup == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSPickupDropoff.access$700(pickup);
  }
  
  public String getPickupTime()
  {
    if ((times == null) || (V2DeliveryLookupDTO.GHSTimes.access$1000(times) == null)) {
      return null;
    }
    Object localObject = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
    ((SimpleDateFormat)localObject).setTimeZone(TimeZone.getTimeZone("UTC"));
    try
    {
      localObject = ((SimpleDateFormat)localObject).parse(V2DeliveryLookupDTO.GHSTime.access$1300(V2DeliveryLookupDTO.GHSTimes.access$1000(times)));
      return new SimpleDateFormat("h:mm aa").format((Date)localObject);
    }
    catch (ParseException localParseException)
    {
      a.b(V2DeliveryLookupDTO.access$1400(), localParseException.getMessage());
    }
    return null;
  }
  
  public String getRestaurantName()
  {
    if (dropoff == null) {
      return null;
    }
    return V2DeliveryLookupDTO.GHSPickupDropoff.access$000(dropoff);
  }
  
  public String getStatus()
  {
    return status;
  }
  
  public boolean isDropoffTimeEstimate()
  {
    if ((times == null) || (V2DeliveryLookupDTO.GHSTimes.access$1200(times) == null)) {
      return true;
    }
    return V2DeliveryLookupDTO.GHSTime.access$1100(V2DeliveryLookupDTO.GHSTimes.access$1200(times)).equalsIgnoreCase("estimate");
  }
  
  public boolean isPickupTimeEstimate()
  {
    if ((times == null) || (V2DeliveryLookupDTO.GHSTimes.access$1000(times) == null)) {
      return true;
    }
    return V2DeliveryLookupDTO.GHSTime.access$1100(V2DeliveryLookupDTO.GHSTimes.access$1000(times)).equalsIgnoreCase("estimate");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeliveryLookupDTO.GHSDeliveryDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */