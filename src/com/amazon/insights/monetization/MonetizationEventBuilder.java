package com.amazon.insights.monetization;

import com.amazon.insights.Event;
import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.StringUtil;

public abstract class MonetizationEventBuilder
{
  static final String AMAZON_STORE = "Amazon";
  static final String GOOGLE_PLAY_STORE = "Google Play";
  static final String PURCHASE_EVENT_CURRENCY_ATTR = "_currency";
  static final String PURCHASE_EVENT_ITEM_PRICE_METRIC = "_item_price";
  static final String PURCHASE_EVENT_LOCALE_ATTR = "_locale";
  static final String PURCHASE_EVENT_NAME = "_monetization.purchase";
  static final String PURCHASE_EVENT_PRICE_FORMATTED_ATTR = "_item_price_formatted";
  static final String PURCHASE_EVENT_PRODUCT_ID_ATTR = "_product_id";
  static final String PURCHASE_EVENT_QUANTITY_METRIC = "_quantity";
  static final String PURCHASE_EVENT_STORE_ATTR = "_store";
  static final String PURCHASE_EVENT_TRANSACTION_ID_ATTR = "_transaction_id";
  static final String VIRTUAL_STORE = "Virtual";
  private static Logger logger = Logger.getLogger(MonetizationEventBuilder.class);
  private String currency;
  private final EventClient eventClient;
  private String formattedItemPrice;
  private Double itemPrice;
  private String productId;
  private Integer quantity;
  private String store;
  private String transactionId;
  
  protected MonetizationEventBuilder(EventClient paramEventClient)
  {
    eventClient = paramEventClient;
  }
  
  private boolean doBaseValidation()
  {
    if (eventClient == null)
    {
      logger.devw("Cannot build Monetization event: the eventClient is null");
      return false;
    }
    if (StringUtil.isNullOrEmpty(productId))
    {
      logger.devw("Base Monetization event is not valid: it is missing the product id");
      return false;
    }
    if (quantity == null)
    {
      logger.devw("Base Monetization event is not valid: it is missing the quantity");
      return false;
    }
    if (StringUtil.isNullOrEmpty(store))
    {
      logger.devw("Base Monetization event is not valid: it is missing the store");
      return false;
    }
    if (((StringUtil.isNullOrEmpty(currency)) || (itemPrice == null)) && (StringUtil.isNullOrEmpty(formattedItemPrice)))
    {
      logger.devw("Base Monetization event is not valid: it requires the formatted price or the currency and price");
      return false;
    }
    return true;
  }
  
  public Event build()
  {
    Event localEvent2 = null;
    Event localEvent1 = localEvent2;
    if (isValid())
    {
      localEvent1 = localEvent2;
      if (doBaseValidation())
      {
        localEvent2 = eventClient.createEvent("_monetization.purchase");
        localEvent2.addAttribute("_product_id", productId);
        localEvent2.addAttribute("_store", store);
        localEvent2.addMetric("_quantity", quantity);
        if (formattedItemPrice != null) {
          localEvent2.addAttribute("_item_price_formatted", formattedItemPrice);
        }
        if (itemPrice != null) {
          localEvent2.addMetric("_item_price", itemPrice);
        }
        if (transactionId != null) {
          localEvent2.addAttribute("_transaction_id", transactionId);
        }
        localEvent1 = localEvent2;
        if (currency != null)
        {
          localEvent2.addAttribute("_currency", currency);
          localEvent1 = localEvent2;
        }
      }
    }
    return localEvent1;
  }
  
  protected String getCurrency()
  {
    return currency;
  }
  
  protected String getFormattedItemPrice()
  {
    return formattedItemPrice;
  }
  
  protected Double getItemPrice()
  {
    return itemPrice;
  }
  
  protected String getProductId()
  {
    return productId;
  }
  
  protected Integer getQuantity()
  {
    return quantity;
  }
  
  protected String getStore()
  {
    return store;
  }
  
  protected String getTransactionId()
  {
    return transactionId;
  }
  
  protected abstract boolean isValid();
  
  protected void setCurrency(String paramString)
  {
    currency = paramString;
  }
  
  protected void setFormattedItemPrice(String paramString)
  {
    formattedItemPrice = paramString;
  }
  
  protected void setItemPrice(Double paramDouble)
  {
    itemPrice = paramDouble;
  }
  
  protected void setProductId(String paramString)
  {
    productId = paramString;
  }
  
  protected void setQuantity(Integer paramInteger)
  {
    quantity = paramInteger;
  }
  
  protected void setStore(String paramString)
  {
    store = paramString;
  }
  
  protected void setTransactionId(String paramString)
  {
    transactionId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.monetization.MonetizationEventBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */