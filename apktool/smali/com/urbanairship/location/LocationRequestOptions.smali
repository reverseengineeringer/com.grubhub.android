.class public Lcom/urbanairship/location/LocationRequestOptions;
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
            "Lcom/urbanairship/location/LocationRequestOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_REQUEST_PRIORITY:I = 0x2

.field public static final DEFAULT_UPDATE_INTERVAL_METERS:F = 800.0f

.field public static final DEFAULT_UPDATE_INTERVAL_MILLISECONDS:J = 0x493e0L

.field public static final MIN_DISTANCE_KEY:Ljava/lang/String; = "minDistance"

.field public static final MIN_TIME_KEY:Ljava/lang/String; = "minTime"

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x2

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x1

.field public static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field public static final PRIORITY_LOW_POWER:I = 0x3

.field public static final PRIORITY_NO_POWER:I = 0x4


# instance fields
.field private final minDistance:F

.field private final minTime:J

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions$1;

    invoke-direct {v0}, Lcom/urbanairship/location/LocationRequestOptions$1;-><init>()V

    sput-object v0, Lcom/urbanairship/location/LocationRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJF)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    .line 166
    iput-wide p2, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    .line 167
    iput p4, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    .line 168
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/urbanairship/location/LocationRequestOptions$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;)V
    .locals 4

    .prologue
    .line 145
    # getter for: Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->access$000(Lcom/urbanairship/location/LocationRequestOptions$Builder;)I

    move-result v0

    # getter for: Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->access$100(Lcom/urbanairship/location/LocationRequestOptions$Builder;)J

    move-result-wide v2

    # getter for: Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->access$200(Lcom/urbanairship/location/LocationRequestOptions$Builder;)F

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;Lcom/urbanairship/location/LocationRequestOptions$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;)V

    return-void
.end method

.method static synthetic access$400(J)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V

    return-void
.end method

.method static synthetic access$500(F)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V

    return-void
.end method

.method static synthetic access$600(I)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0}, Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V

    return-void
.end method

.method public static createDefaultOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 5

    .prologue
    .line 190
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions;

    const/4 v1, 0x2

    const-wide/32 v2, 0x493e0

    const/high16 v4, 0x44480000    # 800.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    return-object v0
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    .line 308
    if-nez v1, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const-string v0, "minDistance"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getNumber()Ljava/lang/Number;

    move-result-object v0

    .line 314
    if-nez v0, :cond_1

    const/high16 v0, 0x44480000    # 800.0f

    .line 315
    :goto_1
    const-string v2, "minTime"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v4, v5}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v2

    .line 316
    const-string v4, "priority"

    invoke-virtual {v1, v4}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/urbanairship/json/JsonValue;->getInt(I)I

    move-result v4

    .line 318
    invoke-static {v4}, Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V

    .line 319
    invoke-static {v0}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V

    .line 320
    invoke-static {v2, v3}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V

    .line 322
    new-instance v1, Lcom/urbanairship/location/LocationRequestOptions;

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    move-object v0, v1

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_1
.end method

.method private static verifyMinDistance(F)V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minDistance must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    return-void
.end method

.method private static verifyMinTime(J)V
    .locals 2

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minTime must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    return-void
.end method

.method private static verifyPriority(I)V
    .locals 2

    .prologue
    .line 270
    packed-switch p0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority can only be either PRIORITY_HIGH_ACCURACY, PRIORITY_BALANCED_POWER_ACCURACY, PRIORITY_LOW_POWER, or PRIORITY_NO_POWER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :pswitch_0
    return-void

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 232
    instance-of v1, p1, Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    check-cast p1, Lcom/urbanairship/location/LocationRequestOptions;

    .line 237
    iget v1, p1, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    iget v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p1, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    iget-wide v4, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p1, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    iget v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMinDistance()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    return v0
.end method

.method public getMinTime()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    return v0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    const-string v1, "priority"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "minDistance"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "minTime"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getMinTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :try_start_0
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "LocationRequestOptions - Unable to serialize to JSON."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationRequestOptions: Priority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minDistance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 180
    return-void
.end method
