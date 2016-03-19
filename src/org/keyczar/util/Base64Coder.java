package org.keyczar.util;

import org.keyczar.exceptions.Base64DecodingException;
import org.keyczar.i18n.Messages;

public class Base64Coder
{
  private static final char[] ALPHABET;
  private static final byte[] DECODE;
  private static final char[] WHITESPACE;
  
  static
  {
    int k = 0;
    ALPHABET = new char[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
    DECODE = new byte[''];
    WHITESPACE = new char[] { 9, 10, 13, 32, 12 };
    int i = 0;
    while (i < DECODE.length)
    {
      DECODE[i] = -1;
      i += 1;
    }
    i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= WHITESPACE.length) {
        break;
      }
      DECODE[WHITESPACE[i]] = -2;
      i += 1;
    }
    while (j < ALPHABET.length)
    {
      DECODE[ALPHABET[j]] = ((byte)j);
      j += 1;
    }
  }
  
  @Deprecated
  public static byte[] decode(String paramString)
    throws Base64DecodingException
  {
    return decodeWebSafe(paramString);
  }
  
  public static byte[] decodeMime(String paramString)
    throws Base64DecodingException
  {
    return decodeWebSafe(paramString.replace('+', '-').replace('/', '_'));
  }
  
  public static byte[] decodeWebSafe(String paramString)
    throws Base64DecodingException
  {
    paramString = paramString.toCharArray();
    int j = paramString.length;
    int i = j;
    if (paramString[(j - 1)] == '=') {
      i = j - 1;
    }
    j = i;
    if (paramString[(i - 1)] == '=') {
      j = i - 1;
    }
    int m = paramString.length;
    i = 0;
    int k;
    for (int n = 0; i < m; n = k)
    {
      k = n;
      if (isWhiteSpace(paramString[i])) {
        k = n + 1;
      }
      i += 1;
    }
    int i4 = j - n;
    i = i4 / 4 * 3;
    switch (i4 % 4)
    {
    }
    byte[] arrayOfByte;
    int i2;
    for (;;)
    {
      arrayOfByte = new byte[i];
      int i1 = 0;
      i2 = 0;
      k = 0;
      j = 0;
      while (i1 < i4 + n)
      {
        m = k;
        i = j;
        if (!isWhiteSpace(paramString[i1]))
        {
          i = j << 6 | getByte(paramString[i1]);
          m = k + 1;
        }
        int i3 = i2;
        k = m;
        j = i;
        if (m == 4)
        {
          j = i2 + 1;
          arrayOfByte[i2] = ((byte)(i >> 16));
          k = j + 1;
          arrayOfByte[j] = ((byte)(i >> 8));
          i3 = k + 1;
          arrayOfByte[k] = ((byte)i);
          k = 0;
          j = 0;
        }
        i1 += 1;
        i2 = i3;
      }
      throw new Base64DecodingException(Messages.getString("Base64Coder.IllegalLength", new Object[] { Integer.valueOf(i4) }));
      i += 1;
      continue;
      i += 2;
    }
    switch (k)
    {
    default: 
      return arrayOfByte;
    case 2: 
      arrayOfByte[i2] = ((byte)(j >> 4));
      return arrayOfByte;
    }
    i = i2 + 1;
    arrayOfByte[i2] = ((byte)(j >> 10));
    arrayOfByte[i] = ((byte)(j >> 2));
    return arrayOfByte;
  }
  
  @Deprecated
  public static String encode(byte[] paramArrayOfByte)
  {
    return encodeWebSafe(paramArrayOfByte);
  }
  
  public static String encodeMime(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    String str = encodeWebSafe(paramArrayOfByte).replace('-', '+').replace('_', '/');
    paramArrayOfByte = str;
    switch (str.length() % 4)
    {
    case 1: 
    default: 
      throw new RuntimeException("Bug in Base64 encoder");
    case 2: 
      paramArrayOfByte = str + "==";
    case 0: 
      return paramArrayOfByte;
    }
    return str + "=";
  }
  
  public static String encodeWebSafe(byte[] paramArrayOfByte)
  {
    int k = 0;
    int n = paramArrayOfByte.length / 3;
    int m = paramArrayOfByte.length % 3;
    int i = n * 4;
    switch (m)
    {
    }
    char[] arrayOfChar;
    int j;
    for (;;)
    {
      arrayOfChar = new char[i];
      j = 0;
      i = 0;
      while (j < n)
      {
        int i3 = k + 1;
        int i1 = paramArrayOfByte[k];
        int i2 = i3 + 1;
        i3 = paramArrayOfByte[i3];
        k = i2 + 1;
        i1 = (i3 & 0xFF) << 8 | (i1 & 0xFF) << 16 | paramArrayOfByte[i2] & 0xFF;
        i2 = i + 1;
        arrayOfChar[i] = ALPHABET[(i1 >> 18 & 0x3F)];
        i = i2 + 1;
        arrayOfChar[i2] = ALPHABET[(i1 >> 12 & 0x3F)];
        i2 = i + 1;
        arrayOfChar[i] = ALPHABET[(i1 >> 6 & 0x3F)];
        i = i2 + 1;
        arrayOfChar[i2] = ALPHABET[(i1 & 0x3F)];
        j += 1;
      }
      i += 2;
      continue;
      i += 3;
    }
    if (m > 0)
    {
      n = k + 1;
      k = (paramArrayOfByte[k] & 0xFF) << 16;
      j = k;
      if (m == 2) {
        j = k | (paramArrayOfByte[n] & 0xFF) << 8;
      }
      k = i + 1;
      arrayOfChar[i] = ALPHABET[(j >> 18 & 0x3F)];
      i = k + 1;
      arrayOfChar[k] = ALPHABET[(j >> 12 & 0x3F)];
      if (m == 2) {
        arrayOfChar[i] = ALPHABET[(j >> 6 & 0x3F)];
      }
    }
    return new String(arrayOfChar);
  }
  
  private static byte getByte(int paramInt)
    throws Base64DecodingException
  {
    if ((paramInt < 0) || (paramInt > 127) || (DECODE[paramInt] == -1)) {
      throw new Base64DecodingException(Messages.getString("Base64Coder.IllegalCharacter", new Object[] { Integer.valueOf(paramInt) }));
    }
    return DECODE[paramInt];
  }
  
  private static boolean isWhiteSpace(int paramInt)
  {
    return DECODE[paramInt] == -2;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.util.Base64Coder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */