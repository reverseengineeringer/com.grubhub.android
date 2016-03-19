.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;
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
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected coupons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CouponDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected diner_grand_total:Ljava/lang/Integer;

.field protected diner_subtotal:Ljava/lang/Integer;

.field protected fees:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderFees;

.field protected lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

.field protected taxes:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderTaxes;

.field protected tip:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2Tip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->diner_grand_total:Ljava/lang/Integer;

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->diner_subtotal:Ljava/lang/Integer;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->coupons:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->coupons:Ljava/util/ArrayList;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CouponDTO;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 28
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    .line 29
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderFees;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderFees;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->fees:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderFees;

    .line 30
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderTaxes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderTaxes;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->taxes:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderTaxes;

    .line 31
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2Tip;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2Tip;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->tip:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2Tip;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->diner_grand_total:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->diner_subtotal:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->coupons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 44
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->lines:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderLines;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->fees:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderFees;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->taxes:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2OrderTaxes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO;->tip:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderChargesDTO$V2Tip;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    return-void
.end method
