package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

public class AmazonMonetizationEventBuilder
  extends MonetizationEventBuilder
{
  private static Logger logger = Logger.getLogger(AmazonMonetizationEventBuilder.class);
  
  protected AmazonMonetizationEventBuilder(EventClient paramEventClient)
  {
    super(paramEventClient);
    setStore("Amazon");
  }
  
  public static AmazonMonetizationEventBuilder create(EventClient paramEventClient)
  {
    return new AmazonMonetizationEventBuilder(paramEventClient);
  }
  
  protected boolean isValid()
  {
    if (getProductId() == null)
    {
      logger.devw("Amazon Monetization event is not valid: it is missing the product id");
      return false;
    }
    if (getQuantity() == null)
    {
      logger.devw("Amazon Monetization event is not valid: it is missing the quantity");
      return false;
    }
    if (getFormattedItemPrice() == null)
    {
      logger.devw("Amazon Monetization event is not valid: it is missing the formatted localized price");
      return false;
    }
    return true;
  }
  
  public AmazonMonetizationEventBuilder withFormattedItemPrice(String paramString)
  {
    setFormattedItemPrice(paramString);
    return this;
  }
  
  public AmazonMonetizationEventBuilder withProductId(String paramString)
  {
    setProductId(paramString);
    return this;
  }
  
  public AmazonMonetizationEventBuilder withQuantity(int paramInt)
  {
    setQuantity(Integer.valueOf(paramInt));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.monetization.AmazonMonetizationEventBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */