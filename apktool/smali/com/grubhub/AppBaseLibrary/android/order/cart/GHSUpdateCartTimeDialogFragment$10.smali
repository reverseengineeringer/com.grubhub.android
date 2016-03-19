.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->a(Ljava/lang/String;Landroid/widget/ViewFlipper;Lcom/grubhub/AppBaseLibrary/android/order/cart/r;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->dismiss()V

    .line 405
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/q;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 408
    :cond_0
    return-void
.end method
