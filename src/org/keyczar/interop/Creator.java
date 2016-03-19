package org.keyczar.interop;

import java.util.Iterator;
import java.util.List;
import org.keyczar.KeyczarTool;

public class Creator
{
  private final String command;
  private final List<List<String>> keyczartCommands;
  
  public Creator(String paramString, List<List<String>> paramList)
  {
    command = paramString;
    keyczartCommands = paramList;
  }
  
  public void create()
  {
    Iterator localIterator = keyczartCommands.iterator();
    while (localIterator.hasNext())
    {
      List localList = (List)localIterator.next();
      KeyczarTool.main((String[])localList.toArray(new String[localList.size()]));
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.Creator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */