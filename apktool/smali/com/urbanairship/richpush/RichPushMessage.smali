.class public Lcom/urbanairship/richpush/RichPushMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/urbanairship/richpush/RichPushMessage;",
        ">;"
    }
.end annotation


# instance fields
.field deleted:Z

.field expirationMS:Ljava/lang/Long;

.field extras:Landroid/os/Bundle;

.field messageBodyUrl:Ljava/lang/String;

.field final messageId:Ljava/lang/String;

.field messageReadUrl:Ljava/lang/String;

.field messageUrl:Ljava/lang/String;

.field rawMessageJSON:Lorg/json/JSONObject;

.field sentMS:J

.field title:Ljava/lang/String;

.field unreadClient:Z

.field unreadOrigin:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 69
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 349
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 350
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 354
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getInbox()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v0

    return-object v0
.end method

.method static getMillisecondsFromTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 109
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-object p1

    .line 114
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/util/DateUtils;->parseIso8601(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RichPushMessage - Couldn\'t parse message date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaulting to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    return-object v1
.end method

.method static messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    new-instance v3, Lcom/urbanairship/richpush/RichPushMessage;

    const-string v0, "message_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/urbanairship/richpush/RichPushMessage;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v0, "message_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    .line 79
    const-string v0, "message_body_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    .line 80
    const-string v0, "message_read_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    .line 81
    const-string v0, "unread"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 84
    const-string v0, "unread_orig"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->unreadOrigin:Z

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    const-string v4, "extra"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushMessage;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    .line 88
    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    .line 91
    const-string v0, "timestamp"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/urbanairship/richpush/RichPushMessage;->getMillisecondsFromTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    .line 94
    const-string v0, "deleted"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, v3, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 97
    const-string v0, "raw_message_object"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    if-nez v1, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->rawMessageJSON:Lorg/json/JSONObject;

    .line 100
    const-string v0, "expiration_timestamp"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;->getMillisecondsFromTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    .line 103
    return-object v3

    :cond_0
    move v0, v2

    .line 81
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_1

    :cond_2
    move v1, v2

    .line 94
    goto :goto_2

    .line 98
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public compareTo(Lcom/urbanairship/richpush/RichPushMessage;)I
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    invoke-virtual {p0, p1}, Lcom/urbanairship/richpush/RichPushMessage;->compareTo(Lcom/urbanairship/richpush/RichPushMessage;)I

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->deleteMessages(Ljava/util/Set;)V

    .line 284
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/urbanairship/richpush/RichPushMessage;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 323
    :cond_1
    :goto_0
    return v0

    .line 317
    :cond_2
    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    .line 319
    if-eq p0, p1, :cond_1

    .line 323
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    iget-boolean v3, p1, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    iget-wide v4, p1, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpirationDateMS()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMessageBodyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageReadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRawMessageJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->rawMessageJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSentDateMS()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 334
    .line 335
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x275

    .line 336
    mul-int/lit8 v0, v0, 0x25

    iget-boolean v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 337
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    .line 335
    goto :goto_0

    :cond_1
    move v1, v2

    .line 336
    goto :goto_1
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markRead()V
    .locals 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->markMessagesRead(Ljava/util/Set;)V

    .line 260
    :cond_0
    return-void
.end method

.method public markUnread()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 268
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->markMessagesUnread(Ljava/util/Set;)V

    .line 272
    :cond_0
    return-void
.end method
