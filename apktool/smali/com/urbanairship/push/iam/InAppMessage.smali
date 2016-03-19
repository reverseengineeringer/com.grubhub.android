.class public Lcom/urbanairship/push/iam/InAppMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/JsonSerializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_EXPIRY_MS:J = 0x9a7ec800L

.field public static final POSITION_BOTTOM:I = 0x0

.field public static final POSITION_TOP:I = 0x1


# instance fields
.field private final alert:Ljava/lang/String;

.field private final buttonActionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final buttonGroupId:Ljava/lang/String;

.field private final clickActionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field

.field private final durationMilliseconds:Ljava/lang/Long;

.field private final expiryMS:J

.field private final extras:Lcom/urbanairship/json/JsonMap;

.field private final id:Ljava/lang/String;

.field private final position:I

.field private final primaryColor:Ljava/lang/Integer;

.field private final secondaryColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage$1;

    invoke-direct {v0}, Lcom/urbanairship/push/iam/InAppMessage$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_3
    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/json/JsonMap;

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    :cond_0
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    .line 134
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    const-class v1, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    .line 137
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    const-class v1, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 138
    return-void

    :cond_1
    move-object v0, v1

    .line 120
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 121
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 122
    goto :goto_2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v0, "InAppMessage - unable to parse extras from parcel."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/urbanairship/push/iam/InAppMessage$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;)V
    .locals 4

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    .line 98
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$100(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    .line 99
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$200(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/urbanairship/json/JsonMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    .line 100
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$300(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    .line 101
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$400(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    .line 102
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$500(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    .line 103
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$600(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    .line 104
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$700(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    .line 105
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$800(Lcom/urbanairship/push/iam/InAppMessage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    .line 106
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$900(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    .line 107
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$1000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    .line 108
    return-void

    .line 97
    :cond_0
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 99
    :cond_1
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$200(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    goto :goto_1

    .line 104
    :cond_2
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$700(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;Lcom/urbanairship/push/iam/InAppMessage$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/urbanairship/push/iam/InAppMessage;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/urbanairship/push/iam/InAppMessage;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    return v0
.end method

.method static synthetic access$1800(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method private static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    :goto_0
    return-object v0

    .line 399
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InAppMessage - Unable to parse color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    const-wide v10, 0x9a7ec800L

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 306
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    .line 308
    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const-string v2, "display"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    .line 313
    const-string v3, "actions"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v3

    .line 315
    if-eqz v2, :cond_1

    const-string v4, "banner"

    const-string v5, "type"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 316
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppMessage - Unable to parse json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    new-instance v4, Lcom/urbanairship/push/iam/InAppMessage$Builder;

    invoke-direct {v4}, Lcom/urbanairship/push/iam/InAppMessage$Builder;-><init>()V

    .line 322
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v0

    const-string v5, "extra"

    invoke-virtual {v1, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExtras(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v0

    const-string v5, "alert"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setAlert(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v0

    const-string v5, "primary_color"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/push/iam/InAppMessage;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPrimaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v0

    const-string v5, "secondary_color"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/push/iam/InAppMessage;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setSecondaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 329
    const-string v0, "duration_ms"

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    const-string v0, "duration_ms"

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v6

    .line 331
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 332
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 341
    :cond_3
    :goto_1
    const-string v0, "expiry_ms"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    const-string v0, "expiry_ms"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 347
    :cond_4
    :goto_2
    const-string v0, "top"

    const-string v1, "position"

    invoke-virtual {v2, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 353
    :goto_3
    if-eqz v3, :cond_b

    .line 355
    const-string v0, "on_click"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_9

    .line 357
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v6, v0}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 335
    :cond_5
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v6

    .line 336
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 337
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_1

    .line 343
    :cond_6
    const-string v0, "expiry"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    const-string v0, "expiry"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-static {v0, v6, v7}, Lcom/urbanairship/util/DateUtils;->parseIso8601(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_2

    .line 350
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto :goto_3

    .line 361
    :cond_8
    invoke-virtual {v4, v1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setClickActionValues(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 365
    :cond_9
    const-string v0, "button_group"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setButtonGroupId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 368
    const-string v0, "button_actions"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_b

    .line 371
    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-virtual {v2, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    .line 375
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 376
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v8, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 380
    :cond_a
    invoke-virtual {v4, v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setButtonActionValues(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto :goto_5

    .line 385
    :cond_b
    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->create()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    if-ne p0, p1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    instance-of v2, p1, Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_2

    move v0, v1

    .line 452
    goto :goto_0

    .line 455
    :cond_2
    check-cast p1, Lcom/urbanairship/push/iam/InAppMessage;

    .line 457
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v2, v3}, Lcom/urbanairship/json/JsonMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_5
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_6
    iget v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    iget v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    iget-wide v4, p1, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6
.end method

.method public getAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonActionValues(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActionValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    return-wide v0
.end method

.method public getExtras()Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    return v0
.end method

.method public getPrimaryColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSecondaryColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 473
    .line 476
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x193

    .line 477
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 478
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 481
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 482
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 483
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 484
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 485
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    add-int/2addr v0, v1

    .line 486
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    return v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 484
    :cond_5
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .locals 10

    .prologue
    const v9, 0xffffff

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 409
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 410
    const-string v0, "id"

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v0, "expiry_ms"

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v0, "extra"

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 418
    const-string v0, "display"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v0, "type"

    const-string v3, "banner"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "alert"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "position"

    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    if-ne v0, v7, :cond_3

    const-string v0, "top"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "duration_ms"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "primary_color"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#%06X"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 432
    const-string v0, "secondary_color"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#%06X"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    const-string v2, "actions"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v2, "on_click"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v2, "button_group"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v2, "button_actions"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {v1, v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0

    .line 421
    :cond_3
    const-string v0, "bottom"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    :goto_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 173
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 174
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
