package org.keyczar.interop;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.PrintStream;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.varia.NullAppender;
import org.keyczar.exceptions.KeyczarException;

public class Interop
{
  private static InteropCommand getCommandType(String paramString)
  {
    return InteropCommand.getCommand(new JsonParser().parse(paramString).getAsJsonObject().get("command").getAsString());
  }
  
  public static void main(String[] paramArrayOfString)
  {
    BasicConfigurator.configure(new NullAppender());
    Gson localGson = new Gson();
    switch (1.$SwitchMap$org$keyczar$interop$InteropCommand[getCommandType(paramArrayOfString[0]).ordinal()])
    {
    default: 
      System.out.println("No such command");
      System.exit(1);
    case 1: 
      for (;;)
      {
        return;
        paramArrayOfString = (Generator)localGson.fromJson(paramArrayOfString[0], Generator.class);
        try
        {
          paramArrayOfString = paramArrayOfString.generate();
          if (paramArrayOfString != null)
          {
            System.out.print(paramArrayOfString);
            return;
          }
        }
        catch (KeyczarException paramArrayOfString)
        {
          paramArrayOfString.printStackTrace();
          System.exit(1);
          return;
        }
      }
    case 2: 
      ((Creator)localGson.fromJson(paramArrayOfString[0], Creator.class)).create();
      return;
    }
    paramArrayOfString = (Tester)localGson.fromJson(paramArrayOfString[0], Tester.class);
    try
    {
      paramArrayOfString.test();
      return;
    }
    catch (KeyczarException paramArrayOfString)
    {
      paramArrayOfString.printStackTrace();
      System.exit(1);
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.Interop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */