.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 22
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 23
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 24
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V

    .line 25
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/List;)V

    .line 26
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 27
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->g(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;)V

    .line 29
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    .line 30
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h(Z)V

    .line 31
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V

    .line 32
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Ljava/util/ArrayList;)V

    .line 35
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V

    .line 36
    return-void
.end method

.method private static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V
    .locals 3

    .prologue
    .line 44
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->G()Ljava/util/ArrayList;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->isSingleUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/ArrayList;)V

    .line 54
    :cond_2
    return-void
.end method
