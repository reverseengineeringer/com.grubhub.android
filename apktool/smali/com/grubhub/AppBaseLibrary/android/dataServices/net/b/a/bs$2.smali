.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;->c()V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 59
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;

    .line 63
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 64
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 65
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 66
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setState(Ljava/lang/String;)V

    .line 68
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 69
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setCountry(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 71
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 72
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->isPrecise()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setIsPrecise(Z)V

    .line 73
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeocodeAddressDataModel;->getPickupRadius()Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setPickupRadius(Ljava/lang/Float;)V

    .line 74
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;->onResponse(Ljava/lang/Object;)V

    .line 91
    :cond_1
    :goto_1
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_1

    .line 82
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    .line 88
    :goto_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 85
    :cond_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_LOOKUP:Lcom/grubhub/AppBaseLibrary/android/b/a;

    goto :goto_2
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bs$2;->a(Ljava/util/ArrayList;)V

    return-void
.end method
