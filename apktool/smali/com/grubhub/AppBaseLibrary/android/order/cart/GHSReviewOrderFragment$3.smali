.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 999
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1000
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1001
    return-void
.end method
