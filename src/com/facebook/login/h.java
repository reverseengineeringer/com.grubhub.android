package com.facebook.login;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class h
{
  private static final Set<String> a = ;
  
  private static Set<String> a()
  {
    Collections.unmodifiableSet(new HashSet() {});
  }
  
  static boolean a(String paramString)
  {
    return (paramString != null) && ((paramString.startsWith("publish")) || (paramString.startsWith("manage")) || (a.contains(paramString)));
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */