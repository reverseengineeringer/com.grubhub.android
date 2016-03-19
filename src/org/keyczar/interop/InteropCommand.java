package org.keyczar.interop;

import org.keyczar.i18n.Messages;

public enum InteropCommand
{
  CREATE("create"),  GENERATE("generate"),  TEST("test");
  
  private final String name;
  
  private InteropCommand(String paramString)
  {
    name = paramString;
  }
  
  public static InteropCommand getCommand(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    if (paramString.equalsIgnoreCase(CREATE.toString())) {
      return CREATE;
    }
    if (paramString.equalsIgnoreCase(GENERATE.toString())) {
      return GENERATE;
    }
    if (paramString.equalsIgnoreCase(TEST.toString())) {
      return TEST;
    }
    throw new IllegalArgumentException(Messages.getString("Command.UnknownCommand", new Object[] { paramString }));
  }
  
  public String toString()
  {
    return name;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.InteropCommand
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */