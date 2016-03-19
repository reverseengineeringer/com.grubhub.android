package org.keyczar.interfaces;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import org.keyczar.DefaultKeyType;

public class KeyType$KeyTypeDeserializer
  implements JsonDeserializer<KeyType>
{
  private static Map<String, KeyType> typeMap = new HashMap();
  
  static
  {
    DefaultKeyType[] arrayOfDefaultKeyType = DefaultKeyType.values();
    int j = arrayOfDefaultKeyType.length;
    int i = 0;
    while (i < j)
    {
      registerType(arrayOfDefaultKeyType[i]);
      i += 1;
    }
  }
  
  public static void registerType(KeyType paramKeyType)
  {
    String str = paramKeyType.getName();
    if (typeMap.containsKey(str)) {
      throw new IllegalArgumentException("Attempt to map two key types to the same name " + str);
    }
    typeMap.put(str, paramKeyType);
  }
  
  public KeyType deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    paramJsonElement = paramJsonElement.getAsJsonPrimitive().getAsString();
    if (!typeMap.containsKey(paramJsonElement)) {
      throw new IllegalArgumentException("Cannot deserialize " + paramJsonElement + " no such key has been registered.");
    }
    return (KeyType)typeMap.get(paramJsonElement);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.KeyType.KeyTypeDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */