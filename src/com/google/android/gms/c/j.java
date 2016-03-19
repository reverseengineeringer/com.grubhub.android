package com.google.android.gms.c;

import java.lang.reflect.Field;

public final class j<T>
  extends h
{
  private final T a;
  
  private j(T paramT)
  {
    a = paramT;
  }
  
  public static <T> g a(T paramT)
  {
    return new j(paramT);
  }
  
  public static <T> T a(g paramg)
  {
    if ((paramg instanceof j)) {
      return (T)a;
    }
    paramg = paramg.asBinder();
    Object localObject = paramg.getClass().getDeclaredFields();
    if (localObject.length == 1)
    {
      localObject = localObject[0];
      if (!((Field)localObject).isAccessible())
      {
        ((Field)localObject).setAccessible(true);
        try
        {
          paramg = ((Field)localObject).get(paramg);
          return paramg;
        }
        catch (NullPointerException paramg)
        {
          throw new IllegalArgumentException("Binder object is null.", paramg);
        }
        catch (IllegalArgumentException paramg)
        {
          throw new IllegalArgumentException("remoteBinder is the wrong class.", paramg);
        }
        catch (IllegalAccessException paramg)
        {
          throw new IllegalArgumentException("Could not access the field in remoteBinder.", paramg);
        }
      }
      throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
    }
    throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */