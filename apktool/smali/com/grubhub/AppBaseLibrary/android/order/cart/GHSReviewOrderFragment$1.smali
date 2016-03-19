.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/k;->f(Ljava/lang/String;)V

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
