.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel$GHSIPastOrderItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private choiceDescription:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private quantity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->id:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->name:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->choiceDescription:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->quantity:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->price:Ljava/lang/String;

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$1;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItemChoiceDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->choiceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()Ljava/lang/Float;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->price:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->price:Ljava/lang/String;

    const-string v2, "$ "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->price:Ljava/lang/String;

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->price:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 428
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItemQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->quantity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->choiceDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->quantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrderItem;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    return-void
.end method
