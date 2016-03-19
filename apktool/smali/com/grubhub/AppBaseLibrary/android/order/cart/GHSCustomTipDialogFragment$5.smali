.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$5;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/j;->a(F)V

    .line 212
    :cond_0
    return-void
.end method
