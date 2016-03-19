package com.amazon.insights.abtest;

import com.amazon.insights.Variation;
import java.util.Iterator;

class DefaultABTestClient$1$1$1
  implements Iterator<Variation>
{
  DefaultABTestClient$1$1$1(DefaultABTestClient.1.1 param1, Iterator paramIterator) {}
  
  public boolean hasNext()
  {
    return val$iter.hasNext();
  }
  
  public Variation next()
  {
    Variation localVariation = (Variation)val$iter.next();
    this$2.this$1.this$0.setVariationIdsFromAllocatedVariation((DefaultVariation)localVariation);
    return localVariation;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("This iterator does not support removal of variations");
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.DefaultABTestClient.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */