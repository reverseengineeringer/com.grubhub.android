.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Z)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;->a:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$8;->b:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    goto :goto_0
.end method
