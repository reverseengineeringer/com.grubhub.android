.class Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;I)V

    .line 177
    return-void
.end method
