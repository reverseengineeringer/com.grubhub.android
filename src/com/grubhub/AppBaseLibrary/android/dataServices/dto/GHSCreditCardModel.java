package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;

public class GHSCreditCardModel
  implements GHSIVaultedCreditCardModel
{
  private Long create_date;
  private String credit_card_last4;
  private String credit_card_type;
  private String diner_id;
  private Integer expiration_month;
  private Integer expiration_year;
  private Boolean expired;
  private String id;
  private Boolean isSingleUse;
  private Long last_used_date;
  
  public Long getCreateDate()
  {
    return create_date;
  }
  
  public String getCreditCardList4()
  {
    return credit_card_last4;
  }
  
  public String getCreditCardType()
  {
    return credit_card_type;
  }
  
  public String getDinerId()
  {
    return diner_id;
  }
  
  public Integer getExpirationMonth()
  {
    return expiration_month;
  }
  
  public Integer getExpirationYear()
  {
    return expiration_year;
  }
  
  public String getId()
  {
    return id;
  }
  
  public Long getLastUsedDate()
  {
    return last_used_date;
  }
  
  public Boolean isExpired()
  {
    return expired;
  }
  
  public boolean isSingleUse()
  {
    return (isSingleUse != null) && (isSingleUse.booleanValue());
  }
  
  public void setCreateDate(Long paramLong)
  {
    create_date = paramLong;
  }
  
  public void setCreditCardList4(String paramString)
  {
    credit_card_last4 = paramString;
  }
  
  public void setCreditCardType(String paramString)
  {
    credit_card_type = paramString;
  }
  
  public void setDinerId(String paramString)
  {
    diner_id = paramString;
  }
  
  public void setExpirationMonth(Integer paramInteger)
  {
    expiration_month = paramInteger;
  }
  
  public void setExpirationYear(Integer paramInteger)
  {
    expiration_year = paramInteger;
  }
  
  public void setExpired(boolean paramBoolean)
  {
    expired = Boolean.valueOf(paramBoolean);
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setIsSingleUse(boolean paramBoolean)
  {
    isSingleUse = Boolean.valueOf(paramBoolean);
  }
  
  public void setLastUsedDate(Long paramLong)
  {
    last_used_date = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreditCardModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */