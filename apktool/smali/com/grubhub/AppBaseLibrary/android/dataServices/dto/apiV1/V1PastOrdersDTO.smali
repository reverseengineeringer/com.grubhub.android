.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$1;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$1;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->id:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->firstName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->lastName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->email:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->token:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPastOrders()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->order:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->order:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 488
    :cond_0
    return-object v0
.end method

.method public getPastOrdersCount()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->order:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->order:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;->orders:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO$GHSPastOrders;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    return-void
.end method
