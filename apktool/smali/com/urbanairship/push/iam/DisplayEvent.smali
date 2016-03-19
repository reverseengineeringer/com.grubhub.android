.class public Lcom/urbanairship/push/iam/DisplayEvent;
.super Lcom/urbanairship/analytics/Event;
.source "SourceFile"


# static fields
.field private static final CONVERSION_SEND_ID:Ljava/lang/String; = "conversion_send_id"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TYPE:Ljava/lang/String; = "in_app_display"


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/DisplayEvent;->id:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    :try_start_0
    const-string v0, "id"

    iget-object v2, p0, Lcom/urbanairship/push/iam/DisplayEvent;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v0, "conversion_send_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/analytics/Analytics;->getConversionSendId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v2, "DisplayEvent - Error constructing JSON data."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "in_app_display"

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/urbanairship/push/iam/DisplayEvent;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
