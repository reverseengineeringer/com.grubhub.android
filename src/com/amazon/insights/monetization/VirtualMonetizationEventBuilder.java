package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

public class VirtualMonetizationEventBuilder
  extends MonetizationEventBuilder
{
  private static Logger logger = Logger.getLogger(VirtualMonetizationEventBuilder.class);
  
  protected VirtualMonetizationEventBuilder(EventClient paramEventClient)
  {
    super(paramEventClient);
    setStore("Virtual");
  }
  
  public static VirtualMonetizationEventBuilder create(EventClient paramEventClient)
  {
    return new VirtualMonetizationEventBuilder(paramEventClient);
  }
  
  protected boolean isValid()
  {
    if (getProductId() == null)
    {
      logger.devw("Virtual Monetization event is not valid: it is missing the product id");
      return false;
    }
    if (getQuantity() == null)
    {
      logger.devw("Virtual Monetization event is not valid: it is missing the quantity");
      return false;
    }
    if (getItemPrice() == null)
    {
      logger.devw("Virtual Monetization event is not valid: it is missing the numerical price");
      return false;
    }
    if (getCurrency() == null)
    {
      logger.devw("Virtual Monetization event is not valid: it is missing the currency");
      return false;
    }
    return true;
  }
  
  public VirtualMonetizationEventBuilder withCurrency(String paramString)
  {
    setCurrency(paramString);
    return this;
  }
  
  public VirtualMonetizationEventBuilder withItemPrice(double paramDouble)
  {
    setItemPrice(Double.valueOf(paramDouble));
    return this;
  }
  
  public VirtualMonetizationEventBuilder withProductId(String paramString)
  {
    setProductId(paramString);
    return this;
  }
  
  public VirtualMonetizationEventBuilder withQuantity(int paramInt)
  {
    setQuantity(Integer.valueOf(paramInt));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.monetization.VirtualMonetizationEventBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */