package org.keyczar.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.keyczar.exceptions.Base64DecodingException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.KeyTypeDeserializer;
import org.keyczar.interfaces.KeyType.KeyTypeSerializer;

public class Util
{
  private static final ConcurrentLinkedQueue<MessageDigest> DIGEST_QUEUE = new ConcurrentLinkedQueue();
  private static final ThreadLocal<Gson> GSON_THREAD_LOCAL = new ThreadLocal()
  {
    protected Gson initialValue()
    {
      return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().registerTypeAdapter(KeyType.class, new KeyType.KeyTypeSerializer()).registerTypeAdapter(KeyType.class, new KeyType.KeyTypeDeserializer()).create();
    }
  };
  private static final ConcurrentLinkedQueue<SecureRandom> RAND_QUEUE = new ConcurrentLinkedQueue();
  private static final int READ_BUF_SIZE = 8192;
  
  public static byte[] cat(byte[]... paramVarArgs)
  {
    int k = paramVarArgs.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    byte[] arrayOfByte1 = new byte[j];
    k = paramVarArgs.length;
    i = 0;
    j = 0;
    while (i < k)
    {
      byte[] arrayOfByte2 = paramVarArgs[i];
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, j, arrayOfByte2.length);
      j += arrayOfByte2.length;
      i += 1;
    }
    return arrayOfByte1;
  }
  
  public static BigInteger decodeBigInteger(String paramString)
    throws Base64DecodingException
  {
    return new BigInteger(Base64Coder.decodeWebSafe(paramString));
  }
  
  public static String encodeBigInteger(BigInteger paramBigInteger)
  {
    return Base64Coder.encodeWebSafe(paramBigInteger.toByteArray());
  }
  
  public static byte[] fromInt(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    writeInt(paramInt, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public static byte[] fromLong(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    writeLong(paramLong, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  public static KeyPair generateKeyPair(String paramString, int paramInt)
    throws KeyczarException
  {
    try
    {
      paramString = KeyPairGenerator.getInstance(paramString);
      paramString.initialize(paramInt);
      paramString = paramString.generateKeyPair();
      return paramString;
    }
    catch (GeneralSecurityException paramString)
    {
      throw new KeyczarException(paramString);
    }
  }
  
  public static Gson gson()
  {
    return (Gson)GSON_THREAD_LOCAL.get();
  }
  
  public static byte[] hash(byte[]... paramVarArgs)
    throws KeyczarException
  {
    MessageDigest localMessageDigest2 = (MessageDigest)DIGEST_QUEUE.poll();
    MessageDigest localMessageDigest1 = localMessageDigest2;
    if (localMessageDigest2 == null) {}
    try
    {
      localMessageDigest1 = MessageDigest.getInstance("SHA-1");
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        localMessageDigest1.update(paramVarArgs[i]);
        i += 1;
      }
      paramVarArgs = localMessageDigest1.digest();
    }
    catch (NoSuchAlgorithmException paramVarArgs)
    {
      throw new KeyczarException(paramVarArgs);
    }
    DIGEST_QUEUE.add(localMessageDigest1);
    return paramVarArgs;
  }
  
  public static byte[] lenPrefix(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return fromInt(0);
    }
    return ByteBuffer.allocate(paramArrayOfByte.length + 4).putInt(paramArrayOfByte.length).put(paramArrayOfByte).array();
  }
  
  public static byte[] lenPrefixPack(byte[]... paramVarArgs)
  {
    int k = 0;
    int i = paramVarArgs.length;
    int m = paramVarArgs.length;
    int j = (i + 1) * 4;
    i = 0;
    while (i < m)
    {
      j += paramVarArgs[i].length;
      i += 1;
    }
    byte[] arrayOfByte1 = new byte[j];
    ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte1);
    localByteBuffer.putInt(paramVarArgs.length);
    j = paramVarArgs.length;
    i = k;
    while (i < j)
    {
      byte[] arrayOfByte2 = paramVarArgs[i];
      localByteBuffer.putInt(arrayOfByte2.length);
      localByteBuffer.put(arrayOfByte2);
      i += 1;
    }
    return arrayOfByte1;
  }
  
  public static byte[][] lenPrefixUnpack(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte);
    int j = paramArrayOfByte.getInt();
    byte[][] arrayOfByte = new byte[j][];
    int i = 0;
    while (i < j)
    {
      byte[] arrayOfByte1 = new byte[paramArrayOfByte.getInt()];
      paramArrayOfByte.get(arrayOfByte1);
      arrayOfByte[i] = arrayOfByte1;
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] prefixHash(byte[]... paramVarArgs)
    throws KeyczarException
  {
    Object localObject2 = (MessageDigest)DIGEST_QUEUE.poll();
    Object localObject1 = localObject2;
    if (localObject2 == null) {}
    try
    {
      localObject1 = MessageDigest.getInstance("SHA-1");
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        localObject2 = paramVarArgs[i];
        ((MessageDigest)localObject1).update(fromInt(localObject2.length));
        ((MessageDigest)localObject1).update((byte[])localObject2);
        i += 1;
      }
      paramVarArgs = ((MessageDigest)localObject1).digest();
    }
    catch (NoSuchAlgorithmException paramVarArgs)
    {
      throw new KeyczarException(paramVarArgs);
    }
    DIGEST_QUEUE.add(localObject1);
    return paramVarArgs;
  }
  
  public static void rand(byte[] paramArrayOfByte)
  {
    SecureRandom localSecureRandom2 = (SecureRandom)RAND_QUEUE.poll();
    SecureRandom localSecureRandom1 = localSecureRandom2;
    if (localSecureRandom2 == null) {
      localSecureRandom1 = new SecureRandom();
    }
    localSecureRandom1.nextBytes(paramArrayOfByte);
    RAND_QUEUE.add(localSecureRandom1);
  }
  
  public static byte[] rand(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    rand(arrayOfByte);
    return arrayOfByte;
  }
  
  static int readInt(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramInt + 1;
    paramInt = paramArrayOfByte[paramInt];
    int i = j + 1;
    j = paramArrayOfByte[j];
    int k = i + 1;
    return 0x0 | (paramInt & 0xFF) << 24 | (j & 0xFF) << 16 | (paramArrayOfByte[i] & 0xFF) << 8 | paramArrayOfByte[k] & 0xFF;
  }
  
  static long readLong(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    long l1 = paramArrayOfByte[paramInt];
    paramInt = i + 1;
    long l2 = paramArrayOfByte[i];
    i = paramInt + 1;
    long l3 = paramArrayOfByte[paramInt];
    paramInt = i + 1;
    long l4 = paramArrayOfByte[i];
    i = paramInt + 1;
    long l5 = paramArrayOfByte[paramInt];
    paramInt = i + 1;
    long l6 = paramArrayOfByte[i];
    i = paramInt + 1;
    return 0L | (l1 & 0xFF) << 56 | (l2 & 0xFF) << 48 | (l3 & 0xFF) << 40 | (l4 & 0xFF) << 32 | (l5 & 0xFF) << 24 | (l6 & 0xFF) << 16 | (paramArrayOfByte[paramInt] & 0xFF) << 8 | paramArrayOfByte[i] & 0xFF;
  }
  
  public static byte[] readStreamFully(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[' '];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static boolean safeArrayEquals(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null)) {
      if (paramArrayOfByte1 != paramArrayOfByte2) {}
    }
    int j;
    do
    {
      return true;
      return false;
      if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
        return false;
      }
      int i = 0;
      j = 0;
      while (i < paramArrayOfByte1.length)
      {
        j = (byte)(j | paramArrayOfByte1[i] ^ paramArrayOfByte2[i]);
        i += 1;
      }
    } while (j == 0);
    return false;
  }
  
  public static List<String> split(String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramString.length();
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramString.substring(i, Math.min(j, i + paramInt)));
      i += paramInt;
    }
    return localArrayList;
  }
  
  public static byte[] stripLeadingZeros(byte[] paramArrayOfByte)
  {
    int i = 0;
    while ((i < paramArrayOfByte.length) && (paramArrayOfByte[i] == 0)) {
      i += 1;
    }
    if (i == 0) {
      return paramArrayOfByte;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length - i];
    System.arraycopy(paramArrayOfByte, i, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public static int toInt(byte[] paramArrayOfByte)
  {
    return readInt(paramArrayOfByte, 0);
  }
  
  public static long toLong(byte[] paramArrayOfByte)
  {
    return readLong(paramArrayOfByte, 0);
  }
  
  static void writeInt(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 24));
    paramInt2 = i + 1;
    paramArrayOfByte[i] = ((byte)(paramInt1 >> 16));
    i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 8));
    paramArrayOfByte[i] = ((byte)paramInt1);
  }
  
  static void writeLong(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 56));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >> 48));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 40));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >> 32));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 24));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >> 16));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 8));
    paramArrayOfByte[i] = ((byte)(int)paramLong);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.util.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */