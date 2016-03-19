package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

public class CustomMonetizationEventBuilder
  extends MonetizationEventBuilder
{
  private static Logger logger = Logger.getLogger(CustomMonetizationEventBuilder.class);
  
  protected CustomMonetizationEventBuilder(EventClient paramEventClient)
  {
    super(paramEventClient);
  }
  
  public static CustomMonetizationEventBuilder create(EventClient paramEventClient)
  {
    return new CustomMonetizationEventBuilder(paramEventClient);
  }
  
  protected boolean isValid()
  {
    if (getStore() == null)
    {
      logger.devw("Custom Monetization event is not valid: it is missing the store");
      return false;
    }
    if (getProductId() == null)
    {
      logger.devw("Custom Monetization event is not valid: it is missing the product id");
      return false;
    }
    if (getQuantity() == null)
    {
      logger.devw("Custom Monetization event is not valid: it is missing the quantity");
      return false;
    }
    if (((getCurrency() == null) || (getItemPrice() == null)) && (getFormattedItemPrice() == null))
    {
      logger.devw("Custom Monetization event is not valid: it requires the formatted localized price or the currency and price");
      return false;
    }
    return true;
  }
  
  public CustomMonetizationEventBuilder withCurrency(String paramString)
  {
    setCurrency(paramString);
    return this;
  }
  
  public CustomMonetizationEventBuilder withFormattedItemPrice(String paramString)
  {
    setFormattedItemPrice(paramString);
    return this;
  }
  
  public CustomMonetizationEventBuilder withItemPrice(double paramDouble)
  {
    setItemPrice(Double.valueOf(paramDouble));
    return this;
  }
  
  public CustomMonetizationEventBuilder withProductId(String paramString)
  {
    setProductId(paramString);
    return this;
  }
  
  public CustomMonetizationEventBuilder withQuantity(int paramInt)
  {
    setQuantity(Integer.valueOf(paramInt));
    return this;
  }
  
  public CustomMonetizationEventBuilder withStore(String paramString)
  {
    setStore(paramString);
    return this;
  }
  
  public CustomMonetizationEventBuilder withTransactionId(String paramString)
  {
    setTransactionId(paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.monetization.CustomMonetizationEventBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */