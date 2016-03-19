.class Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->S()Ljava/util/ArrayList;

    move-result-object v2

    .line 201
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/e;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/e;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/e;

    if-ne v0, v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    .line 203
    if-nez v0, :cond_3

    .line 204
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;-><init>()V

    move-object v1, v0

    .line 208
    :goto_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->setSelectedPayPalId(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    .line 212
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$1;

    invoke-direct {v1, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;Ljava/util/List;)V

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 249
    :cond_0
    :goto_1
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;->b()V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-direct {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;-><init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    .line 239
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(Lcom/grubhub/AppBaseLibrary/android/utils/g/d;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
