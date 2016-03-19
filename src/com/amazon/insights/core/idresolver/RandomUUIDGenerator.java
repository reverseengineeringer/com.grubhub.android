package com.amazon.insights.core.idresolver;

import java.util.UUID;

public class RandomUUIDGenerator
  implements UniqueIdGenerator
{
  public String generateUniqueIdString()
  {
    return UUID.randomUUID().toString();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.idresolver.RandomUUIDGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */