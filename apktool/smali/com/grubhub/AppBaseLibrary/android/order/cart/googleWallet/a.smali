.class Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;->b:Ljava/lang/ref/WeakReference;

    .line 182
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 192
    :cond_0
    return-void
.end method
