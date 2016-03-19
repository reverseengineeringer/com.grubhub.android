.class public Lcom/urbanairship/analytics/CustomEvent;
.super Lcom/urbanairship/analytics/Event;
.source "SourceFile"


# static fields
.field public static final CONVERSION_SEND_ID:Ljava/lang/String; = "conversion_send_id"

.field public static final EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final EVENT_VALUE:Ljava/lang/String; = "event_value"

.field public static final INTERACTION_ID:Ljava/lang/String; = "interaction_id"

.field public static final INTERACTION_TYPE:Ljava/lang/String; = "interaction_type"

.field public static final LAST_RECEIVED_SEND_ID:Ljava/lang/String; = "last_received_send_id"

.field private static final MAX_CHARACTER_LENGTH:I = 0xff

.field private static final MAX_VALUE:Ljava/math/BigDecimal;

.field public static final MCRAP_TRANSACTION_TYPE:Ljava/lang/String; = "ua_mcrap"

.field private static final MIN_VALUE:Ljava/math/BigDecimal;

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field private static final TYPE:Ljava/lang/String; = "custom_event"


# instance fields
.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/Long;

.field private interactionId:Ljava/lang/String;

.field private interactionType:Ljava/lang/String;

.field private sendId:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/urbanairship/analytics/CustomEvent;->MAX_VALUE:Ljava/math/BigDecimal;

    .line 100
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/urbanairship/analytics/CustomEvent;->MIN_VALUE:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/analytics/CustomEvent$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/urbanairship/analytics/CustomEvent;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/urbanairship/analytics/CustomEvent;->MAX_VALUE:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/urbanairship/analytics/CustomEvent;->MIN_VALUE:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$302(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->eventName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->eventValue:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$502(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->transactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->sendId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->getConversionSendId()Ljava/lang/String;

    move-result-object v0

    .line 129
    :try_start_0
    const-string v2, "event_name"

    iget-object v3, p0, Lcom/urbanairship/analytics/CustomEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "event_value"

    iget-object v3, p0, Lcom/urbanairship/analytics/CustomEvent;->eventValue:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "interaction_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v2, "interaction_type"

    iget-object v3, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "transaction_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/CustomEvent;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    iget-object v2, p0, Lcom/urbanairship/analytics/CustomEvent;->sendId:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const-string v0, "conversion_send_id"

    iget-object v2, p0, Lcom/urbanairship/analytics/CustomEvent;->sendId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :goto_0
    return-object v1

    .line 137
    :cond_0
    if-eqz v0, :cond_1

    .line 138
    const-string v2, "conversion_send_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v2, "CustomEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :cond_1
    :try_start_1
    const-string v0, "last_received_send_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getLastReceivedSendId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "custom_event"

    return-object v0
.end method
