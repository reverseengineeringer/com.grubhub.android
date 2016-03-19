package com.amazon.insights.abtest;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.Variation;
import com.amazon.insights.VariationSet;
import com.amazon.insights.core.InsightsContext;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

class DefaultABTestClient$1$1
  implements VariationSet
{
  DefaultABTestClient$1$1(DefaultABTestClient.1 param1, Map paramMap) {}
  
  public boolean contains(String paramString)
  {
    return val$variations.containsKey(paramString);
  }
  
  public Variation getVariation(String paramString)
  {
    if (contains(paramString))
    {
      paramString = (Variation)val$variations.get(paramString);
      this$1.this$0.setVariationIdsFromAllocatedVariation((DefaultVariation)paramString);
      return paramString;
    }
    DefaultVariation.Builder localBuilder = new DefaultVariation.Builder();
    String str = paramString;
    if (paramString == null) {
      str = "UNKNOWN";
    }
    return localBuilder.setProjectName(str).setApplicationKey(DefaultABTestClient.access$200(this$1.this$0).getCredentials().getApplicationKey()).setUniqueId(DefaultABTestClient.access$200(this$1.this$0).getUniqueId()).build();
  }
  
  public Iterator<Variation> iterator()
  {
    new Iterator()
    {
      public boolean hasNext()
      {
        return val$iter.hasNext();
      }
      
      public Variation next()
      {
        Variation localVariation = (Variation)val$iter.next();
        this$1.this$0.setVariationIdsFromAllocatedVariation((DefaultVariation)localVariation);
        return localVariation;
      }
      
      public void remove()
      {
        throw new UnsupportedOperationException("This iterator does not support removal of variations");
      }
    };
  }
  
  public int size()
  {
    return val$variations.size();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.DefaultABTestClient.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */