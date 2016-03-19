.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;


# instance fields
.field private address_country:Ljava/lang/String;

.field private address_locality:Ljava/lang/String;

.field private address_region:Ljava/lang/String;

.field private cross_street:Ljava/lang/String;

.field private diner_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isDefault:Z

.field private isSavedAddress:Z

.field private label:Ljava/lang/String;

.field private last_used:Ljava/lang/Long;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pickup_radius:Ljava/lang/Float;

.field private postal_code:Ljava/lang/String;

.field private special_instructions:Ljava/lang/String;

.field private street_address1:Ljava/lang/String;

.field private street_address2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;-><init>()V

    return-void
.end method

.method private trimValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
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
    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->street_address1:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->street_address2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->address_locality:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->address_country:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrossStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->cross_street:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->special_instructions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->isDefault:Z

    return v0
.end method

.method public getIsPrecise()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public getIsSavedAddress()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->isSavedAddress:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->label:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->phone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPickupRadius()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->pickup_radius:Ljava/lang/Float;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->address_region:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->postal_code:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->street_address1:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->street_address2:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->address_locality:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->address_country:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCrossStreet(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->cross_street:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDeliveryInstructions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->special_instructions:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->id:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setIsDefault(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->isDefault:Z

    .line 184
    return-void
.end method

.method public setIsPrecise(Z)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public setIsSavedAddress(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->isSavedAddress:Z

    .line 194
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->label:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->latitude:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->longitude:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->phone:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setPickupRadius(Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->pickup_radius:Ljava/lang/Float;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->address_region:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressDTO;->postal_code:Ljava/lang/String;

    .line 104
    return-void
.end method
