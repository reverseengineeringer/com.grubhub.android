package org.keyczar.interfaces;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;

public class KeyType$KeyTypeSerializer
  implements JsonSerializer<KeyType>
{
  public JsonElement serialize(KeyType paramKeyType, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    return new JsonPrimitive(paramKeyType.getName());
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interfaces.KeyType.KeyTypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */