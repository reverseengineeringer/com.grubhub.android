.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private cachedGeocodeLatitude:Ljava/lang/String;

.field private cachedGeocodeLongitude:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private crossStreet:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isDefault:Z

.field private isSavedAddress:Z

.field private label:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pickupRadius:Ljava/lang/Float;

.field private specialInstructions:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;-><init>()V

    return-void
.end method

.method private trimValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->address1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->address2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->city:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCrossStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->crossStreet:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->specialInstructions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->isDefault:Z

    return v0
.end method

.method public getIsPrecise()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSavedAddress()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->isSavedAddress:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->label:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->cachedGeocodeLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->cachedGeocodeLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->phone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPickupRadius()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->pickupRadius:Ljava/lang/Float;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->state:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->zip:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->address1:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->address2:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->city:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public setCrossStreet(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->crossStreet:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setDeliveryInstructions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->specialInstructions:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIsDefault(Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->isDefault:Z

    .line 180
    return-void
.end method

.method public setIsPrecise(Z)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public setIsSavedAddress(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->isSavedAddress:Z

    .line 190
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->label:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->cachedGeocodeLatitude:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->cachedGeocodeLongitude:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->phone:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPickupRadius(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->pickupRadius:Ljava/lang/Float;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->state:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1SavedAddressDTO;->zip:Ljava/lang/String;

    .line 100
    return-void
.end method
