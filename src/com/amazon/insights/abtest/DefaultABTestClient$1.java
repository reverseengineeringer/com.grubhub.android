package com.amazon.insights.abtest;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.Variation;
import com.amazon.insights.VariationSet;
import com.amazon.insights.core.DefaultInsightsHandler;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.error.UnexpectedError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

class DefaultABTestClient$1
  implements Runnable
{
  DefaultABTestClient$1(DefaultABTestClient paramDefaultABTestClient, Set paramSet, AtomicReference paramAtomicReference, DefaultInsightsHandler paramDefaultInsightsHandler) {}
  
  public void run()
  {
    try
    {
      Object localObject1 = new ArrayList(val$projectNames);
      int k = DefaultABTestClient.access$000(this$0);
      ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
      int i = 0;
      Object localObject2;
      while (i < ((List)localObject1).size())
      {
        localObject2 = new HashSet();
        int j = 0;
        while ((j < k) && (i < ((List)localObject1).size()))
        {
          ((Set)localObject2).add(((List)localObject1).get(i));
          j += 1;
          i += 1;
        }
        localObject2 = this$0.allocateDefaultVariations((Set)localObject2, localConcurrentHashMap);
        localObject2 = this$0.allocateCachedVariations((Set)localObject2, localConcurrentHashMap);
        this$0.allocateServerVariations((Set)localObject2, localConcurrentHashMap, (Map)val$dimensions.get());
      }
      localObject1 = localConcurrentHashMap.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (((DefaultVariation)((Map.Entry)localObject2).getValue()).isDefault()) {
          DefaultABTestClient.access$100().devw("Resolved default variation: '" + ((DefaultVariation)((Map.Entry)localObject2).getValue()).getName() + "' for project: '" + (String)((Map.Entry)localObject2).getKey() + "'");
        }
      }
      val$getVariationHandler.onComplete(new VariationSet()
      {
        public boolean contains(String paramAnonymousString)
        {
          return localException.containsKey(paramAnonymousString);
        }
        
        public Variation getVariation(String paramAnonymousString)
        {
          if (contains(paramAnonymousString))
          {
            paramAnonymousString = (Variation)localException.get(paramAnonymousString);
            this$0.setVariationIdsFromAllocatedVariation((DefaultVariation)paramAnonymousString);
            return paramAnonymousString;
          }
          DefaultVariation.Builder localBuilder = new DefaultVariation.Builder();
          String str = paramAnonymousString;
          if (paramAnonymousString == null) {
            str = "UNKNOWN";
          }
          return localBuilder.setProjectName(str).setApplicationKey(DefaultABTestClient.access$200(this$0).getCredentials().getApplicationKey()).setUniqueId(DefaultABTestClient.access$200(this$0).getUniqueId()).build();
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
              this$0.setVariationIdsFromAllocatedVariation((DefaultVariation)localVariation);
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
          return localException.size();
        }
      });
    }
    catch (Exception localException)
    {
      val$getVariationHandler.onError(new UnexpectedError("An unexpected error occurred. Retrieval of variations could not be completed", localException));
      DefaultABTestClient.access$100().e("An unexpected error occurred attempting to get variations", localException);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.DefaultABTestClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */