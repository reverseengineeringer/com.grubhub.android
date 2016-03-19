.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;

    .line 65
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 66
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 68
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 69
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setState(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 71
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCountry(Ljava/lang/String;)V

    .line 72
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 73
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->isPrecise()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setIsPrecise(Z)V

    .line 75
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getPickupRadius()Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setPickupRadius(Ljava/lang/Float;)V

    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;->onResponse(Ljava/lang/Object;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 82
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    .line 88
    :goto_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;->l:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;->m:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(DDLjava/util/ArrayList;)V

    goto :goto_0

    .line 85
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_LOOKUP:Lcom/grubhub/AppBaseLibrary/android/b/a;

    goto :goto_1
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$2;->a(Ljava/util/ArrayList;)V

    return-void
.end method
