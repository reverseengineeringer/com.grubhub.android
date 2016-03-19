.class Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;->a(Ljava/lang/Void;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/c;->i()V

    .line 281
    :cond_0
    return-void
.end method
