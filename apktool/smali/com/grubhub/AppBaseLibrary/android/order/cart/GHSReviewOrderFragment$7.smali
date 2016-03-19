.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    .line 1075
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/l;->a()V

    .line 1078
    :cond_0
    return-void
.end method
