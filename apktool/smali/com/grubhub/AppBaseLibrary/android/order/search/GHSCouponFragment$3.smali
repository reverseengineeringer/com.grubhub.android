.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 257
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Z)V

    .line 260
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->m()V

    .line 266
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(ZZ)V

    .line 267
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "change coupon"

    .line 268
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "coupons"

    const-string v4, "success"

    invoke-direct {v2, v3, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 273
    return-void

    .line 267
    :cond_1
    const-string v0, "apply coupon"

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
