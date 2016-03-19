.class public abstract Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field protected a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private b:I

.field private c:Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->b:I

    .line 177
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const-string v0, "GOOGLE_PLAY_SERVICES_UNAVAILABLE"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    .line 150
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;

    const/16 v2, 0x3e8

    .line 152
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->b:I

    int-to-double v6, v6

    .line 153
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 151
    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 155
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->b:I

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "GOOGLE_PLAY_SERVICES_CONNECTION_FAILED"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()I
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    const-string v0, "GoogleApiClient Status"

    const-string v1, "Connected"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 100
    const-string v0, "GoogleApiClient Status"

    const-string v1, "Connection Failed"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 110
    const-string v0, "GOOGLE_PLAY_SERVICES_CONNECTION_FAILED"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 107
    :sswitch_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->b()V

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 94
    const-string v0, "GoogleApiClient Status"

    const-string v1, "Suspended"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "GOOGLE_PLAY_SERVICES_CONNECTION_SUSPENDED"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/common/api/c;

    new-instance v2, Lcom/google/android/gms/wallet/i;

    invoke-direct {v2}, Lcom/google/android/gms/wallet/i;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/i;->a(I)Lcom/google/android/gms/wallet/i;

    move-result-object v2

    const/4 v3, 0x1

    .line 60
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/i;->b(I)Lcom/google/android/gms/wallet/i;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/wallet/i;->a()Lcom/google/android/gms/wallet/h;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 65
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;

    invoke-direct {v0, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;

    .line 66
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 73
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->a()V

    .line 74
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 84
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/GHSGoogleWalletBaseFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/googleWallet/a;->removeMessages(I)V

    .line 85
    return-void
.end method
