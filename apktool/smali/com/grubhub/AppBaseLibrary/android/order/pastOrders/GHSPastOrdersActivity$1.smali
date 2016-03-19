.class Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->a(Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;->a:Z

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 227
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v6

    .line 228
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;->a:Z

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;ZZLjava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAllowReturnTransitionOverlap(Z)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAllowEnterTransitionOverlap(Z)V

    .line 233
    invoke-virtual {v6}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f008f

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 234
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 235
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 237
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity$1;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/GHSPastOrdersActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    :cond_0
    return-void
.end method
