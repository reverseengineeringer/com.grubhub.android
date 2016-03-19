.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private addressDataModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field private isPickup:Z

.field private orderId:Ljava/lang/String;

.field private restaurantId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->restaurantId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddressDataModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->addressDataModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method

.method public getIsPickup()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->isPickup:Z

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->restaurantId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressDataModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->addressDataModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 23
    return-void
.end method

.method public setIsPickup(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->isPickup:Z

    .line 73
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->orderId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setRestaurantId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;->restaurantId:Ljava/lang/String;

    .line 35
    return-void
.end method
