.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    .line 601
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->onBackPressed()V

    .line 604
    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a()V

    .line 580
    return-void
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    .line 585
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->onBackPressed()V

    .line 588
    :cond_0
    return-void
.end method

.method public c(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;

    .line 593
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->onBackPressed()V

    .line 596
    :cond_0
    return-void
.end method
