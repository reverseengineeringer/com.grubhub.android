.class public Lcom/urbanairship/analytics/CustomEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eventName:Ljava/lang/String;

.field private interactionId:Ljava/lang/String;

.field private interactionType:Ljava/lang/String;

.field private pushSendId:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;

.field private value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event name must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event name is larger than 255 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->eventName:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public addEvent()Lcom/urbanairship/analytics/CustomEvent;
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/urbanairship/analytics/CustomEvent$Builder;->create()Lcom/urbanairship/analytics/CustomEvent;

    move-result-object v0

    .line 348
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 349
    return-object v0
.end method

.method public create()Lcom/urbanairship/analytics/CustomEvent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 331
    new-instance v1, Lcom/urbanairship/analytics/CustomEvent;

    invoke-direct {v1, v0}, Lcom/urbanairship/analytics/CustomEvent;-><init>(Lcom/urbanairship/analytics/CustomEvent$1;)V

    .line 332
    iget-object v2, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->eventName:Ljava/lang/String;

    # setter for: Lcom/urbanairship/analytics/CustomEvent;->eventName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/urbanairship/analytics/CustomEvent;->access$302(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v2, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->value:Ljava/math/BigDecimal;

    if-nez v2, :cond_0

    :goto_0
    # setter for: Lcom/urbanairship/analytics/CustomEvent;->eventValue:Ljava/lang/Long;
    invoke-static {v1, v0}, Lcom/urbanairship/analytics/CustomEvent;->access$402(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/Long;)Ljava/lang/Long;

    .line 334
    iget-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->transactionId:Ljava/lang/String;

    # setter for: Lcom/urbanairship/analytics/CustomEvent;->transactionId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/urbanairship/analytics/CustomEvent;->access$502(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->interactionType:Ljava/lang/String;

    # setter for: Lcom/urbanairship/analytics/CustomEvent;->interactionType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/urbanairship/analytics/CustomEvent;->access$602(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->interactionId:Ljava/lang/String;

    # setter for: Lcom/urbanairship/analytics/CustomEvent;->interactionId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/urbanairship/analytics/CustomEvent;->access$702(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->pushSendId:Ljava/lang/String;

    # setter for: Lcom/urbanairship/analytics/CustomEvent;->sendId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/urbanairship/analytics/CustomEvent;->access$802(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    return-object v1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->value:Ljava/math/BigDecimal;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public setAttribution(Lcom/urbanairship/push/PushMessage;)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 1

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->pushSendId:Ljava/lang/String;

    .line 322
    :cond_0
    return-object p0
.end method

.method public setEventValue(D)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setEventValue(Ljava/math/BigDecimal;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEventValue(I)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setEventValue(Ljava/math/BigDecimal;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEventValue(Ljava/lang/String;)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->value:Ljava/math/BigDecimal;

    .line 243
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setEventValue(Ljava/math/BigDecimal;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public setEventValue(Ljava/math/BigDecimal;)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 3

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->value:Ljava/math/BigDecimal;

    .line 206
    :goto_0
    return-object p0

    .line 198
    :cond_0
    # getter for: Lcom/urbanairship/analytics/CustomEvent;->MAX_VALUE:Ljava/math/BigDecimal;
    invoke-static {}, Lcom/urbanairship/analytics/CustomEvent;->access$000()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value is bigger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/urbanairship/analytics/CustomEvent;->MAX_VALUE:Ljava/math/BigDecimal;
    invoke-static {}, Lcom/urbanairship/analytics/CustomEvent;->access$000()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    # getter for: Lcom/urbanairship/analytics/CustomEvent;->MIN_VALUE:Ljava/math/BigDecimal;
    invoke-static {}, Lcom/urbanairship/analytics/CustomEvent;->access$100()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_2

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value is less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/urbanairship/analytics/CustomEvent;->MIN_VALUE:Ljava/math/BigDecimal;
    invoke-static {}, Lcom/urbanairship/analytics/CustomEvent;->access$100()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->value:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public setInteraction(Lcom/urbanairship/richpush/RichPushMessage;)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 1

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    const-string v0, "ua_mcrap"

    iput-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->interactionType:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->interactionId:Ljava/lang/String;

    .line 284
    :cond_0
    return-object p0
.end method

.method public setInteraction(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 297
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interaction ID is larger than 255 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interaction type is larger than 255 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    iput-object p2, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->interactionId:Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->interactionType:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/urbanairship/analytics/CustomEvent$Builder;
    .locals 2

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction ID is larger than 255 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent$Builder;->transactionId:Ljava/lang/String;

    .line 270
    return-object p0
.end method
