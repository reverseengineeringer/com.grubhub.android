.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;

    const v5, 0x7f0803e5

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 532
    return-void
.end method
