.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;
.super Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;-><init>()V

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h(Z)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x92b
        :pswitch_0
    .end packed-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->onConnected(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/16 v1, 0x92b

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    .line 27
    return-void
.end method
