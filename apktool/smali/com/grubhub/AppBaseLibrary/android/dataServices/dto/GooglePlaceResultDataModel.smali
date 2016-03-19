.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADMINISTRATIVE_AREA_LEVEL_1:Ljava/lang/String; = "administrative_area_level_1"

.field private static final COUNTRY:Ljava/lang/String; = "country"

.field private static final LOCALITY:Ljava/lang/String; = "locality"

.field private static final POLITICAL:Ljava/lang/String; = "political"

.field private static final POSTAL_CODE:Ljava/lang/String; = "postal_code"

.field private static final ROUTE:Ljava/lang/String; = "route"

.field private static final STREET_NUMBER:Ljava/lang/String; = "street_number"

.field private static final SUBLOCALITY_LEVEL_1:Ljava/lang/String; = "sublocality_level_1"


# instance fields
.field private address_components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;",
            ">;"
        }
    .end annotation
.end field

.field private alt_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AltId;",
            ">;"
        }
    .end annotation
.end field

.field private formatted_address:Ljava/lang/String;

.field private formatted_phone_number:Ljava/lang/String;

.field private geometry:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private international_phone_number:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private opening_hours:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$OpeningHours;

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private place_id:Ljava/lang/String;

.field private price_level:I

.field private rating:D

.field private reference:Ljava/lang/String;

.field private reviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Review;",
            ">;"
        }
    .end annotation
.end field

.field private scope:Ljava/lang/String;

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

.field private url:Ljava/lang/String;

.field private utc_offset:I

.field private vicinity:Ljava/lang/String;

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;
    .locals 4

    .prologue
    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->address_components:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->address_components:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    .line 270
    if-eqz v0, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->types:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->types:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->types:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAddressLine()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    const-string v0, ""

    .line 122
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->getStreetNumber()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->getStreetName()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_1
    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    const-string v0, "locality"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    move-result-object v0

    .line 146
    const-string v1, "sublocality_level_1"

    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    move-result-object v1

    .line 147
    if-eqz v0, :cond_0

    .line 148
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 149
    :cond_0
    if-eqz v1, :cond_1

    .line 150
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "country"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->geometry:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->geometry:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->location:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->geometry:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->location:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;->lat:D
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;->access$200(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;)D

    move-result-wide v0

    .line 244
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->geometry:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->geometry:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->location:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->geometry:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->location:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;->access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;

    move-result-object v0

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;->lng:D
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;->access$300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$Geometry$Location;)D

    move-result-wide v0

    .line 257
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->place_id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "administrative_area_level_1"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "route"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const-string v0, "street_number"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string v0, "postal_code"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;->findAddressComponentOfType(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->long_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel$AddressComponent;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
