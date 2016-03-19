package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

public class GooglePlayMonetizationEventBuilder
  extends MonetizationEventBuilder
{
  private static Logger logger = Logger.getLogger(GooglePlayMonetizationEventBuilder.class);
  
  protected GooglePlayMonetizationEventBuilder(EventClient paramEventClient)
  {
    super(paramEventClient);
    setStore("Google Play");
  }
  
  public static GooglePlayMonetizationEventBuilder create(EventClient paramEventClient)
  {
    return new GooglePlayMonetizationEventBuilder(paramEventClient);
  }
  
  protected boolean isValid()
  {
    if (getProductId() == null)
    {
      logger.devw("Cannot build Google Monetization event: it is missing the product id");
      return false;
    }
    if (getQuantity() == null)
    {
      logger.devw("Google Monetization event is not valid: it is missing the quantity");
      return false;
    }
    if (getFormattedItemPrice() == null)
    {
      logger.devw("Google Monetization event is not valid: it is missing the formatted localized price");
      return false;
    }
    if (getTransactionId() == null)
    {
      logger.devw("Google Monetization event is not valid: it is missing the transaction id");
      return false;
    }
    return true;
  }
  
  public GooglePlayMonetizationEventBuilder withFormattedItemPrice(String paramString)
  {
    setFormattedItemPrice(paramString);
    return this;
  }
  
  public GooglePlayMonetizationEventBuilder withProductId(String paramString)
  {
    setProductId(paramString);
    return this;
  }
  
  public GooglePlayMonetizationEventBuilder withQuantity(int paramInt)
  {
    setQuantity(Integer.valueOf(paramInt));
    return this;
  }
  
  public GooglePlayMonetizationEventBuilder withTransactionId(String paramString)
  {
    setTransactionId(paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.monetization.GooglePlayMonetizationEventBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */