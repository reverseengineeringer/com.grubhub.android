package com.amazon.insights.abtest;

import com.amazon.insights.core.idresolver.Id;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DefaultVariation$Builder
{
  private String applicationKey = "";
  private Date appliedDate = new Date(0L);
  private long experimentId = 0L;
  private Date expirationDate = new Date(0L);
  private String projectName = "";
  private DefaultVariation.AllocationSource source = DefaultVariation.AllocationSource.DEFAULT;
  private Id uniqueId = Id.getEmptyId();
  private Map<String, String> variables = new ConcurrentHashMap();
  private long variationId = 0L;
  private String variationName = "DEFAULT";
  
  public DefaultVariation build()
  {
    return new DefaultVariation(this);
  }
  
  public DefaultVariation.AllocationSource getAllocationSource()
  {
    return source;
  }
  
  public String getApplicationKey()
  {
    return applicationKey;
  }
  
  public Date getAppliedDate()
  {
    return new Date(appliedDate.getTime());
  }
  
  public long getExperimentId()
  {
    return experimentId;
  }
  
  public Date getExpirationDate()
  {
    return new Date(expirationDate.getTime());
  }
  
  public String getProjectName()
  {
    return projectName;
  }
  
  public Id getUniqueId()
  {
    return uniqueId;
  }
  
  public Map<String, String> getVariables()
  {
    return variables;
  }
  
  public long getVariationId()
  {
    return variationId;
  }
  
  public String getVariationName()
  {
    return variationName;
  }
  
  public void setAllocationSource(DefaultVariation.AllocationSource paramAllocationSource)
  {
    source = paramAllocationSource;
  }
  
  public Builder setApplicationKey(String paramString)
  {
    if (paramString != null) {
      applicationKey = paramString;
    }
    return this;
  }
  
  public Builder setAppliedDate(Date paramDate)
  {
    if (paramDate != null) {
      appliedDate = new Date(paramDate.getTime());
    }
    return this;
  }
  
  public Builder setExperimentId(long paramLong)
  {
    experimentId = paramLong;
    return this;
  }
  
  public Builder setExpirationDate(Date paramDate)
  {
    if (paramDate != null) {
      expirationDate = new Date(paramDate.getTime());
    }
    return this;
  }
  
  public Builder setProjectName(String paramString)
  {
    if (paramString != null) {
      projectName = paramString;
    }
    return this;
  }
  
  public Builder setUniqueId(Id paramId)
  {
    if (paramId != null) {
      uniqueId = paramId;
    }
    return this;
  }
  
  public Builder setVariables(Map<String, String> paramMap)
  {
    if (paramMap != null) {
      variables = new ConcurrentHashMap(paramMap);
    }
    return this;
  }
  
  public Builder setVariationId(long paramLong)
  {
    variationId = paramLong;
    return this;
  }
  
  public Builder setVariationName(String paramString)
  {
    if (paramString != null) {
      variationName = paramString;
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.DefaultVariation.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */