.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;


# static fields
.field private static final TYPE_STREET_ADDRESS:Ljava/lang/String; = "street_address"


# instance fields
.field private address_country:Ljava/lang/String;

.field private address_locality:Ljava/lang/String;

.field private address_region:Ljava/lang/String;

.field private address_sublocality:Ljava/lang/String;

.field private establishment:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private neighborhood:Ljava/lang/String;

.field private pickup_radius:Ljava/lang/Float;

.field private postal_code:Ljava/lang/String;

.field private street_address1:Ljava/lang/String;

.field private street_address2:Ljava/lang/String;

.field private types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->street_address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->street_address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->address_locality:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->address_locality:Ljava/lang/String;

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->address_sublocality:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->address_sublocality:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->address_country:Ljava/lang/String;

    return-object v0
.end method

.method public getEstablishment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->establishment:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->longitude:D

    return-wide v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getPickupRadius()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->pickup_radius:Ljava/lang/Float;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->address_region:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->postal_code:Ljava/lang/String;

    return-object v0
.end method

.method public isPrecise()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->types:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2GeocodeAddressDTO;->types:Ljava/util/ArrayList;

    const-string v1, "street_address"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
