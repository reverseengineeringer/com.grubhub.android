.class abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    .line 96
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b:Lcom/google/gson/Gson;

    .line 97
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 765
    const-string v0, "ERROR_LOADING_OBJECT_FROM_STORAGE"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 770
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 468
    const-string v0, "com.grubhub.persistence.savedAddressLoaded"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    const-string v0, "com.grubhub.persistence.savedPhoneNumber"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;
    .locals 2

    .prologue
    .line 487
    const-string v0, "com.grubhub.persistence.reviews"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;

    return-object v0
.end method

.method public D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;
    .locals 2

    .prologue
    .line 497
    const-string v0, "com.grubhub.persistence.userSession"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    return-object v0
.end method

.method public E()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$4;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;)V

    .line 533
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 534
    const-string v1, "com.grubhub.persistence.favoriteRestaurants"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 544
    const-string v0, "com.grubhub.persistence.feature.yummyRummy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public G()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$5;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;)V

    .line 550
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 551
    const-string v1, "com.grubhub.persistence.vaultedCC"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 566
    const-string v0, "com.grubhub.persistence.androidPayBrandingVisible"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    const-string v0, "com.grubhub.persistence.yummyRummyPlayUrl"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .locals 2

    .prologue
    .line 586
    const-string v0, "com.grubhub.persistence.yummyRummyCheck"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    .prologue
    .line 596
    const-string v0, "com.grubhub.persistence.yummyRummyRulesUrl"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$6;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;)V

    .line 607
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 608
    const-string v1, "com.grubhub.persistence.savedBaseAvailablePayments"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    if-eqz v1, :cond_0

    .line 624
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 631
    :cond_0
    :goto_0
    return-object v0

    .line 628
    :catch_0
    move-exception v1

    .line 630
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    if-eqz v1, :cond_0

    .line 641
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 648
    :cond_0
    :goto_0
    return-object v0

    .line 645
    :catch_0
    move-exception v1

    .line 647
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 317
    const-string v0, "com.grubhub.persistence.orderHistory"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;I)V

    .line 318
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 151
    const-string v0, "com.grubhub.persistence.messageLastCheckedTime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;J)V

    .line 152
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V
    .locals 1

    .prologue
    .line 502
    const-string v0, "com.grubhub.persistence.userSession"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)V
    .locals 2

    .prologue
    .line 184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h()Ljava/util/HashMap;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    :cond_2
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "com.grubhub.com.persistence.pendingOrderReviews"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 1

    .prologue
    .line 463
    const-string v0, "com.grubhub.persistence.filterSortCriteria"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V
    .locals 1

    .prologue
    .line 372
    const-string v0, "com.grubhub.persistence.selectedPaymentModel"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 2

    .prologue
    .line 382
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    const-string v0, "com.grubhub.persistence.cartAddressData"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    :goto_0
    return-void

    .line 386
    :cond_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    .line 387
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLabel(Ljava/lang/String;)V

    .line 388
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 389
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 390
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 391
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setState(Ljava/lang/String;)V

    .line 392
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCrossStreet(Ljava/lang/String;)V

    .line 393
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 394
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCountry(Ljava/lang/String;)V

    .line 395
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setPhone(Ljava/lang/String;)V

    .line 396
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 397
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 398
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setIsDefault(Z)V

    .line 399
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsSavedAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setIsSavedAddress(Z)V

    .line 400
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsPrecise()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setIsPrecise(Z)V

    .line 401
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPickupRadius()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setPickupRadius(Ljava/lang/Float;)V

    .line 402
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setId(Ljava/lang/String;)V

    .line 403
    const-string v1, "com.grubhub.persistence.cartAddressData"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V
    .locals 1

    .prologue
    .line 492
    const-string v0, "com.grubhub.persistence.reviews"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 615
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 616
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 165
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.grubhub.persistence.messageRead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    const-string v0, "com.grubhub.persistence.vaultedCC"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method public a(Ljava/util/LinkedHashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    const-string v0, "com.grubhub.persistence.favoriteRestaurants"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 109
    const-string v0, "com.grubhub.persistence.feature.googleNearby"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.grubhub.persistence.messageRead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 159
    :cond_0
    return v0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 507
    const-string v0, "com.grubhub.persistence.userSessionTimeout"

    invoke-virtual {p0, v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 331
    const-string v0, "com.grubhub.persistence.sessionSequence"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;I)V

    .line 332
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h()Ljava/util/HashMap;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    const-string v0, "com.grubhub.com.persistence.pendingOrderReviews"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 723
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 724
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    return-void
.end method

.method protected b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 735
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 736
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 737
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 729
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 730
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 731
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    const-string v0, "com.grubhub.persistence.savedBaseAvailablePayments"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 119
    const-string v0, "com.grubhub.persistence.feature.urbanAirship"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 104
    const-string v0, "com.grubhub.persistence.feature.googleNearby"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 443
    const-string v0, "com.grubhub.persistence.feedbackSearchCount"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;I)V

    .line 444
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 512
    const-string v0, "com.grubhub.persistence.userSessionTimeout"

    invoke-virtual {p0, v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;J)V

    .line 513
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v1, "com.grubhub.com.persistence.quitReviewSurveys"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 717
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 718
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 719
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "com.grubhub.persistence.feature.orderTracking"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 114
    const-string v0, "com.grubhub.persistence.feature.urbanAirship"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d(J)J
    .locals 3

    .prologue
    .line 517
    const-string v0, "com.grubhub.persistence.cartSearchLifetime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 251
    if-eqz v1, :cond_0

    .line 252
    const-string v1, "com.grubhub.com.persistence.quitReviewSurveys"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 134
    const-string v0, "com.grubhub.persistence.feature.futureOrders"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 135
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "com.grubhub.persistence.feature.orderTracking"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e(J)V
    .locals 1

    .prologue
    .line 522
    const-string v0, "com.grubhub.persistence.cartSearchLifetime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;J)V

    .line 523
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v1, "com.grubhub.com.persistence.submittedOrderReviews"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 172
    const-string v0, "com.grubhub.com.persistence.promptUserReview"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 139
    const-string v0, "com.grubhub.persistence.feature.futureOrders"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 146
    const-string v0, "com.grubhub.persistence.messageLastCheckedTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 292
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 296
    if-eqz v1, :cond_0

    .line 297
    const-string v1, "com.grubhub.com.persistence.submittedOrderReviews"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 341
    const-string v0, "com.grubhub.persistence.addressSearchCompleted"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 342
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 414
    const-string v0, "com.grubhub.persistence.cartAppliedCouponId"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 352
    const-string v1, "com.grubhub.persistence.feature.googleWallet"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 353
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 177
    const-string v0, "com.grubhub.com.persistence.promptUserReview"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;)V

    .line 216
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 217
    const-string v1, "com.grubhub.com.persistence.pendingOrderReviews"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    const-string v0, "com.grubhub.persistence.savedPhoneNumber"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 362
    const-string v0, "com.grubhub.persistence.googleWalletPreAuth"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 363
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "com.grubhub.com.persistence.pendingOrderReviews"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 571
    const-string v0, "com.grubhub.persistence.yummyRummyPlayUrl"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public i(Z)V
    .locals 1

    .prologue
    .line 424
    const-string v0, "com.grubhub.persistence.onboardingComplete"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 425
    return-void
.end method

.method public j()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$2;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;)V

    .line 261
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 262
    const-string v1, "com.grubhub.com.persistence.quitReviewSurveys"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 591
    const-string v0, "com.grubhub.persistence.yummyRummyRulesUrl"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public j(Z)V
    .locals 1

    .prologue
    .line 433
    const-string v0, "com.grubhub.persistence.feedbackGiven"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 434
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "com.grubhub.com.persistence.quitReviewSurveys"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public k(Z)V
    .locals 1

    .prologue
    .line 453
    const-string v0, "com.grubhub.persistence.pastOrderViewedWithoutAddingItems"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 454
    return-void
.end method

.method public l()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$3;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;)V

    .line 306
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 307
    const-string v1, "com.grubhub.com.persistence.submittedOrderReviews"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public l(Z)V
    .locals 1

    .prologue
    .line 473
    const-string v0, "com.grubhub.persistence.savedAddressLoaded"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 474
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "com.grubhub.com.persistence.submittedOrderReviews"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method public m(Z)V
    .locals 1

    .prologue
    .line 539
    const-string v0, "com.grubhub.persistence.feature.yummyRummy"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 540
    return-void
.end method

.method public n()I
    .locals 2

    .prologue
    .line 322
    const-string v0, "com.grubhub.persistence.orderHistory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public n(Z)V
    .locals 1

    .prologue
    .line 561
    const-string v0, "com.grubhub.persistence.androidPayBrandingVisible"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 562
    return-void
.end method

.method public o(Z)V
    .locals 1

    .prologue
    .line 581
    const-string v0, "com.grubhub.persistence.yummyRummyCheck"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;Z)V

    .line 582
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 327
    const-string v0, "com.grubhub.persistence.addressSearchCompleted"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    .prologue
    .line 336
    const-string v0, "com.grubhub.persistence.sessionSequence"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/d/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.grubhub.persistence.feature.googleWallet"

    .line 347
    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 357
    const-string v0, "com.grubhub.persistence.googleWalletPreAuth"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;
    .locals 2

    .prologue
    .line 367
    const-string v0, "com.grubhub.persistence.selectedPaymentModel"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    return-object v0
.end method

.method public t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 2

    .prologue
    .line 377
    const-string v0, "com.grubhub.persistence.cartAddressData"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    const-string v0, "com.grubhub.persistence.cartAppliedCouponId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 419
    const-string v0, "com.grubhub.persistence.onboardingComplete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 428
    const-string v0, "com.grubhub.persistence.feedbackGiven"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()I
    .locals 2

    .prologue
    .line 438
    const-string v0, "com.grubhub.persistence.feedbackSearchCount"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 448
    const-string v0, "com.grubhub.persistence.pastOrderViewedWithoutAddingItems"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 2

    .prologue
    .line 458
    const-string v0, "com.grubhub.persistence.filterSortCriteria"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    return-object v0
.end method
