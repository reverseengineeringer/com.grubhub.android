.class public Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Lcom/amazon/insights/ABTestClient;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "GHSAmazonLaunchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v0, "android_google_wallet_newPayments_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->b:Ljava/lang/String;

    .line 25
    const-string v0, "androidShouldEnableGoogleWalletMaster"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->c:Ljava/lang/String;

    .line 26
    const-string v0, "android_yummy_rummy_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->d:Ljava/lang/String;

    .line 27
    const-string v0, "androidShouldEnableYummyRummy"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->e:Ljava/lang/String;

    .line 28
    const-string v0, "android_Android_Pay_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->f:Ljava/lang/String;

    .line 29
    const-string v0, "androidShowAndroidPayBranding"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->g:Ljava/lang/String;

    .line 30
    const-string v0, "android_future_orders_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->h:Ljava/lang/String;

    .line 31
    const-string v0, "androidShouldEnableFutureOrders"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->i:Ljava/lang/String;

    .line 32
    const-string v0, "android_order_tracking_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->j:Ljava/lang/String;

    .line 33
    const-string v0, "androidShouldEnableOrderTracking"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->k:Ljava/lang/String;

    .line 34
    const-string v0, "android_urban_airship_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->l:Ljava/lang/String;

    .line 35
    const-string v0, "androidShouldEnableUrbanAirship"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->m:Ljava/lang/String;

    .line 36
    const-string v0, "AmazonABFailed"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->n:Ljava/lang/String;

    .line 37
    const-string v0, "ErrorMsg"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->o:Ljava/lang/String;

    .line 38
    const-string v0, "ErrorType"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->p:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v0, "android_google_wallet_newPayments_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->b:Ljava/lang/String;

    .line 25
    const-string v0, "androidShouldEnableGoogleWalletMaster"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->c:Ljava/lang/String;

    .line 26
    const-string v0, "android_yummy_rummy_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->d:Ljava/lang/String;

    .line 27
    const-string v0, "androidShouldEnableYummyRummy"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->e:Ljava/lang/String;

    .line 28
    const-string v0, "android_Android_Pay_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->f:Ljava/lang/String;

    .line 29
    const-string v0, "androidShowAndroidPayBranding"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->g:Ljava/lang/String;

    .line 30
    const-string v0, "android_future_orders_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->h:Ljava/lang/String;

    .line 31
    const-string v0, "androidShouldEnableFutureOrders"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->i:Ljava/lang/String;

    .line 32
    const-string v0, "android_order_tracking_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->j:Ljava/lang/String;

    .line 33
    const-string v0, "androidShouldEnableOrderTracking"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->k:Ljava/lang/String;

    .line 34
    const-string v0, "android_urban_airship_project"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->l:Ljava/lang/String;

    .line 35
    const-string v0, "androidShouldEnableUrbanAirship"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->m:Ljava/lang/String;

    .line 36
    const-string v0, "AmazonABFailed"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->n:Ljava/lang/String;

    .line 37
    const-string v0, "ErrorMsg"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->o:Ljava/lang/String;

    .line 38
    const-string v0, "ErrorType"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->p:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->b()V

    .line 104
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a:Lcom/amazon/insights/ABTestClient;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android_google_wallet_newPayments_project"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android_Android_Pay_project"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android_yummy_rummy_project"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android_future_orders_project"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android_order_tracking_project"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android_urban_airship_project"

    aput-object v3, v1, v2

    .line 75
    invoke-interface {v0, v1}, Lcom/amazon/insights/ABTestClient;->getVariations([Ljava/lang/String;)Lcom/amazon/insights/InsightsHandler;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;)V

    .line 77
    invoke-interface {v0, v1}, Lcom/amazon/insights/InsightsHandler;->setCallback(Lcom/amazon/insights/InsightsCallback;)V

    goto :goto_0
.end method

.method private a(Lcom/amazon/insights/VariationSet;)V
    .locals 3

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "android_Android_Pay_project"

    invoke-interface {p1, v0}, Lcom/amazon/insights/VariationSet;->getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;

    move-result-object v0

    const-string v1, "androidShowAndroidPayBranding"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Variation;->getVariableAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 117
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->n(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->b()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->b(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.grubhub.AppBaseLibrary.android.utils.BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 201
    return-void
.end method

.method private b(Lcom/amazon/insights/VariationSet;)V
    .locals 3

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "android_google_wallet_newPayments_project"

    invoke-interface {p1, v0}, Lcom/amazon/insights/VariationSet;->getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;

    move-result-object v0

    const-string v1, "androidShouldEnableGoogleWalletMaster"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Variation;->getVariableAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 132
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->g(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method

.method private c(Lcom/amazon/insights/VariationSet;)V
    .locals 3

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "android_yummy_rummy_project"

    invoke-interface {p1, v0}, Lcom/amazon/insights/VariationSet;->getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;

    move-result-object v0

    const-string v1, "androidShouldEnableYummyRummy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Variation;->getVariableAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->m(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->c(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method

.method private d(Lcom/amazon/insights/VariationSet;)V
    .locals 3

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, "android_future_orders_project"

    invoke-interface {p1, v0}, Lcom/amazon/insights/VariationSet;->getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;

    move-result-object v0

    const-string v1, "androidShouldEnableFutureOrders"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Variation;->getVariableAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->d(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method

.method private e(Lcom/amazon/insights/VariationSet;)V
    .locals 3

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v0, "android_order_tracking_project"

    invoke-interface {p1, v0}, Lcom/amazon/insights/VariationSet;->getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;

    move-result-object v0

    const-string v1, "androidShouldEnableOrderTracking"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Variation;->getVariableAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->e(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method

.method private f(Lcom/amazon/insights/VariationSet;)V
    .locals 3

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v0, "android_urban_airship_project"

    invoke-interface {p1, v0}, Lcom/amazon/insights/VariationSet;->getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;

    move-result-object v0

    const-string v1, "androidShouldEnableUrbanAirship"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Variation;->getVariableAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Z)V

    .line 192
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Z)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->f(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 53
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/a;->a()Lcom/amazon/insights/AmazonInsights;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/AmazonInsights;->getABTestClient()Lcom/amazon/insights/ABTestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a:Lcom/amazon/insights/ABTestClient;

    .line 54
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a()V

    .line 60
    return-void
.end method
