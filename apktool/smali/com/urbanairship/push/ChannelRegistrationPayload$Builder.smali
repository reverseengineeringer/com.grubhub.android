.class Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alias:Ljava/lang/String;

.field private apid:Ljava/lang/String;

.field private backgroundEnabled:Z

.field private deviceType:Ljava/lang/String;

.field private optIn:Z

.field private pushAddress:Ljava/lang/String;

.field private setTags:Z

.field private tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->optIn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->backgroundEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->alias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->pushAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags:Z

    return v0
.end method

.method static synthetic access$700(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->tags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->apid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method build()Lcom/urbanairship/push/ChannelRegistrationPayload;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/urbanairship/push/ChannelRegistrationPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload;-><init>(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;Lcom/urbanairship/push/ChannelRegistrationPayload$1;)V

    return-object v0
.end method

.method setAlias(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->alias:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->apid:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method setBackgroundEnabled(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->backgroundEnabled:Z

    .line 107
    return-object p0
.end method

.method setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->deviceType:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method setOptIn(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->optIn:Z

    .line 95
    return-object p0
.end method

.method setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->pushAddress:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method setTags(ZLjava/util/Set;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;"
        }
    .end annotation

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags:Z

    .line 159
    iput-object p2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->tags:Ljava/util/Set;

    .line 160
    return-object p0
.end method

.method setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->userId:Ljava/lang/String;

    .line 172
    return-object p0
.end method
