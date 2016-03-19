.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$30;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$30;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$30;->a:Landroid/app/Activity;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 1397
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$30;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    .line 1398
    return-void
.end method
