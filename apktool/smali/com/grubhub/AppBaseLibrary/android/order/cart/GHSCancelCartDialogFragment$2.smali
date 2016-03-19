.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Landroid/widget/Button;Landroid/widget/Button;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/b;->a()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->dismiss()V

    .line 213
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "future ordering"

    const-string v3, "open order interactions_cta"

    const-string v4, "stop order step 2 confirm"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 217
    return-void
.end method
