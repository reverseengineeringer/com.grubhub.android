.class public abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 9

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CHECKOUT_ORDER_ALREADY_COMPLETED:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-eq v0, v1, :cond_1

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 90
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->Y()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    move-result-object v8

    .line 48
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v3

    .line 49
    if-eqz v8, :cond_2

    if-nez v3, :cond_3

    .line 50
    :cond_2
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {v0, v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 56
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a:Landroid/content/Context;

    const-string v1, ""

    .line 62
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCustomerContactPhone()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v5

    sget-object v6, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    .line 66
    :goto_1
    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getOrderPaymentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v6

    sget-object v7, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_MODIFYING_PLACED_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;)Landroid/content/Intent;

    move-result-object v1

    .line 71
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    if-eqz v0, :cond_6

    .line 72
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a:Landroid/content/Context;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->h()V

    .line 79
    :cond_4
    :goto_2
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 86
    const-string v0, "MODIFY_CHECKED_OUT_CART"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;

    invoke-direct {v1, p0, v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 65
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x17

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method
