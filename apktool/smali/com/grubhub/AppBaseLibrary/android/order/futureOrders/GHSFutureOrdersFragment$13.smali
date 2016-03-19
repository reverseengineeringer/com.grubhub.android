.class Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$13;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Landroid/view/LayoutInflater;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$13;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$13;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$13;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/c;->j()V

    .line 323
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 327
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 328
    return-void
.end method
