package com.taplytics;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

public class m
{
  Class a;
  Object b;
  HashMap<String, Method> c = new HashMap();
  
  public m(Object paramObject)
  {
    a = paramObject.getClass();
    b = paramObject;
  }
  
  public m(String paramString)
    throws IllegalAccessException, InstantiationException, ClassNotFoundException
  {
    a = Class.forName(paramString);
    b = a.newInstance();
  }
  
  public m(String paramString1, String paramString2, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
    throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    a = Class.forName(paramString1);
    b = a.getDeclaredMethod(paramString2, paramArrayOfClass).invoke(null, paramArrayOfObject);
  }
  
  public m(String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
    throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException
  {
    a = Class.forName(paramString);
    b = a.getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
  }
  
  public static Object a(String paramString1, String paramString2)
    throws ClassNotFoundException, IllegalAccessException, NoSuchFieldException
  {
    paramString1 = Class.forName(paramString1).getDeclaredField(paramString2);
    paramString1.setAccessible(true);
    return paramString1.get(null);
  }
  
  public Object a()
  {
    return b;
  }
  
  public Object a(String paramString)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (!c.containsKey(paramString)) {
      c.put(paramString, a.getDeclaredMethod(paramString, new Class[0]));
    }
    return ((Method)c.get(paramString)).invoke(b, new Object[0]);
  }
  
  public Object a(String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    int j = paramArrayOfClass.length;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString);
    int i = 0;
    while (i < j)
    {
      ((StringBuilder)localObject).append(paramArrayOfClass[i].toString());
      i += 1;
    }
    localObject = ((StringBuilder)localObject).toString();
    if (!c.containsKey(localObject))
    {
      paramString = a.getDeclaredMethod(paramString, paramArrayOfClass);
      paramString.setAccessible(true);
      c.put(localObject, paramString);
    }
    return ((Method)c.get(localObject)).invoke(b, paramArrayOfObject);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */