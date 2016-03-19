.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1029
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/m;)V

    .line 1032
    const v1, 0x7f0802d1

    const v2, 0x7f080358

    const v3, 0x7f0803e5

    const/4 v6, 0x0

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1034
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/l;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/l;->b()V

    .line 1038
    :cond_0
    return-void
.end method
