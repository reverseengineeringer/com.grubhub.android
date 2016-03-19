.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILTER_JSON_ERROR_MESSAGES_SEARCHTERM:Ljava/lang/String; = "\"error\""

.field private static final FILTER_JSON_ERROR_NO_MARKET_SEARCH_TERM:Ljava/lang/String; = "\"marketType\":\"OUT_OF_MARKET\""

.field private static final FILTER_JSON_V2_MESSAGE_FIELD_NAME:Ljava/lang/String; = "fieldName"

.field private static final FILTER_JSON_V2_MESSAGE_FIELD_VALUE:Ljava/lang/String; = "fieldValue"

.field private static final FILTER_JSON_V2_MESSAGE_MESSAGE_CODE:Ljava/lang/String; = "messageCode"

.field private static final FILTER_JSON_V2_MESSAGE_MESSAGE_KEY:Ljava/lang/String; = "messageKey"

.field private static final MESSAGE_ERROR_TYPE:Ljava/lang/String; = "error"

.field private static final MESSAGE_FIELD_FIELD:Ljava/lang/String; = "field"

.field private static final MESSAGE_FIELD_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_FIELD_MSGCODE:Ljava/lang/String; = "msgCode"

.field private static final MESSAGE_FIELD_TYPE:Ljava/lang/String; = "type"

.field private static final MESSAGE_NO_MARKET_ERROR_CODE:Ljava/lang/String; = "OUT_OF_MARKET"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private xmlErrorMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;",
            ">;"
        }
    .end annotation
.end field

.field private xmlParseDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method static synthetic access$002(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlErrorMessages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;Z)Z
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlParseDone:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public parseJSONMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    .line 154
    const-string v0, "\"error\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;

    .line 159
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 161
    :try_start_1
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 215
    :cond_0
    :goto_1
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 217
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;

    .line 220
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 221
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 224
    :cond_3
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 227
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cvv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 228
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    const-string v4, "billingZip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 229
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invalidCCZip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 230
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Credit Card Information"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 231
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    const-string v4, "freeGrubId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 232
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    const-string v4, "giftCardId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 233
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    const-string v4, "promoCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 234
    :cond_4
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getField()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->setCode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 163
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 164
    :goto_3
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 165
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 166
    :goto_4
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 167
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 168
    :goto_5
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 170
    :cond_5
    const-string v0, "fieldName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 177
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 179
    const/4 v0, 0x0

    move v3, v0

    :goto_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 180
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 183
    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    invoke-direct {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;-><init>()V

    .line 184
    const-string v8, "messageCode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setCode(Ljava/lang/String;)V

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fieldName"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fieldValue"

    .line 186
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 185
    invoke-virtual {v7, v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setField(Ljava/lang/String;)V

    .line 187
    const-string v8, "messageKey"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setMessage(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 191
    invoke-virtual {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setCode(Ljava/lang/String;)V

    .line 194
    :cond_7
    const-string v0, "error"

    invoke-virtual {v7, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setType(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 179
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 198
    :catch_3
    move-exception v0

    .line 199
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    :cond_8
    const-string v0, "\"marketType\":\"OUT_OF_MARKET\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;-><init>()V

    .line 206
    const-string v3, "OUT_OF_MARKET"

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setCode(Ljava/lang/String;)V

    .line 207
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setField(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    const v4, 0x7f080374

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setMessage(Ljava/lang/String;)V

    .line 209
    const-string v3, "error"

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setType(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 236
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    :cond_a
    move-object v2, v1

    .line 243
    :cond_b
    return-object v2

    .line 167
    :catch_4
    move-exception v0

    goto/16 :goto_5

    .line 165
    :catch_5
    move-exception v0

    goto/16 :goto_4

    .line 163
    :catch_6
    move-exception v0

    goto/16 :goto_3

    :cond_c
    move-object v1, v2

    goto/16 :goto_1

    :cond_d
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public parseXMLErrors(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grubhub/AppBaseLibrary/android/b/b;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 258
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlParseDone:Z

    .line 259
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;)V

    invoke-static {p1, v1}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 260
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlParseDone:Z

    if-nez v1, :cond_1

    .line 262
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    throw v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlErrorMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlErrorMessages:Ljava/util/ArrayList;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
