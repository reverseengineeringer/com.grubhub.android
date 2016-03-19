.class public Lcom/urbanairship/actions/ActionValue;
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
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jsonValue:Lcom/urbanairship/json/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/urbanairship/actions/ActionValue$1;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionValue$1;-><init>()V

    sput-object v0, Lcom/urbanairship/actions/ActionValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    iput-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/json/JsonValue;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    sget-object p1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    .line 52
    return-void
.end method

.method public static wrap(C)Lcom/urbanairship/actions/ActionValue;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(C)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(I)Lcom/urbanairship/actions/ActionValue;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(I)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(J)Lcom/urbanairship/actions/ActionValue;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0, p1}, Lcom/urbanairship/json/JsonValue;->wrap(J)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/actions/ActionValue;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/actions/ActionValueException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lcom/urbanairship/actions/ActionValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ActionValue object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/actions/ActionValueException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static wrap(Ljava/lang/String;)Lcom/urbanairship/actions/ActionValue;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(Z)Lcom/urbanairship/actions/ActionValue;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Z)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 232
    instance-of v0, p1, Lcom/urbanairship/actions/ActionValue;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lcom/urbanairship/actions/ActionValue;

    .line 234
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    iget-object v1, p1, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/JsonValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Z)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(D)D
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/json/JsonValue;->getDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getList()Lcom/urbanairship/json/JsonList;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    return-object v0
.end method

.method public getLong(J)J
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap()Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/ActionValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    return v0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 268
    return-void
.end method
