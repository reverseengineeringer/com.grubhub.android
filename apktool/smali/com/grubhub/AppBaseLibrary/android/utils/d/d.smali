.class public Lcom/grubhub/AppBaseLibrary/android/utils/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/google/android/gms/wallet/FullWalletRequest;
    .locals 6

    .prologue
    .line 71
    invoke-static {}, Lcom/google/android/gms/wallet/FullWalletRequest;->a()Lcom/google/android/gms/wallet/b;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Lcom/google/android/gms/wallet/b;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/b;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/google/android/gms/wallet/Cart;->a()Lcom/google/android/gms/wallet/a;

    move-result-object v1

    const-string v2, "USD"

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/a;->b(Ljava/lang/String;)Lcom/google/android/gms/wallet/a;

    move-result-object v1

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 75
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/a;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/a;

    move-result-object v1

    .line 76
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/d/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/a;->a(Ljava/util/List;)Lcom/google/android/gms/wallet/a;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/wallet/a;->a()Lcom/google/android/gms/wallet/Cart;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/b;->a(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/b;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/b;->a()Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/braintreepayments/api/c;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->a()Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v4}, Lcom/google/android/gms/wallet/d;->g(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v4}, Lcom/google/android/gms/wallet/d;->f(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    const v1, 0x7f08053a

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->c(Ljava/lang/String;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v5}, Lcom/google/android/gms/wallet/d;->a(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v5}, Lcom/google/android/gms/wallet/d;->b(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v4}, Lcom/google/android/gms/wallet/d;->c(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    const-string v1, "USD"

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->b(Ljava/lang/String;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v4}, Lcom/google/android/gms/wallet/d;->d(Z)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    const-string v1, "%.2f"

    new-array v2, v4, [Ljava/lang/Object;

    .line 52
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lcom/braintreepayments/api/c;->k()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->a(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/google/android/gms/wallet/Cart;->a()Lcom/google/android/gms/wallet/a;

    move-result-object v1

    const-string v2, "USD"

    .line 55
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/a;->b(Ljava/lang/String;)Lcom/google/android/gms/wallet/a;

    move-result-object v1

    const-string v2, "%.2f"

    new-array v3, v4, [Ljava/lang/Object;

    .line 56
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/a;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/a;

    move-result-object v1

    .line 57
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/d/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/a;->a(Ljava/util/List;)Lcom/google/android/gms/wallet/a;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/wallet/a;->a()Lcom/google/android/gms/wallet/Cart;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/d;->a(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/d;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/d;->a()Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/d/d$1;->a:[I

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 190
    const-string v0, "Promo Code"

    .line 193
    :goto_0
    return-object v0

    .line 187
    :pswitch_0
    const-string v0, "Gift Card"

    goto :goto_0

    .line 193
    :cond_0
    const-string v0, "Promo Code"

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wallet/LineItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 113
    invoke-static {}, Lcom/google/android/gms/wallet/LineItem;->a()Lcom/google/android/gms/wallet/c;

    move-result-object v3

    const-string v4, "USD"

    .line 114
    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/c;->e(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v3

    .line 115
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v3

    .line 116
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/c;->b(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v3

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    .line 117
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemPrice()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/c;->c(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v3

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    .line 118
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemPrice()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/wallet/c;->d(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v7}, Lcom/google/android/gms/wallet/c;->a(I)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/c;->a()Lcom/google/android/gms/wallet/LineItem;

    move-result-object v0

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/google/android/gms/wallet/LineItem;->a()Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "USD"

    .line 126
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->e(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "Tip"

    .line 127
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v7}, Lcom/google/android/gms/wallet/c;->a(I)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "%.2f"

    new-array v3, v8, [Ljava/lang/Object;

    .line 129
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->d(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/c;->a()Lcom/google/android/gms/wallet/LineItem;

    move-result-object v0

    .line 125
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_2

    .line 135
    invoke-static {}, Lcom/google/android/gms/wallet/LineItem;->a()Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "USD"

    .line 136
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->e(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "Tax"

    .line 137
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v8}, Lcom/google/android/gms/wallet/c;->a(I)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "%.2f"

    new-array v3, v8, [Ljava/lang/Object;

    .line 139
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->d(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/c;->a()Lcom/google/android/gms/wallet/LineItem;

    move-result-object v0

    .line 135
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_3

    .line 145
    invoke-static {}, Lcom/google/android/gms/wallet/LineItem;->a()Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "USD"

    .line 146
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->e(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "Delivery Fee"

    .line 147
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v7}, Lcom/google/android/gms/wallet/c;->a(I)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "%.2f"

    new-array v3, v8, [Ljava/lang/Object;

    .line 149
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->d(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/c;->a()Lcom/google/android/gms/wallet/LineItem;

    move-result-object v0

    .line 145
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_3
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_4

    .line 155
    invoke-static {}, Lcom/google/android/gms/wallet/LineItem;->a()Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "USD"

    .line 156
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->e(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "Coupon"

    .line 157
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v7}, Lcom/google/android/gms/wallet/c;->a(I)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    const-string v2, "%.2f"

    new-array v3, v8, [Ljava/lang/Object;

    .line 159
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    neg-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wallet/c;->d(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/c;->a()Lcom/google/android/gms/wallet/LineItem;

    move-result-object v0

    .line 155
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_4
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValue()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValue()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_5

    .line 166
    invoke-static {}, Lcom/google/android/gms/wallet/LineItem;->a()Lcom/google/android/gms/wallet/c;

    move-result-object v2

    const-string v3, "USD"

    .line 167
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/c;->e(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v2

    .line 168
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountCodeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v7}, Lcom/google/android/gms/wallet/c;->a(I)Lcom/google/android/gms/wallet/c;

    move-result-object v2

    const-string v3, "%.2f"

    new-array v4, v8, [Ljava/lang/Object;

    .line 170
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/wallet/c;->d(Ljava/lang/String;)Lcom/google/android/gms/wallet/c;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/c;->a()Lcom/google/android/gms/wallet/LineItem;

    move-result-object v0

    .line 166
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_5
    return-object v1
.end method

.method public static a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->i()[Landroid/accounts/Account;

    move-result-object v2

    .line 96
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->h()Ljava/util/Locale;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
