package com.amazon.insights;

import java.util.Iterator;

public abstract interface VariationSet
  extends Iterable<Variation>
{
  public abstract boolean contains(String paramString);
  
  public abstract Variation getVariation(String paramString);
  
  public abstract Iterator<Variation> iterator();
  
  public abstract int size();
}

/* Location:
 * Qualified Name:     com.amazon.insights.VariationSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */