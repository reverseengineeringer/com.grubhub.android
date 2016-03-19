package com.taplytics;

import java.util.HashSet;

public class fx
{
  private static fx a;
  private HashSet<String> b = new HashSet();
  
  public static fx a()
  {
    if (a != null) {
      return a;
    }
    a = new fx();
    return a;
  }
  
  private HashSet c(HashSet<String> paramHashSet)
  {
    if (paramHashSet.contains(kb.alpaca.getText()))
    {
      paramHashSet.add(kb.alligator.getText());
      paramHashSet.add(kb.albatross.getText());
      paramHashSet.add(kb.caribou.getText());
      paramHashSet.add(kb.anteater.getText());
    }
    if (paramHashSet.contains(kb.anteater.getText()))
    {
      paramHashSet.add(kb.antelope.getText());
      paramHashSet.add(kb.armadillo.getText());
      paramHashSet.add(kb.ape.getText());
      paramHashSet.add(kb.badger.getText());
    }
    if (paramHashSet.contains(kb.beaver.getText()))
    {
      paramHashSet.add(kb.bear.getText());
      paramHashSet.add(kb.bat.getText());
      paramHashSet.add(kb.bobcat.getText());
      paramHashSet.add(kb.boar.getText());
      paramHashSet.add(kb.bluejay.getText());
    }
    return paramHashSet;
  }
  
  private void d(HashSet<String> paramHashSet)
  {
    if (paramHashSet.contains(kb.alpaca.getText()))
    {
      b.remove(kb.alligator.getText());
      b.remove(kb.albatross.getText());
      b.remove(kb.caribou.getText());
      b.remove(kb.anteater.getText());
    }
    if (paramHashSet.contains(kb.anteater.getText()))
    {
      b.remove(kb.antelope.getText());
      b.remove(kb.armadillo.getText());
      b.remove(kb.ape.getText());
      b.remove(kb.badger.getText());
    }
    if (paramHashSet.contains(kb.beaver.getText()))
    {
      b.remove(kb.bear.getText());
      b.remove(kb.bat.getText());
      b.remove(kb.bobcat.getText());
      b.remove(kb.boar.getText());
      b.remove(kb.bluejay.getText());
    }
  }
  
  /* Error */
  public void a(eo parameo)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +208 -> 209
    //   4: aload_1
    //   5: invokevirtual 102	com/taplytics/eo:c	()Lcom/taplytics/en;
    //   8: astore_1
    //   9: aload_1
    //   10: ifnull +91 -> 101
    //   13: aload_1
    //   14: ldc 104
    //   16: invokevirtual 110	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   19: ldc 112
    //   21: invokevirtual 116	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   24: astore_3
    //   25: aload_3
    //   26: ifnull +75 -> 101
    //   29: iconst_0
    //   30: istore_2
    //   31: iload_2
    //   32: aload_3
    //   33: invokevirtual 122	org/json/JSONArray:length	()I
    //   36: if_icmpge +45 -> 81
    //   39: aload_3
    //   40: iload_2
    //   41: invokevirtual 126	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   44: ifnull +30 -> 74
    //   47: aload_3
    //   48: iload_2
    //   49: invokevirtual 126	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   52: instanceof 128
    //   55: ifeq +19 -> 74
    //   58: aload_0
    //   59: getfield 18	com/taplytics/fx:b	Ljava/util/HashSet;
    //   62: aload_3
    //   63: iload_2
    //   64: invokevirtual 126	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   67: checkcast 128	java/lang/String
    //   70: invokevirtual 45	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   73: pop
    //   74: iload_2
    //   75: iconst_1
    //   76: iadd
    //   77: istore_2
    //   78: goto -47 -> 31
    //   81: ldc -126
    //   83: invokestatic 136	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   86: pop
    //   87: ldc -118
    //   89: invokestatic 136	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   92: pop
    //   93: aload_0
    //   94: aload_0
    //   95: getfield 18	com/taplytics/fx:b	Ljava/util/HashSet;
    //   98: invokevirtual 140	com/taplytics/fx:a	(Ljava/util/HashSet;)V
    //   101: aload_1
    //   102: ifnull +107 -> 209
    //   105: aload_1
    //   106: ldc 104
    //   108: invokevirtual 110	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   111: ldc -114
    //   113: invokevirtual 116	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   116: astore_1
    //   117: aload_1
    //   118: ifnull +91 -> 209
    //   121: new 15	java/util/HashSet
    //   124: dup
    //   125: invokespecial 16	java/util/HashSet:<init>	()V
    //   128: astore_3
    //   129: iconst_0
    //   130: istore_2
    //   131: iload_2
    //   132: aload_1
    //   133: invokevirtual 122	org/json/JSONArray:length	()I
    //   136: if_icmpge +92 -> 228
    //   139: aload_1
    //   140: iload_2
    //   141: invokevirtual 126	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   144: ifnull +90 -> 234
    //   147: aload_1
    //   148: iload_2
    //   149: invokevirtual 126	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   152: instanceof 128
    //   155: ifeq +79 -> 234
    //   158: aload_0
    //   159: getfield 18	com/taplytics/fx:b	Ljava/util/HashSet;
    //   162: aload_1
    //   163: iload_2
    //   164: invokevirtual 126	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   167: invokevirtual 91	java/util/HashSet:remove	(Ljava/lang/Object;)Z
    //   170: pop
    //   171: aload_3
    //   172: aload_1
    //   173: iload_2
    //   174: invokevirtual 126	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   177: invokevirtual 45	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   180: pop
    //   181: goto +53 -> 234
    //   184: astore_3
    //   185: aload_0
    //   186: getfield 18	com/taplytics/fx:b	Ljava/util/HashSet;
    //   189: getstatic 145	com/taplytics/kb:butterfly	Lcom/taplytics/kb;
    //   192: invokevirtual 35	com/taplytics/kb:getText	()Ljava/lang/String;
    //   195: invokevirtual 45	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   198: pop
    //   199: goto -112 -> 87
    //   202: astore_1
    //   203: ldc -109
    //   205: aload_1
    //   206: invokestatic 152	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   209: return
    //   210: astore_3
    //   211: aload_0
    //   212: getfield 18	com/taplytics/fx:b	Ljava/util/HashSet;
    //   215: getstatic 155	com/taplytics/kb:buffalo	Lcom/taplytics/kb;
    //   218: invokevirtual 35	com/taplytics/kb:getText	()Ljava/lang/String;
    //   221: invokevirtual 45	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   224: pop
    //   225: goto -132 -> 93
    //   228: aload_0
    //   229: aload_3
    //   230: invokespecial 157	com/taplytics/fx:d	(Ljava/util/HashSet;)V
    //   233: return
    //   234: iload_2
    //   235: iconst_1
    //   236: iadd
    //   237: istore_2
    //   238: goto -107 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	241	0	this	fx
    //   0	241	1	parameo	eo
    //   30	208	2	i	int
    //   24	148	3	localObject	Object
    //   184	1	3	localClassNotFoundException1	ClassNotFoundException
    //   210	20	3	localClassNotFoundException2	ClassNotFoundException
    // Exception table:
    //   from	to	target	type
    //   81	87	184	java/lang/ClassNotFoundException
    //   13	25	202	java/lang/Exception
    //   31	74	202	java/lang/Exception
    //   81	87	202	java/lang/Exception
    //   87	93	202	java/lang/Exception
    //   93	101	202	java/lang/Exception
    //   105	117	202	java/lang/Exception
    //   121	129	202	java/lang/Exception
    //   131	181	202	java/lang/Exception
    //   185	199	202	java/lang/Exception
    //   211	225	202	java/lang/Exception
    //   228	233	202	java/lang/Exception
    //   87	93	210	java/lang/ClassNotFoundException
  }
  
  public void a(kb paramkb)
  {
    b.add(paramkb.getText());
  }
  
  public void a(HashSet<String> paramHashSet)
  {
    b = c(paramHashSet);
  }
  
  public HashSet b()
  {
    return b;
  }
  
  public void b(HashSet<String> paramHashSet)
  {
    b = paramHashSet;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */