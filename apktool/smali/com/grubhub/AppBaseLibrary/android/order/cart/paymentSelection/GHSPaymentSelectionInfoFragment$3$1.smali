.class Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;->a()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlreadyExists()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3$1;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method
