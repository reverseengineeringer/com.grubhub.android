.class public Lcom/grubhub/AppBaseLibrary/android/utils/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field protected a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private b:I

.field private c:Lcom/grubhub/AppBaseLibrary/android/utils/d/c;

.field private d:Landroid/app/Activity;

.field private e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/utils/d/b;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->b:I

    .line 56
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->d:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;

    .line 60
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/common/api/c;

    new-instance v2, Lcom/google/android/gms/wallet/i;

    invoke-direct {v2}, Lcom/google/android/gms/wallet/i;-><init>()V

    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/i;->a(I)Lcom/google/android/gms/wallet/i;

    move-result-object v2

    const/4 v3, 0x1

    .line 65
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/i;->b(I)Lcom/google/android/gms/wallet/i;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/wallet/i;->a()Lcom/google/android/gms/wallet/h;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 70
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;

    invoke-direct {v0, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/d/a;Lcom/grubhub/AppBaseLibrary/android/utils/d/a;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/d/c;

    .line 71
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v0, "GOOGLE_PLAY_SERVICES_UNAVAILABLE"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 8

    .prologue
    .line 185
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/d/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/d/c;

    const/16 v2, 0x3e8

    .line 187
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v6, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->b:I

    int-to-double v6, v6

    .line 188
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->b:I

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v0, "GOOGLE_PLAY_SERVICES_CONNECTION_FAILED"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->c()V

    .line 80
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/braintreepayments/api/c;I)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/utils/d/d;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/braintreepayments/api/c;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;I)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p1, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/d/d;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    .line 165
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/d/c;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;->removeMessages(I)V

    .line 91
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "GoogleApiClient Status"

    const-string v1, "Connected"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/b;->a()V

    .line 100
    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 114
    const-string v0, "GoogleApiClient Status"

    const-string v1, "Connection Failed"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 124
    const-string v0, "GOOGLE_PLAY_SERVICES_CONNECTION_FAILED"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/b;->c()V

    .line 131
    :cond_0
    return-void

    .line 121
    :sswitch_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->d()V

    goto :goto_0

    .line 117
    nop

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
    .line 104
    const-string v0, "GoogleApiClient Status"

    const-string v1, "Suspended"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "GOOGLE_PLAY_SERVICES_CONNECTION_SUSPENDED"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->e:Lcom/grubhub/AppBaseLibrary/android/utils/d/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/b;->b()V

    .line 110
    :cond_0
    return-void
.end method
