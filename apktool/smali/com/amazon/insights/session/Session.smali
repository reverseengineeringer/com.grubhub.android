.class public Lcom/amazon/insights/session/Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/util/JSONSerializable;


# static fields
.field private static final JSON_SESSION_ID_ATTR:Ljava/lang/String; = "session_id"

.field private static final JSON_START_TIME_ATTR:Ljava/lang/String; = "start_time"

.field private static final JSON_STOP_TIME_ATTR:Ljava/lang/String; = "stop_time"

.field protected static final SESSION_ID_APPKEY_LENGTH:I = 0x8

.field protected static final SESSION_ID_DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field protected static final SESSION_ID_DELIMITER:C = '-'

.field protected static final SESSION_ID_PAD_CHAR:C = '_'

.field protected static final SESSION_ID_TIME_FORMAT:Ljava/lang/String; = "HHmmssSSS"

.field protected static final SESSION_ID_UNIQID_LENGTH:I = 0x8


# instance fields
.field private final sessionID:Ljava/lang/String;

.field private final sessionIdTimeFormat:Ljava/text/DateFormat;

.field private final startTime:J

.field private stopTime:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Lcom/amazon/insights/core/InsightsContext;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v3, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 96
    const-string v0, "A valid InsightsContext must be provided!"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmssSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/amazon/insights/session/Session;->sessionIdTimeFormat:Ljava/text/DateFormat;

    .line 99
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->sessionIdTimeFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/insights/session/Session;->startTime:J

    .line 102
    iput-object v3, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 103
    invoke-virtual {p0, p1}, Lcom/amazon/insights/session/Session;->generateSessionID(Lcom/amazon/insights/core/InsightsContext;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/session/Session;->sessionID:Ljava/lang/String;

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v4, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmssSSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/amazon/insights/session/Session;->sessionIdTimeFormat:Ljava/text/DateFormat;

    .line 117
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->sessionIdTimeFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 119
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/insights/session/Session;->startTime:J

    .line 121
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p3}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 123
    iput-object p1, p0, Lcom/amazon/insights/session/Session;->sessionID:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 126
    iput-object v4, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 128
    :cond_0
    return-void
.end method

.method public static getSessionFromSerializedSession(Ljava/lang/String;)Lcom/amazon/insights/session/Session;
    .locals 5

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-static {p0}, Lcom/amazon/insights/core/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-object v1

    .line 75
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v2, "session_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "start_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string v4, "stop_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    new-instance v0, Lcom/amazon/insights/session/Session;

    invoke-direct {v0, v2, v3, v4}, Lcom/amazon/insights/session/Session;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 85
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/session/Session;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/amazon/insights/session/Session;

    invoke-direct {v0, p0}, Lcom/amazon/insights/session/Session;-><init>(Lcom/amazon/insights/core/InsightsContext;)V

    return-object v0
.end method


# virtual methods
.method public generateSessionID(Lcom/amazon/insights/core/InsightsContext;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5f

    const/16 v7, 0x2d

    const/16 v6, 0x8

    .line 189
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/amazon/insights/session/Session;->sessionIdTimeFormat:Ljava/text/DateFormat;

    iget-wide v4, p0, Lcom/amazon/insights/session/Session;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v6, v8}, Lcom/amazon/insights/core/util/StringUtil;->trimOrPadString(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v6, v8}, Lcom/amazon/insights/core/util/StringUtil;->trimOrPadString(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionDuration()Ljava/lang/Number;
    .locals 6

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 168
    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/insights/session/Session;->startTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 173
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/insights/session/Session;->startTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/amazon/insights/session/Session;->startTime:J

    return-wide v0
.end method

.method public getStopTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/amazon/insights/session/Session;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 148
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 156
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amazon/insights/session/Session;->stopTime:Ljava/lang/Long;

    .line 203
    if-nez v0, :cond_0

    .line 204
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 207
    :cond_0
    new-instance v1, Lcom/amazon/insights/core/util/JSONBuilder;

    invoke-direct {v1, p0}, Lcom/amazon/insights/core/util/JSONBuilder;-><init>(Ljava/lang/Object;)V

    .line 208
    const-string v2, "session_id"

    iget-object v3, p0, Lcom/amazon/insights/session/Session;->sessionID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    .line 209
    const-string v2, "start_time"

    iget-wide v4, p0, Lcom/amazon/insights/session/Session;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    .line 210
    const-string v2, "stop_time"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/util/JSONBuilder;->withAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/insights/core/util/JSONBuilder;

    .line 211
    invoke-virtual {v1}, Lcom/amazon/insights/core/util/JSONBuilder;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/amazon/insights/session/Session;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 217
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
