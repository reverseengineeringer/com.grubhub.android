.class Lcom/urbanairship/push/ChannelRegistrationPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/json/JsonSerializable;


# static fields
.field static final ALIAS_KEY:Ljava/lang/String; = "alias"

.field static final APID_KEY:Ljava/lang/String; = "apid"

.field static final BACKGROUND_ENABLED_KEY:Ljava/lang/String; = "background"

.field static final CHANNEL_KEY:Ljava/lang/String; = "channel"

.field static final DEVICE_TYPE_KEY:Ljava/lang/String; = "device_type"

.field static final IDENTITY_HINTS_KEY:Ljava/lang/String; = "identity_hints"

.field static final OPT_IN_KEY:Ljava/lang/String; = "opt_in"

.field static final PUSH_ADDRESS_KEY:Ljava/lang/String; = "push_address"

.field static final SET_TAGS_KEY:Ljava/lang/String; = "set_tags"

.field static final TAGS_KEY:Ljava/lang/String; = "tags"

.field static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final apid:Ljava/lang/String;

.field private final backgroundEnabled:Z

.field private final deviceType:Ljava/lang/String;

.field private final optIn:Z

.field private final pushAddress:Ljava/lang/String;

.field private final setTags:Z

.field private final tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->optIn:Z
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$100(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    .line 196
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->backgroundEnabled:Z
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$200(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    .line 197
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->alias:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$300(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    .line 198
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->deviceType:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$400(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    .line 199
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->pushAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$500(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    .line 200
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags:Z
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$600(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    .line 201
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags:Z
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$600(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->tags:Ljava/util/Set;
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$700(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    .line 202
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->userId:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$800(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    .line 203
    # getter for: Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->apid:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$900(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    .line 204
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;Lcom/urbanairship/push/ChannelRegistrationPayload$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/urbanairship/push/ChannelRegistrationPayload;-><init>(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)V

    return-void
.end method

.method static parseJson(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 322
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    new-instance v3, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    invoke-direct {v3}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;-><init>()V

    .line 329
    const-string v1, "channel"

    invoke-virtual {v2, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v4

    .line 330
    if-eqz v4, :cond_5

    .line 331
    const-string v1, "opt_in"

    invoke-virtual {v4, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/urbanairship/json/JsonValue;->getBoolean(Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setOptIn(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    const-string v5, "background"

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/urbanairship/json/JsonValue;->getBoolean(Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setBackgroundEnabled(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    const-string v5, "device_type"

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    const-string v5, "push_address"

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    const-string v5, "alias"

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setAlias(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    const-string v5, "user_id"

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    const-string v5, "apid"

    invoke-virtual {v4, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    .line 340
    const-string v1, "tags"

    invoke-virtual {v4, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 342
    const-string v0, "tags"

    invoke-virtual {v4, v0}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 343
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isString()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 344
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 349
    :cond_4
    const-string v1, "set_tags"

    invoke-virtual {v4, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/urbanairship/json/JsonValue;->getBoolean(Z)Z

    move-result v1

    invoke-virtual {v3, v1, v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags(ZLjava/util/Set;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    .line 352
    :cond_5
    const-string v0, "identity_hints"

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_6

    .line 355
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    const-string v2, "apid"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    .line 359
    :cond_6
    invoke-virtual {v3}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->build()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    check-cast p1, Lcom/urbanairship/push/ChannelRegistrationPayload;

    .line 280
    iget-boolean v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    iget-boolean v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    iget-boolean v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_2
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_3
    iget-boolean v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    iget-boolean v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-nez v1, :cond_0

    :goto_4
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_5
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    iget-object v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    iget-object v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    .line 302
    iget-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 303
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 304
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v3

    .line 305
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    .line 306
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v0, v3

    .line 307
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    if-eqz v3, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-nez v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v1

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v2

    :goto_7
    add-int/2addr v0, v1

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    if-nez v1, :cond_8

    :goto_8
    add-int/2addr v0, v2

    .line 312
    return v0

    :cond_0
    move v0, v2

    .line 302
    goto :goto_0

    :cond_1
    move v0, v2

    .line 303
    goto :goto_1

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    move v1, v2

    .line 307
    goto :goto_5

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    goto :goto_6

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    .line 310
    :cond_8
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .locals 6

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 210
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v3, "device_type"

    iget-object v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v3, "opt_in"

    iget-boolean v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v3, "background"

    iget-boolean v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v3, "push_address"

    iget-object v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v3, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    const-string v3, "alias"

    iget-object v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    const-string v3, "set_tags"

    iget-boolean v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-boolean v3, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-eqz v3, :cond_1

    .line 226
    const-string v3, "tags"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    const-string v3, "channel"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    const-string v2, "apid"

    iget-object v3, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    const-string v2, "identity_hints"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "ChannelRegistrationPayload - Failed to create channel registration payload as json"

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelRegistrationPayload;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
