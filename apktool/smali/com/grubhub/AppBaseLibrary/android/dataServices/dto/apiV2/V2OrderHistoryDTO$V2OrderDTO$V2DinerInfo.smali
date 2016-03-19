.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected email:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected phone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->id:Ljava/lang/String;

    .line 332
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->name:Ljava/lang/String;

    .line 333
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->email:Ljava/lang/String;

    .line 334
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->phone:Ljava/lang/String;

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$1;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 348
    return-void
.end method
