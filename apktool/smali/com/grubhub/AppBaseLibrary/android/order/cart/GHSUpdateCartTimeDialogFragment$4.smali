.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->a(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ViewFlipper;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 299
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setSubOrderType(Lcom/grubhub/AppBaseLibrary/android/order/l;)V

    .line 307
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setWhenFor(J)V

    .line 312
    :goto_0
    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 315
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->dismiss()V

    .line 316
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/q;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->KEEP:Lcom/grubhub/AppBaseLibrary/android/order/cart/p;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/q;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/p;)V

    .line 319
    :cond_1
    return-void

    .line 309
    :cond_2
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setSubOrderType(Lcom/grubhub/AppBaseLibrary/android/order/l;)V

    .line 310
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setWhenFor(J)V

    goto :goto_0
.end method
