.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Landroid/content/Context;Ljava/lang/String;)V
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

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 365
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 352
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;Z)V

    .line 354
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->m()V

    .line 358
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(ZZ)V

    .line 359
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "coupons"

    const-string v3, "remove coupon"

    const-string v4, "success"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSCouponFragment$7;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
