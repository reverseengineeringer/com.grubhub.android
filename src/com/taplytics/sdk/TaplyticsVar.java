package com.taplytics.sdk;

import com.taplytics.as;
import com.taplytics.ck;

public class TaplyticsVar<T>
{
  public TaplyticsVarListener listener;
  public T value;
  
  public TaplyticsVar(String paramString, T paramT)
  {
    try
    {
      value = as.a().a(paramString, paramT, this, true);
      return;
    }
    catch (Exception paramString)
    {
      value = paramT;
      ck.b("exception starting TaplyticsVar", paramString);
    }
  }
  
  public TaplyticsVar(String paramString, T paramT, TaplyticsVarListener paramTaplyticsVarListener)
  {
    try
    {
      listener = paramTaplyticsVarListener;
      value = as.a().a(paramString, paramT, this, false);
      return;
    }
    catch (Exception paramString)
    {
      value = paramT;
      ck.b("exception starting TaplyticsVar", paramString);
    }
  }
  
  public T get()
  {
    return (T)value;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TaplyticsVar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */