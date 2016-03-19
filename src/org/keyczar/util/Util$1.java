package org.keyczar.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.KeyTypeDeserializer;
import org.keyczar.interfaces.KeyType.KeyTypeSerializer;

final class Util$1
  extends ThreadLocal<Gson>
{
  protected Gson initialValue()
  {
    return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().registerTypeAdapter(KeyType.class, new KeyType.KeyTypeSerializer()).registerTypeAdapter(KeyType.class, new KeyType.KeyTypeDeserializer()).create();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.util.Util.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */