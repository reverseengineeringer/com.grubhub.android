package com.amazon.insights.abtest;

import com.amazon.insights.Variation;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.JSONSerializable;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DefaultVariation
  implements Variation, JSONSerializable
{
  static final String DEFAULT_VARIATION_NAME = "DEFAULT";
  public static final DefaultVariation NULL_VARIATION = new DefaultVariation();
  private static final Logger logger = Logger.getLogger(DefaultVariation.class);
  private String applicationKey;
  private long experimentId;
  private Date expirationDate;
  private String projectName;
  private DefaultVariation.AllocationSource source;
  private Id uniqueId = Id.getEmptyId();
  private Map<String, String> variables;
  private long variationId;
  private String variationName;
  
  DefaultVariation()
  {
    this(new DefaultVariation.Builder().setVariationName("DEFAULT"));
  }
  
  DefaultVariation(DefaultVariation.Builder paramBuilder)
  {
    uniqueId = paramBuilder.getUniqueId();
    applicationKey = paramBuilder.getApplicationKey();
    experimentId = paramBuilder.getExperimentId();
    projectName = paramBuilder.getProjectName();
    variationId = paramBuilder.getVariationId();
    variationName = paramBuilder.getVariationName();
    expirationDate = paramBuilder.getExpirationDate();
    variables = Collections.unmodifiableMap(paramBuilder.getVariables());
    source = paramBuilder.getAllocationSource();
  }
  
  public static DefaultVariation newVariation(DefaultVariation.Builder paramBuilder)
  {
    if (paramBuilder == null) {
      return NULL_VARIATION;
    }
    return new DefaultVariation(paramBuilder);
  }
  
  public boolean containsVariable(String paramString)
  {
    return variables.containsKey(paramString);
  }
  
  public DefaultVariation.AllocationSource getAllocationSource()
  {
    return source;
  }
  
  public String getApplicationKey()
  {
    return applicationKey;
  }
  
  public long getExperimentId()
  {
    return experimentId;
  }
  
  public Date getExpirationDate()
  {
    return new Date(expirationDate.getTime());
  }
  
  public String getName()
  {
    if (variationName == null) {
      return "DEFAULT";
    }
    return variationName.toUpperCase();
  }
  
  public String getProjectName()
  {
    return projectName;
  }
  
  public Id getUniqueId()
  {
    return uniqueId;
  }
  
  public boolean getVariableAsBoolean(String paramString, boolean paramBoolean)
  {
    try
    {
      if (variables.containsKey(paramString)) {
        return Boolean.parseBoolean((String)variables.get(paramString));
      }
      logger.devw("Variable '" + paramString + "' does not exist in the variation. Returning default value");
      return paramBoolean;
    }
    catch (Exception localException)
    {
      logger.devw("Variable '" + paramString + "' can not be translated to a boolean. value is: " + (String)variables.get(paramString));
      logger.i("Variable could not be translated to a boolean", localException);
    }
    return paramBoolean;
  }
  
  public double getVariableAsDouble(String paramString, double paramDouble)
  {
    try
    {
      if (variables.containsKey(paramString)) {
        return Double.parseDouble((String)variables.get(paramString));
      }
      logger.devw("Variable '" + paramString + "' does not exist in the variation. Returning default value");
      return paramDouble;
    }
    catch (Exception localException)
    {
      logger.devw("Variable '" + paramString + "' can not be translated to a double. value is: " + (String)variables.get(paramString));
      logger.i("Variable could not be translated to a double", localException);
    }
    return paramDouble;
  }
  
  public float getVariableAsFloat(String paramString, float paramFloat)
  {
    try
    {
      if (variables.containsKey(paramString)) {
        return Float.parseFloat((String)variables.get(paramString));
      }
      logger.devw("Variable '" + paramString + "' does not exist in the variation. Returning default value");
      return paramFloat;
    }
    catch (Exception localException)
    {
      logger.devw("Variable '" + paramString + "' can not be translated to a float. value is: " + (String)variables.get(paramString));
      logger.i("Variable could not be translated to a float", localException);
    }
    return paramFloat;
  }
  
  public int getVariableAsInt(String paramString, int paramInt)
  {
    try
    {
      if (variables.containsKey(paramString)) {
        return Integer.decode((String)variables.get(paramString)).intValue();
      }
      logger.devw("Variable '" + paramString + "' does not exist in the variation. Returning default value");
      return paramInt;
    }
    catch (Exception localException)
    {
      logger.devw("Variable '" + paramString + "' can not be translated to an int. value is: " + (String)variables.get(paramString));
      logger.i("variable could not be translated to an int", localException);
    }
    return paramInt;
  }
  
  public long getVariableAsLong(String paramString, long paramLong)
  {
    try
    {
      if (variables.containsKey(paramString)) {
        return Long.decode((String)variables.get(paramString)).longValue();
      }
      logger.devw("Variable '" + paramString + "' does not exist in the variation. Returning default value");
      return paramLong;
    }
    catch (Exception localException)
    {
      logger.devw("Variable '" + paramString + "' can not be translated to a long. value is: " + (String)variables.get(paramString));
      logger.i("Variable could not be translated to a long", localException);
    }
    return paramLong;
  }
  
  public short getVariableAsShort(String paramString, short paramShort)
  {
    try
    {
      if (variables.containsKey(paramString)) {
        return Short.decode((String)variables.get(paramString)).shortValue();
      }
      logger.devw("Variable '" + paramString + "' does not exist in the variation. Returning default value");
      return paramShort;
    }
    catch (Exception localException)
    {
      logger.devw("Variable '" + paramString + "' can not be translated to a short. value is: " + (String)variables.get(paramString));
      logger.i("Variable could not be translated to a short", localException);
    }
    return paramShort;
  }
  
  public String getVariableAsString(String paramString1, String paramString2)
  {
    if (variables.containsKey(paramString1)) {
      return (String)variables.get(paramString1);
    }
    logger.devw("Variable '" + paramString1 + "' does not exist in the variation. Returning default value");
    return paramString2;
  }
  
  public long getVariationId()
  {
    return variationId;
  }
  
  public boolean isDefault()
  {
    return variationName.equals("DEFAULT");
  }
  
  public boolean isExpired()
  {
    return expirationDate.before(new Date(System.currentTimeMillis()));
  }
  
  public JSONObject toJSONObject()
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      localJSONObject1.put("applicationKey", getApplicationKey());
      localJSONObject1.put("variationId", getVariationId());
      localJSONObject1.put("experimentId", getExperimentId());
      localJSONObject1.put("projectName", getProjectName());
      localJSONObject1.put("uniqueId", getUniqueId().getValue());
      localJSONObject1.put("expirationDate", expirationDate.getTime());
      localJSONObject1.put("variationName", getName());
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = variables.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("name", localEntry.getKey());
        localJSONObject2.put("value", localEntry.getValue());
        localJSONArray.put(localJSONObject2);
      }
      localJSONException.put("variables", localJSONArray);
    }
    catch (JSONException localJSONException)
    {
      logger.e("Failed to translate the variation to json", localJSONException);
      return null;
    }
    return localJSONException;
  }
  
  public String toString()
  {
    JSONObject localJSONObject = toJSONObject();
    if (localJSONObject != null) {}
    try
    {
      return localJSONObject.toString(4);
    }
    catch (JSONException localJSONException) {}
    return "Failed to convert Variation to String";
    return localJSONObject.toString();
  }
  
  public Iterator<Map.Entry<String, String>> variablesIterator()
  {
    return variables.entrySet().iterator();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.DefaultVariation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */