.class public Lcom/grubhub/AppBaseLibrary/android/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;Z)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 34
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->L()Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->Y()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getAvailablePaymentTypes()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-static {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-static {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->d(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->e(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->f(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z
    .locals 2

    .prologue
    .line 81
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getTip()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 93
    :goto_0
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v4

    if-ne v3, v4, :cond_3

    move v3, v1

    .line 94
    :goto_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v4

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    if-ne v4, v5, :cond_4

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v4

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    if-ne v4, v5, :cond_4

    move v4, v1

    .line 95
    :goto_2
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getTip()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getTip()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v1

    .line 96
    :goto_3
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 92
    goto :goto_0

    :cond_3
    move v3, v2

    .line 93
    goto :goto_1

    :cond_4
    move v4, v2

    .line 94
    goto :goto_2

    :cond_5
    move v5, v2

    .line 95
    goto :goto_3
.end method

.method protected static d(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 108
    :goto_0
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValueCents()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 109
    :goto_1
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValueCents()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v1

    .line 110
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValueCents()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValueCents()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    .line 111
    :goto_3
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 107
    goto :goto_0

    :cond_3
    move v3, v2

    .line 108
    goto :goto_1

    :cond_4
    move v4, v2

    .line 109
    goto :goto_2

    :cond_5
    move v3, v2

    .line 110
    goto :goto_3
.end method

.method protected static e(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getOrderItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v2

    .line 129
    :cond_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Integer;

    .line 130
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Integer;

    move v1, v2

    .line 131
    :goto_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 132
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotalInCents()Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 133
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotalInCents()Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 137
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 138
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v0, v2

    .line 139
    :goto_2
    array-length v1, v3

    if-ge v0, v1, :cond_3

    .line 140
    aget-object v1, v3, v0

    if-eqz v1, :cond_0

    aget-object v1, v4, v0

    if-eqz v1, :cond_0

    aget-object v1, v3, v0

    aget-object v5, v4, v0

    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected static f(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 158
    :goto_0
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 159
    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 160
    :goto_2
    if-eqz v3, :cond_5

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    .line 161
    :goto_3
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 157
    goto :goto_0

    :cond_3
    move v3, v2

    .line 158
    goto :goto_1

    :cond_4
    move v3, v2

    .line 159
    goto :goto_2

    :cond_5
    move v3, v2

    .line 160
    goto :goto_3
.end method
