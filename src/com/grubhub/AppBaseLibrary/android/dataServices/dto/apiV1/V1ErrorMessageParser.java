package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.util.Xml;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage;
import java.util.ArrayList;
import org.xml.sax.SAXException;

public class V1ErrorMessageParser
{
  private static final String FILTER_JSON_ERROR_MESSAGES_SEARCHTERM = "\"error\"";
  private static final String FILTER_JSON_ERROR_NO_MARKET_SEARCH_TERM = "\"marketType\":\"OUT_OF_MARKET\"";
  private static final String FILTER_JSON_V2_MESSAGE_FIELD_NAME = "fieldName";
  private static final String FILTER_JSON_V2_MESSAGE_FIELD_VALUE = "fieldValue";
  private static final String FILTER_JSON_V2_MESSAGE_MESSAGE_CODE = "messageCode";
  private static final String FILTER_JSON_V2_MESSAGE_MESSAGE_KEY = "messageKey";
  private static final String MESSAGE_ERROR_TYPE = "error";
  private static final String MESSAGE_FIELD_FIELD = "field";
  private static final String MESSAGE_FIELD_MESSAGE = "message";
  private static final String MESSAGE_FIELD_MSGCODE = "msgCode";
  private static final String MESSAGE_FIELD_TYPE = "type";
  private static final String MESSAGE_NO_MARKET_ERROR_CODE = "OUT_OF_MARKET";
  private static final String TAG = V1ErrorMessageParser.class.getSimpleName();
  private ArrayList<GHSIErrorMessage> xmlErrorMessages;
  private boolean xmlParseDone;
  
  /* Error */
  public ArrayList<GHSIErrorMessage> parseJSONMessages(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_1
    //   4: ldc 8
    //   6: invokevirtual 86	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   9: ifeq +330 -> 339
    //   12: new 88	com/google/gson/Gson
    //   15: dup
    //   16: invokespecial 89	com/google/gson/Gson:<init>	()V
    //   19: aload_1
    //   20: ldc 91
    //   22: invokevirtual 95	com/google/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   25: checkcast 91	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO
    //   28: astore_3
    //   29: aload_3
    //   30: ifnull +628 -> 658
    //   33: aload_3
    //   34: invokevirtual 99	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO:getMessages	()Ljava/util/ArrayList;
    //   37: ifnull +621 -> 658
    //   40: aload_3
    //   41: invokevirtual 99	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO:getMessages	()Ljava/util/ArrayList;
    //   44: invokevirtual 105	java/util/ArrayList:isEmpty	()Z
    //   47: ifne +611 -> 658
    //   50: new 101	java/util/ArrayList
    //   53: dup
    //   54: invokespecial 106	java/util/ArrayList:<init>	()V
    //   57: astore_1
    //   58: aload_1
    //   59: aload_3
    //   60: invokevirtual 99	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO:getMessages	()Ljava/util/ArrayList;
    //   63: invokevirtual 110	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   66: pop
    //   67: aload 4
    //   69: astore_3
    //   70: aload_1
    //   71: ifnull +568 -> 639
    //   74: aload 4
    //   76: astore_3
    //   77: aload_1
    //   78: invokevirtual 105	java/util/ArrayList:isEmpty	()Z
    //   81: ifne +558 -> 639
    //   84: aload_1
    //   85: invokevirtual 114	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   88: astore_3
    //   89: aload_3
    //   90: invokeinterface 119 1 0
    //   95: ifeq +542 -> 637
    //   98: aload_3
    //   99: invokeinterface 123 1 0
    //   104: checkcast 125	com/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage
    //   107: astore 4
    //   109: aload 4
    //   111: invokeinterface 128 1 0
    //   116: ifnull +18 -> 134
    //   119: aload 4
    //   121: invokeinterface 128 1 0
    //   126: ldc 26
    //   128: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   131: ifne +9 -> 140
    //   134: aload_3
    //   135: invokeinterface 135 1 0
    //   140: aload 4
    //   142: invokeinterface 138 1 0
    //   147: invokestatic 142	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   150: ifeq -61 -> 89
    //   153: aload 4
    //   155: invokeinterface 145 1 0
    //   160: invokestatic 142	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   163: ifne +465 -> 628
    //   166: aload 4
    //   168: invokeinterface 145 1 0
    //   173: ldc -109
    //   175: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   178: ifne +93 -> 271
    //   181: aload 4
    //   183: invokeinterface 145 1 0
    //   188: ldc -107
    //   190: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   193: ifne +78 -> 271
    //   196: aload 4
    //   198: invokeinterface 145 1 0
    //   203: ldc -105
    //   205: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   208: ifne +63 -> 271
    //   211: aload 4
    //   213: invokeinterface 145 1 0
    //   218: ldc -103
    //   220: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   223: ifne +48 -> 271
    //   226: aload 4
    //   228: invokeinterface 145 1 0
    //   233: ldc -101
    //   235: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   238: ifne +33 -> 271
    //   241: aload 4
    //   243: invokeinterface 145 1 0
    //   248: ldc -99
    //   250: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   253: ifne +18 -> 271
    //   256: aload 4
    //   258: invokeinterface 145 1 0
    //   263: ldc -97
    //   265: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   268: ifeq +360 -> 628
    //   271: aload 4
    //   273: aload 4
    //   275: invokeinterface 145 1 0
    //   280: invokeinterface 163 2 0
    //   285: goto -196 -> 89
    //   288: astore_3
    //   289: aconst_null
    //   290: astore_1
    //   291: getstatic 57	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser:TAG	Ljava/lang/String;
    //   294: aload_3
    //   295: invokevirtual 166	com/google/gson/JsonSyntaxException:getMessage	()Ljava/lang/String;
    //   298: invokestatic 172	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   301: pop
    //   302: goto -235 -> 67
    //   305: astore_3
    //   306: aconst_null
    //   307: astore_1
    //   308: getstatic 57	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser:TAG	Ljava/lang/String;
    //   311: aload_3
    //   312: invokevirtual 173	com/google/gson/JsonParseException:getMessage	()Ljava/lang/String;
    //   315: invokestatic 172	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   318: pop
    //   319: goto -252 -> 67
    //   322: astore_3
    //   323: aconst_null
    //   324: astore_1
    //   325: getstatic 57	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser:TAG	Ljava/lang/String;
    //   328: aload_3
    //   329: invokevirtual 174	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   332: invokestatic 172	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   335: pop
    //   336: goto -269 -> 67
    //   339: aload_1
    //   340: ldc 14
    //   342: invokevirtual 86	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   345: ifeq +219 -> 564
    //   348: new 101	java/util/ArrayList
    //   351: dup
    //   352: invokespecial 106	java/util/ArrayList:<init>	()V
    //   355: astore_3
    //   356: new 176	org/json/JSONObject
    //   359: dup
    //   360: aload_1
    //   361: invokespecial 178	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   364: astore 5
    //   366: aload 5
    //   368: invokevirtual 181	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   371: astore 6
    //   373: aload_3
    //   374: astore_1
    //   375: aload 6
    //   377: invokeinterface 119 1 0
    //   382: ifeq -315 -> 67
    //   385: aload 5
    //   387: aload 6
    //   389: invokeinterface 123 1 0
    //   394: checkcast 82	java/lang/String
    //   397: invokevirtual 185	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   400: astore_1
    //   401: iconst_0
    //   402: istore_2
    //   403: iload_2
    //   404: aload_1
    //   405: invokevirtual 191	org/json/JSONArray:length	()I
    //   408: if_icmpge -35 -> 373
    //   411: aload_1
    //   412: iload_2
    //   413: invokevirtual 195	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   416: checkcast 176	org/json/JSONObject
    //   419: astore 7
    //   421: new 197	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO
    //   424: dup
    //   425: invokespecial 198	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:<init>	()V
    //   428: astore 8
    //   430: aload 8
    //   432: aload 7
    //   434: ldc 20
    //   436: invokevirtual 202	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   439: invokevirtual 203	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setCode	(Ljava/lang/String;)V
    //   442: aload 8
    //   444: new 205	java/lang/StringBuilder
    //   447: dup
    //   448: invokespecial 206	java/lang/StringBuilder:<init>	()V
    //   451: aload 7
    //   453: ldc 14
    //   455: invokevirtual 202	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   458: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: ldc -44
    //   463: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: aload 7
    //   468: ldc 17
    //   470: invokevirtual 202	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   473: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: invokevirtual 215	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   479: invokevirtual 218	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setField	(Ljava/lang/String;)V
    //   482: aload 8
    //   484: aload 7
    //   486: ldc 23
    //   488: invokevirtual 202	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   491: invokevirtual 221	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setMessage	(Ljava/lang/String;)V
    //   494: aload 8
    //   496: invokevirtual 222	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:getCode	()Ljava/lang/String;
    //   499: invokestatic 142	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   502: ifeq +24 -> 526
    //   505: aload 8
    //   507: invokevirtual 223	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:getMessage	()Ljava/lang/String;
    //   510: invokestatic 142	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   513: ifne +13 -> 526
    //   516: aload 8
    //   518: aload 8
    //   520: invokevirtual 223	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:getMessage	()Ljava/lang/String;
    //   523: invokevirtual 203	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setCode	(Ljava/lang/String;)V
    //   526: aload 8
    //   528: ldc 26
    //   530: invokevirtual 226	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setType	(Ljava/lang/String;)V
    //   533: aload_3
    //   534: aload 8
    //   536: invokevirtual 229	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   539: pop
    //   540: iload_2
    //   541: iconst_1
    //   542: iadd
    //   543: istore_2
    //   544: goto -141 -> 403
    //   547: astore_1
    //   548: getstatic 57	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser:TAG	Ljava/lang/String;
    //   551: aload_1
    //   552: invokevirtual 230	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   555: invokestatic 172	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   558: pop
    //   559: aload_3
    //   560: astore_1
    //   561: goto -494 -> 67
    //   564: aload_1
    //   565: ldc 11
    //   567: invokevirtual 86	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   570: ifeq +83 -> 653
    //   573: new 101	java/util/ArrayList
    //   576: dup
    //   577: invokespecial 106	java/util/ArrayList:<init>	()V
    //   580: astore_1
    //   581: new 197	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO
    //   584: dup
    //   585: invokespecial 198	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:<init>	()V
    //   588: astore_3
    //   589: aload_3
    //   590: ldc 41
    //   592: invokevirtual 203	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setCode	(Ljava/lang/String;)V
    //   595: aload_3
    //   596: ldc -24
    //   598: invokevirtual 218	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setField	(Ljava/lang/String;)V
    //   601: aload_3
    //   602: invokestatic 238	com/grubhub/AppBaseLibrary/android/GHSApplication:a	()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;
    //   605: ldc -17
    //   607: invokevirtual 243	com/grubhub/AppBaseLibrary/android/GHSApplication:getString	(I)Ljava/lang/String;
    //   610: invokevirtual 221	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setMessage	(Ljava/lang/String;)V
    //   613: aload_3
    //   614: ldc 26
    //   616: invokevirtual 226	com/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO:setType	(Ljava/lang/String;)V
    //   619: aload_1
    //   620: aload_3
    //   621: invokevirtual 229	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   624: pop
    //   625: goto -558 -> 67
    //   628: aload_3
    //   629: invokeinterface 135 1 0
    //   634: goto -545 -> 89
    //   637: aload_1
    //   638: astore_3
    //   639: aload_3
    //   640: areturn
    //   641: astore_3
    //   642: goto -317 -> 325
    //   645: astore_3
    //   646: goto -338 -> 308
    //   649: astore_3
    //   650: goto -359 -> 291
    //   653: aconst_null
    //   654: astore_1
    //   655: goto -588 -> 67
    //   658: aconst_null
    //   659: astore_1
    //   660: goto -593 -> 67
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	663	0	this	V1ErrorMessageParser
    //   0	663	1	paramString	String
    //   402	142	2	i	int
    //   28	107	3	localObject1	Object
    //   288	7	3	localJsonSyntaxException1	com.google.gson.JsonSyntaxException
    //   305	7	3	localJsonParseException1	com.google.gson.JsonParseException
    //   322	7	3	localThrowable1	Throwable
    //   355	285	3	localObject2	Object
    //   641	1	3	localThrowable2	Throwable
    //   645	1	3	localJsonParseException2	com.google.gson.JsonParseException
    //   649	1	3	localJsonSyntaxException2	com.google.gson.JsonSyntaxException
    //   1	273	4	localGHSIErrorMessage	GHSIErrorMessage
    //   364	22	5	localJSONObject1	org.json.JSONObject
    //   371	17	6	localIterator	java.util.Iterator
    //   419	66	7	localJSONObject2	org.json.JSONObject
    //   428	107	8	localV1ErrorMessageDTO	V1ErrorMessageWrapperDTO.V1ErrorMessageDTO
    // Exception table:
    //   from	to	target	type
    //   12	29	288	com/google/gson/JsonSyntaxException
    //   33	58	288	com/google/gson/JsonSyntaxException
    //   12	29	305	com/google/gson/JsonParseException
    //   33	58	305	com/google/gson/JsonParseException
    //   12	29	322	java/lang/Throwable
    //   33	58	322	java/lang/Throwable
    //   356	373	547	org/json/JSONException
    //   375	401	547	org/json/JSONException
    //   403	526	547	org/json/JSONException
    //   526	540	547	org/json/JSONException
    //   58	67	641	java/lang/Throwable
    //   58	67	645	com/google/gson/JsonParseException
    //   58	67	649	com/google/gson/JsonSyntaxException
  }
  
  public ArrayList<GHSIErrorMessage> parseXMLErrors(String paramString, V1ErrorMessageParser.XMLParseCallBack paramXMLParseCallBack)
    throws b
  {
    do
    {
      try
      {
        xmlParseDone = false;
        Xml.parse(paramString, new V1ErrorMessageParser.MyContentHandler(this, paramXMLParseCallBack));
        if (!xmlParseDone) {
          throw new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
        }
      }
      catch (SAXException paramString)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(TAG, paramString.getMessage());
        return null;
      }
    } while (xmlErrorMessages == null);
    paramString = xmlErrorMessages;
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMessageParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */