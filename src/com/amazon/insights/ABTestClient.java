package com.amazon.insights;

public abstract interface ABTestClient
{
  public abstract InsightsHandler<VariationSet> getVariations(String... paramVarArgs);
}

/* Location:
 * Qualified Name:     com.amazon.insights.ABTestClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */