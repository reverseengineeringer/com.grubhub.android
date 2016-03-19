package com.flurry.sdk;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class ik<T>
  extends WeakReference<T>
{
  public ik(T paramT)
  {
    super(paramT);
  }
  
  public boolean equals(Object paramObject)
  {
    Object localObject2 = get();
    Object localObject1 = paramObject;
    if ((paramObject instanceof Reference)) {
      localObject1 = ((Reference)paramObject).get();
    }
    if (localObject2 == null) {
      return localObject1 == null;
    }
    return localObject2.equals(localObject1);
  }
  
  public int hashCode()
  {
    Object localObject = get();
    if (localObject == null) {
      return super.hashCode();
    }
    return localObject.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */