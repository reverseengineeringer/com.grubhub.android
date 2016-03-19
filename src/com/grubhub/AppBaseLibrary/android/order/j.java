package com.grubhub.AppBaseLibrary.android.order;

import android.content.res.Resources;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.utils.b;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

public class j
{
  private static final String a = j.class.getSimpleName();
  
  public static int a()
  {
    int i = Math.round(GHSApplication.a().getResources().getDimension(2131427519));
    if (i > 300) {
      return 300;
    }
    return i;
  }
  
  public static int a(GHSIAddressDataModel paramGHSIAddressDataModel, ArrayList<GHSIAddressDataModel> paramArrayList, int paramInt)
  {
    int i = 0;
    while (i < paramArrayList.size())
    {
      if (a(paramGHSIAddressDataModel, (GHSIAddressDataModel)paramArrayList.get(i))) {
        return i;
      }
      i += 1;
    }
    return paramInt;
  }
  
  public static k a(int paramInt, Date paramDate, ArrayList<GHSIRestaurantDataModel.GHSIDateTime> paramArrayList)
  {
    k localk = new k();
    SimpleDateFormat localSimpleDateFormat;
    int i;
    label107:
    Object localObject2;
    int j;
    if ((paramDate != null) && (paramArrayList != null) && (paramArrayList.size() > 0))
    {
      localSimpleDateFormat = new SimpleDateFormat("h:mm aa");
      localSimpleDateFormat.setTimeZone(b.i());
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        paramArrayList = (GHSIRestaurantDataModel.GHSIDateTime)localIterator.next();
        if ((paramArrayList != null) && (paramArrayList.getDayOfWeek() == paramInt))
        {
          ArrayList localArrayList1 = paramArrayList.getTimeRanges();
          if ((localArrayList1 != null) && (localArrayList1.size() > 0))
          {
            i = 0;
            if (i >= localArrayList1.size()) {
              break label494;
            }
            localObject2 = (String)localArrayList1.get(i);
            if ((localObject2 == null) || (((String)localObject2).equals(GHSApplication.a().getString(2131231942)))) {
              break label489;
            }
            paramArrayList = null;
            j = ((String)localObject2).indexOf("-");
            if (j == -1) {
              break label496;
            }
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        Object localObject1 = ((String)localObject2).substring(0, j);
        paramArrayList = (ArrayList<GHSIRestaurantDataModel.GHSIDateTime>)localObject1;
        String str;
        Date localDate;
        i += 1;
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException2)
      {
        try
        {
          localObject2 = ((String)localObject2).substring(j + 1, ((String)localObject2).length());
          localObject1 = paramArrayList;
          paramArrayList = (ArrayList<GHSIRestaurantDataModel.GHSIDateTime>)localObject2;
          if ((localObject1 != null) && (paramArrayList != null))
          {
            str = ((String)localObject1).trim();
            localObject1 = paramArrayList.trim();
            j = ((String)localObject1).lastIndexOf(" ");
            paramArrayList = (ArrayList<GHSIRestaurantDataModel.GHSIDateTime>)localObject1;
            if (j == -1) {}
          }
        }
        catch (IndexOutOfBoundsException localIndexOutOfBoundsException2)
        {
          try
          {
            paramArrayList = ((String)localObject1).substring(0, j);
            localObject1 = null;
            localObject2 = null;
            try
            {
              localDate = localSimpleDateFormat.parse(str);
              localObject1 = localDate;
            }
            catch (ParseException localParseException1)
            {
              a.b(a, localParseException1.getMessage());
              continue;
            }
            try
            {
              localDate = localSimpleDateFormat.parse(paramArrayList);
              localObject2 = localDate;
            }
            catch (ParseException localParseException2)
            {
              a.b(a, localParseException2.getMessage());
              continue;
            }
            if ((localObject1 != null) && (localObject2 != null) && (((Date)localObject1).getTime() >= ((Date)localObject2).getTime())) {
              ((Date)localObject2).setTime(((Date)localObject2).getTime() + 86400000L);
            }
            if ((paramDate != null) && (localObject1 != null) && (localObject2 != null) && (paramDate.getTime() >= ((Date)localObject1).getTime()) && (paramDate.getTime() <= ((Date)localObject2).getTime()))
            {
              a = true;
              b = ((Date)localObject1);
              c = str;
              d = ((Date)localObject2);
              e = paramArrayList;
              return localk;
              localIndexOutOfBoundsException1 = localIndexOutOfBoundsException1;
              a.b(a, localIndexOutOfBoundsException1.getMessage());
              continue;
              localIndexOutOfBoundsException2 = localIndexOutOfBoundsException2;
              a.b(a, localIndexOutOfBoundsException2.getMessage());
              localObject2 = null;
              localArrayList = paramArrayList;
              paramArrayList = (ArrayList<GHSIRestaurantDataModel.GHSIDateTime>)localObject2;
            }
          }
          catch (IndexOutOfBoundsException paramArrayList)
          {
            a.b(a, paramArrayList.getMessage());
            paramArrayList = localArrayList;
            continue;
          }
        }
      }
      label489:
      break label107;
      label494:
      break;
      label496:
      paramArrayList = null;
      ArrayList<GHSIRestaurantDataModel.GHSIDateTime> localArrayList = null;
    }
  }
  
  public static String a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    Object localObject = "";
    if (paramGHSIAddressDataModel != null)
    {
      localObject = new StringBuilder();
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress1()))
      {
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getAddress1());
        if ((!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress2())) || (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCity())) || (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState())) || (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip()))) {
          ((StringBuilder)localObject).append("\n");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress2()))
      {
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getAddress2());
        if ((!TextUtils.isEmpty(paramGHSIAddressDataModel.getCity())) || (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState())) || (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip()))) {
          ((StringBuilder)localObject).append("\n");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCity()))
      {
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getCity());
        if (TextUtils.isEmpty(paramGHSIAddressDataModel.getState())) {
          break label273;
        }
        ((StringBuilder)localObject).append(", ");
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState()))
      {
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getState());
        if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip())) {
          ((StringBuilder)localObject).append(" ");
        }
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip())) {
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getZip());
      }
      localObject = ((StringBuilder)localObject).toString();
      return (String)localObject;
      label273:
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip())) {
        ((StringBuilder)localObject).append(" ");
      }
    }
  }
  
  /* Error */
  public static ArrayList<String> a(java.util.List<String> paramList)
  {
    // Byte code:
    //   0: invokestatic 26	com/grubhub/AppBaseLibrary/android/GHSApplication:a	()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;
    //   3: invokevirtual 227	com/grubhub/AppBaseLibrary/android/GHSApplication:getApplicationContext	()Landroid/content/Context;
    //   6: invokevirtual 230	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   9: astore 10
    //   11: new 46	java/util/ArrayList
    //   14: dup
    //   15: invokespecial 231	java/util/ArrayList:<init>	()V
    //   18: astore 11
    //   20: new 70	java/text/SimpleDateFormat
    //   23: dup
    //   24: ldc -23
    //   26: invokespecial 75	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   29: astore 12
    //   31: aload 12
    //   33: ldc -21
    //   35: invokestatic 241	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   38: invokevirtual 85	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   41: new 70	java/text/SimpleDateFormat
    //   44: dup
    //   45: ldc 72
    //   47: invokespecial 75	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   50: astore 13
    //   52: invokestatic 81	com/grubhub/AppBaseLibrary/android/utils/b:i	()Ljava/util/TimeZone;
    //   55: astore 14
    //   57: aload 13
    //   59: aload 14
    //   61: invokevirtual 85	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   64: aload_0
    //   65: invokeinterface 244 1 0
    //   70: astore 15
    //   72: aload 15
    //   74: invokeinterface 95 1 0
    //   79: ifeq +350 -> 429
    //   82: aload 15
    //   84: invokeinterface 99 1 0
    //   89: checkcast 110	java/lang/String
    //   92: astore 16
    //   94: aconst_null
    //   95: astore 7
    //   97: aconst_null
    //   98: astore 8
    //   100: aconst_null
    //   101: astore 4
    //   103: aconst_null
    //   104: astore 5
    //   106: aconst_null
    //   107: astore 6
    //   109: aconst_null
    //   110: astore 9
    //   112: aload 16
    //   114: ldc 121
    //   116: invokevirtual 125	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   119: istore_1
    //   120: aload 9
    //   122: astore_0
    //   123: aload 4
    //   125: astore_3
    //   126: iload_1
    //   127: iflt +88 -> 215
    //   130: aload 9
    //   132: astore_0
    //   133: aload 4
    //   135: astore_3
    //   136: aload 16
    //   138: invokevirtual 132	java/lang/String:length	()I
    //   141: iload_1
    //   142: if_icmple +73 -> 215
    //   145: aload 16
    //   147: iconst_0
    //   148: iload_1
    //   149: invokevirtual 129	java/lang/String:substring	(II)Ljava/lang/String;
    //   152: astore_0
    //   153: aload 16
    //   155: iload_1
    //   156: iconst_1
    //   157: iadd
    //   158: aload 16
    //   160: invokevirtual 132	java/lang/String:length	()I
    //   163: invokevirtual 129	java/lang/String:substring	(II)Ljava/lang/String;
    //   166: astore_3
    //   167: aload 12
    //   169: aload_0
    //   170: invokevirtual 144	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   173: astore_0
    //   174: aload 12
    //   176: aload_3
    //   177: invokevirtual 144	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   180: astore_3
    //   181: aload_0
    //   182: invokevirtual 150	java/util/Date:getTime	()J
    //   185: aload_3
    //   186: invokevirtual 150	java/util/Date:getTime	()J
    //   189: lcmp
    //   190: iflt +296 -> 486
    //   193: new 146	java/util/Date
    //   196: dup
    //   197: aload_3
    //   198: invokevirtual 150	java/util/Date:getTime	()J
    //   201: ldc2_w 151
    //   204: ladd
    //   205: invokespecial 246	java/util/Date:<init>	(J)V
    //   208: astore 4
    //   210: aload_0
    //   211: astore_3
    //   212: aload 4
    //   214: astore_0
    //   215: aload 16
    //   217: aload 10
    //   219: ldc 111
    //   221: invokevirtual 247	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   224: invokevirtual 251	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   227: ifeq +65 -> 292
    //   230: aload 11
    //   232: aload 10
    //   234: ldc 111
    //   236: invokevirtual 247	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   239: invokevirtual 254	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   242: pop
    //   243: goto -171 -> 72
    //   246: astore 4
    //   248: aload 7
    //   250: astore_3
    //   251: aload 5
    //   253: astore_0
    //   254: getstatic 16	com/grubhub/AppBaseLibrary/android/order/j:a	Ljava/lang/String;
    //   257: aload 4
    //   259: invokevirtual 181	java/text/ParseException:getMessage	()Ljava/lang/String;
    //   262: invokestatic 180	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   265: pop
    //   266: goto -51 -> 215
    //   269: astore 4
    //   271: aload 8
    //   273: astore_3
    //   274: aload 6
    //   276: astore_0
    //   277: getstatic 16	com/grubhub/AppBaseLibrary/android/order/j:a	Ljava/lang/String;
    //   280: aload 4
    //   282: invokevirtual 255	java/lang/ArrayIndexOutOfBoundsException:getMessage	()Ljava/lang/String;
    //   285: invokestatic 180	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   288: pop
    //   289: goto -74 -> 215
    //   292: aload_3
    //   293: ifnull +119 -> 412
    //   296: aload_0
    //   297: ifnull +115 -> 412
    //   300: invokestatic 258	com/grubhub/AppBaseLibrary/android/utils/b:d	()Ljava/util/Date;
    //   303: astore 4
    //   305: new 146	java/util/Date
    //   308: dup
    //   309: aload 4
    //   311: invokevirtual 150	java/util/Date:getTime	()J
    //   314: aload_3
    //   315: invokevirtual 150	java/util/Date:getTime	()J
    //   318: ladd
    //   319: invokespecial 246	java/util/Date:<init>	(J)V
    //   322: astore_3
    //   323: new 146	java/util/Date
    //   326: dup
    //   327: aload 4
    //   329: invokevirtual 150	java/util/Date:getTime	()J
    //   332: aload_0
    //   333: invokevirtual 150	java/util/Date:getTime	()J
    //   336: ladd
    //   337: invokespecial 246	java/util/Date:<init>	(J)V
    //   340: astore_0
    //   341: aload 13
    //   343: aload_3
    //   344: invokevirtual 262	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   347: astore_3
    //   348: aload 13
    //   350: aload_0
    //   351: invokevirtual 262	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   354: astore_0
    //   355: aload 14
    //   357: aload 4
    //   359: invokevirtual 266	java/util/TimeZone:inDaylightTime	(Ljava/util/Date;)Z
    //   362: istore_2
    //   363: aload 11
    //   365: new 187	java/lang/StringBuilder
    //   368: dup
    //   369: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   372: aload_3
    //   373: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: ldc_w 268
    //   379: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: aload_0
    //   383: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: ldc -119
    //   388: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: invokestatic 81	com/grubhub/AppBaseLibrary/android/utils/b:i	()Ljava/util/TimeZone;
    //   394: iload_2
    //   395: iconst_0
    //   396: invokevirtual 272	java/util/TimeZone:getDisplayName	(ZI)Ljava/lang/String;
    //   399: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   402: invokevirtual 220	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   405: invokevirtual 254	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   408: pop
    //   409: goto -337 -> 72
    //   412: aload 11
    //   414: aload 10
    //   416: ldc_w 273
    //   419: invokevirtual 247	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   422: invokevirtual 254	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   425: pop
    //   426: goto -354 -> 72
    //   429: aload 11
    //   431: areturn
    //   432: astore 4
    //   434: aload_0
    //   435: astore_3
    //   436: aload 6
    //   438: astore_0
    //   439: goto -162 -> 277
    //   442: astore 5
    //   444: aload_0
    //   445: astore 4
    //   447: aload_3
    //   448: astore_0
    //   449: aload 4
    //   451: astore_3
    //   452: aload 5
    //   454: astore 4
    //   456: goto -179 -> 277
    //   459: astore 4
    //   461: aload_0
    //   462: astore_3
    //   463: aload 5
    //   465: astore_0
    //   466: goto -212 -> 254
    //   469: astore 5
    //   471: aload_0
    //   472: astore 4
    //   474: aload_3
    //   475: astore_0
    //   476: aload 4
    //   478: astore_3
    //   479: aload 5
    //   481: astore 4
    //   483: goto -229 -> 254
    //   486: aload_0
    //   487: astore 4
    //   489: aload_3
    //   490: astore_0
    //   491: aload 4
    //   493: astore_3
    //   494: goto -279 -> 215
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	497	0	paramList	java.util.List<String>
    //   119	39	1	i	int
    //   362	33	2	bool	boolean
    //   125	369	3	localObject1	Object
    //   101	112	4	localDate1	Date
    //   246	12	4	localParseException1	ParseException
    //   269	12	4	localArrayIndexOutOfBoundsException1	ArrayIndexOutOfBoundsException
    //   303	55	4	localDate2	Date
    //   432	1	4	localArrayIndexOutOfBoundsException2	ArrayIndexOutOfBoundsException
    //   445	10	4	localObject2	Object
    //   459	1	4	localParseException2	ParseException
    //   472	20	4	localObject3	Object
    //   104	148	5	localObject4	Object
    //   442	22	5	localArrayIndexOutOfBoundsException3	ArrayIndexOutOfBoundsException
    //   469	11	5	localParseException3	ParseException
    //   107	330	6	localObject5	Object
    //   95	154	7	localObject6	Object
    //   98	174	8	localObject7	Object
    //   110	21	9	localObject8	Object
    //   9	406	10	localResources	Resources
    //   18	412	11	localArrayList	ArrayList
    //   29	146	12	localSimpleDateFormat1	SimpleDateFormat
    //   50	299	13	localSimpleDateFormat2	SimpleDateFormat
    //   55	301	14	localTimeZone	java.util.TimeZone
    //   70	13	15	localIterator	Iterator
    //   92	124	16	str	String
    // Exception table:
    //   from	to	target	type
    //   112	120	246	java/text/ParseException
    //   136	174	246	java/text/ParseException
    //   112	120	269	java/lang/ArrayIndexOutOfBoundsException
    //   136	174	269	java/lang/ArrayIndexOutOfBoundsException
    //   174	181	432	java/lang/ArrayIndexOutOfBoundsException
    //   181	210	442	java/lang/ArrayIndexOutOfBoundsException
    //   174	181	459	java/text/ParseException
    //   181	210	469	java/text/ParseException
  }
  
  public static Date a(ArrayList<GHSIRestaurantDataModel.GHSIDateTime> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      int i = b.g();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("h:mm aa");
      localSimpleDateFormat.setTimeZone(b.i());
      Iterator localIterator1 = paramArrayList.iterator();
      break label99;
      label40:
      do
      {
        do
        {
          if (!localIterator1.hasNext()) {
            break;
          }
          paramArrayList = (GHSIRestaurantDataModel.GHSIDateTime)localIterator1.next();
        } while ((paramArrayList == null) || (paramArrayList.getDayOfWeek() != i));
        paramArrayList = paramArrayList.getTimeRanges();
      } while ((paramArrayList == null) || (paramArrayList.size() <= 0));
      Iterator localIterator2 = paramArrayList.iterator();
      for (;;)
      {
        label99:
        if (!localIterator2.hasNext()) {
          break label40;
        }
        Object localObject = (String)localIterator2.next();
        if ((localObject == null) || (((String)localObject).equals(GHSApplication.a().getString(2131231942)))) {
          break;
        }
        int j = ((String)localObject).indexOf("-");
        paramArrayList = (ArrayList<GHSIRestaurantDataModel.GHSIDateTime>)localObject;
        if (j != -1) {}
        try
        {
          paramArrayList = ((String)localObject).substring(0, j);
          if (paramArrayList != null)
          {
            paramArrayList = paramArrayList.trim();
            localObject = b.e();
          }
        }
        catch (IndexOutOfBoundsException paramArrayList)
        {
          try
          {
            paramArrayList = localSimpleDateFormat.parse(paramArrayList);
            if ((localObject != null) && (paramArrayList != null) && (((Date)localObject).getTime() < paramArrayList.getTime()))
            {
              return paramArrayList;
              paramArrayList = paramArrayList;
              a.b(a, paramArrayList.getMessage());
              paramArrayList = null;
            }
          }
          catch (ParseException paramArrayList)
          {
            for (;;)
            {
              a.b(a, paramArrayList.getMessage());
              paramArrayList = null;
            }
          }
        }
      }
    }
    return null;
  }
  
  private static boolean a(GHSIAddressDataModel paramGHSIAddressDataModel1, GHSIAddressDataModel paramGHSIAddressDataModel2)
  {
    if ((paramGHSIAddressDataModel1 == null) || (paramGHSIAddressDataModel2 == null)) {}
    boolean bool1;
    boolean bool2;
    boolean bool3;
    boolean bool4;
    boolean bool5;
    boolean bool6;
    boolean bool7;
    do
    {
      return false;
      bool1 = a(paramGHSIAddressDataModel1.getAddress1(), paramGHSIAddressDataModel2.getAddress1());
      bool2 = a(paramGHSIAddressDataModel1.getAddress2(), paramGHSIAddressDataModel2.getAddress2());
      bool3 = a(paramGHSIAddressDataModel1.getCity(), paramGHSIAddressDataModel2.getCity());
      bool4 = a(paramGHSIAddressDataModel1.getState(), paramGHSIAddressDataModel2.getState());
      bool5 = a(paramGHSIAddressDataModel1.getZip(), paramGHSIAddressDataModel2.getZip());
      bool6 = a(paramGHSIAddressDataModel1.getCrossStreet(), paramGHSIAddressDataModel2.getCrossStreet());
      bool7 = a(paramGHSIAddressDataModel1.getPhone(), paramGHSIAddressDataModel2.getPhone());
    } while ((!bool1) || (!bool2) || (!bool3) || (!bool4) || (!bool5) || (!bool6) || (!bool7));
    return true;
  }
  
  private static boolean a(String paramString, Object paramObject)
  {
    if ((paramString == null) || (paramObject == null)) {
      return (paramString == null) && (paramObject == null);
    }
    return paramString.equals(paramObject);
  }
  
  public static boolean a(ArrayList<GHSIRestaurantDataModel.GHSIDateTime> paramArrayList, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramBoolean = true;
    }
    for (;;)
    {
      return paramBoolean;
      int i = b.g();
      Date localDate = b.e();
      k localk = a(i, localDate, paramArrayList);
      paramBoolean = a;
      if (!paramBoolean)
      {
        i = b.h();
        localDate = new Date(localDate.getTime() + 86400000L);
        paramArrayList = a(i, localDate, paramArrayList);
        paramBoolean = a;
      }
      while ((localDate == null) || (d == null) || (localDate.getTime() + 60000 * paramInt > d.getTime()))
      {
        return false;
        paramArrayList = localk;
      }
    }
  }
  
  public static int b()
  {
    int i = Math.round(GHSApplication.a().getResources().getDimension(2131427522));
    if (i > 300) {
      return 300;
    }
    return i;
  }
  
  public static String b(ArrayList<GHSIRestaurantDataModel.GHSIDateTime> paramArrayList)
  {
    Object localObject = null;
    Date localDate = a(paramArrayList);
    paramArrayList = (ArrayList<GHSIRestaurantDataModel.GHSIDateTime>)localObject;
    if (localDate != null)
    {
      paramArrayList = new SimpleDateFormat("h:mm aa");
      paramArrayList.setTimeZone(b.i());
      paramArrayList = paramArrayList.format(localDate);
    }
    return paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */