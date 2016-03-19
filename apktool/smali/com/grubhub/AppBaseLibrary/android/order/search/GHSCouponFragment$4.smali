.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Z)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 280
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 284
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(ZZ)V

    .line 285
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$4;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "change coupon"

    .line 286
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "coupons"

    const-string v4, "error"

    invoke-direct {v2, v3, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 291
    return-void

    .line 285
    :cond_1
    const-string v0, "apply coupon"

    goto :goto_0
.end method
