package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class a
{
  public static int a(int paramInt)
  {
    return 0xFFFF & paramInt;
  }
  
  public static int a(Parcel paramParcel)
  {
    return paramParcel.readInt();
  }
  
  public static int a(Parcel paramParcel, int paramInt)
  {
    if ((paramInt & 0xFFFF0000) != -65536) {
      return paramInt >> 16 & 0xFFFF;
    }
    return paramParcel.readInt();
  }
  
  public static <T extends Parcelable> T a(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = (Parcelable)paramCreator.createFromParcel(paramParcel);
    paramParcel.setDataPosition(paramInt + i);
    return paramCreator;
  }
  
  private static void a(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    paramInt1 = a(paramParcel, paramInt1);
    if (paramInt1 != paramInt2) {
      throw new b("Expected size " + paramInt2 + " got " + paramInt1 + " (0x" + Integer.toHexString(paramInt1) + ")", paramParcel);
    }
  }
  
  private static void a(Parcel paramParcel, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 != paramInt3) {
      throw new b("Expected size " + paramInt3 + " got " + paramInt2 + " (0x" + Integer.toHexString(paramInt2) + ")", paramParcel);
    }
  }
  
  public static void a(Parcel paramParcel, int paramInt, List paramList, ClassLoader paramClassLoader)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return;
    }
    paramParcel.readList(paramList, paramClassLoader);
    paramParcel.setDataPosition(paramInt + i);
  }
  
  public static int b(Parcel paramParcel)
  {
    int j = a(paramParcel);
    int k = a(paramParcel, j);
    int i = paramParcel.dataPosition();
    if (a(j) != 20293) {
      throw new b("Expected object header. Got 0x" + Integer.toHexString(j), paramParcel);
    }
    j = i + k;
    if ((j < i) || (j > paramParcel.dataSize())) {
      throw new b("Size read is invalid start=" + i + " end=" + j, paramParcel);
    }
    return j;
  }
  
  public static void b(Parcel paramParcel, int paramInt)
  {
    paramParcel.setDataPosition(a(paramParcel, paramInt) + paramParcel.dataPosition());
  }
  
  public static <T> T[] b(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = paramParcel.createTypedArray(paramCreator);
    paramParcel.setDataPosition(paramInt + i);
    return paramCreator;
  }
  
  public static <T> ArrayList<T> c(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = paramParcel.createTypedArrayList(paramCreator);
    paramParcel.setDataPosition(paramInt + i);
    return paramCreator;
  }
  
  public static boolean c(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readInt() != 0;
  }
  
  public static byte d(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return (byte)paramParcel.readInt();
  }
  
  public static int e(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readInt();
  }
  
  public static Integer f(Parcel paramParcel, int paramInt)
  {
    int i = a(paramParcel, paramInt);
    if (i == 0) {
      return null;
    }
    a(paramParcel, paramInt, i, 4);
    return Integer.valueOf(paramParcel.readInt());
  }
  
  public static long g(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 8);
    return paramParcel.readLong();
  }
  
  public static float h(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 4);
    return paramParcel.readFloat();
  }
  
  public static double i(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt, 8);
    return paramParcel.readDouble();
  }
  
  public static String j(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    String str = paramParcel.readString();
    paramParcel.setDataPosition(paramInt + i);
    return str;
  }
  
  public static IBinder k(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    IBinder localIBinder = paramParcel.readStrongBinder();
    paramParcel.setDataPosition(paramInt + i);
    return localIBinder;
  }
  
  public static Bundle l(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    Bundle localBundle = paramParcel.readBundle();
    paramParcel.setDataPosition(paramInt + i);
    return localBundle;
  }
  
  public static byte[] m(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    byte[] arrayOfByte = paramParcel.createByteArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfByte;
  }
  
  public static byte[][] n(Parcel paramParcel, int paramInt)
  {
    int i = a(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0) {
      return (byte[][])null;
    }
    int k = paramParcel.readInt();
    byte[][] arrayOfByte = new byte[k][];
    paramInt = 0;
    while (paramInt < k)
    {
      arrayOfByte[paramInt] = paramParcel.createByteArray();
      paramInt += 1;
    }
    paramParcel.setDataPosition(j + i);
    return arrayOfByte;
  }
  
  public static int[] o(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    int[] arrayOfInt = paramParcel.createIntArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfInt;
  }
  
  public static String[] p(Parcel paramParcel, int paramInt)
  {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    String[] arrayOfString = paramParcel.createStringArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfString;
  }
  
  public static ArrayList<Integer> q(Parcel paramParcel, int paramInt)
  {
    int i = a(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int k = paramParcel.readInt();
    paramInt = 0;
    while (paramInt < k)
    {
      localArrayList.add(Integer.valueOf(paramParcel.readInt()));
      paramInt += 1;
    }
    paramParcel.setDataPosition(j + i);
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.safeparcel.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */