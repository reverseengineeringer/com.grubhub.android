.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->a(Ljava/lang/String;JLandroid/widget/ViewFlipper;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ViewFlipper;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;Landroid/widget/ViewFlipper;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$3;->a:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->dismiss()V

    .line 452
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/q;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$3;->a:Landroid/widget/ViewFlipper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method
