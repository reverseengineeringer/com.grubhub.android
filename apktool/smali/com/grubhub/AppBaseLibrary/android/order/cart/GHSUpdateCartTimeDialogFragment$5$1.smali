.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->dismiss()V

    .line 334
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$5;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->CREATE_NEW:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/q;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/p;)V

    .line 337
    :cond_0
    return-void
.end method
