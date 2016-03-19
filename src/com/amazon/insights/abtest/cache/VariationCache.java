package com.amazon.insights.abtest.cache;

import com.amazon.insights.abtest.DefaultVariation;
import java.util.Map;
import java.util.Set;

public abstract interface VariationCache
{
  public abstract boolean contains(DefaultVariation paramDefaultVariation);
  
  public abstract Map<String, DefaultVariation> get(Set<String> paramSet);
  
  public abstract Map<String, DefaultVariation> getAll();
  
  public abstract boolean put(DefaultVariation paramDefaultVariation);
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.cache.VariationCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */