.class Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3$1;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/b/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/l;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/l;->a()V

    .line 441
    :cond_0
    return-void
.end method
