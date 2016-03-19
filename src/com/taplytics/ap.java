package com.taplytics;

public final class ap
{
  public static boolean a(CharSequence paramCharSequence)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramCharSequence == null)
    {
      bool1 = true;
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramCharSequence.length()) {
        break label44;
      }
      bool1 = bool2;
      if (!Character.isWhitespace(paramCharSequence.charAt(i))) {
        break;
      }
      i += 1;
    }
    label44:
    return true;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */