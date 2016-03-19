.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private crossStreet:Ljava/lang/String;

.field private deliveryInstructions:Ljava/lang/String;

.field private emailAddress:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isDefault:Z

.field private isPrecise:Z

.field private isSavedAddress:Z

.field private label:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pickupRadius:Ljava/lang/Float;

.field private state:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCrossStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->crossStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->deliveryInstructions:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->isDefault:Z

    return v0
.end method

.method public getIsPrecise()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->isPrecise:Z

    return v0
.end method

.method public getIsSavedAddress()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->isSavedAddress:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPickupRadius()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->pickupRadius:Ljava/lang/Float;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->address1:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->address2:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->city:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setCrossStreet(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->crossStreet:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDeliveryInstructions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->deliveryInstructions:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->emailAddress:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setIsDefault(Z)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->isDefault:Z

    .line 179
    return-void
.end method

.method public setIsPrecise(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->isPrecise:Z

    .line 199
    return-void
.end method

.method public setIsSavedAddress(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->isSavedAddress:Z

    .line 189
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->label:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->lat:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->lng:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->phone:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPickupRadius(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->pickupRadius:Ljava/lang/Float;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->state:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1AddressDTO;->zip:Ljava/lang/String;

    .line 99
    return-void
.end method
