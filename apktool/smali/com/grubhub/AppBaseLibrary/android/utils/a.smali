.class public Lcom/grubhub/AppBaseLibrary/android/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static final b:Lcom/amazon/insights/InsightsOptions;

.field private static final c:Lcom/amazon/insights/InsightsCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/grubhub/AppBaseLibrary/android/utils/a;->a:Z

    .line 20
    invoke-static {v1, v1}, Lcom/amazon/insights/AmazonInsights;->newOptions(ZZ)Lcom/amazon/insights/InsightsOptions;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/a;->b:Lcom/amazon/insights/InsightsOptions;

    .line 23
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/insights/AmazonInsights;->newCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/a;->c:Lcom/amazon/insights/InsightsCredentials;

    return-void
.end method

.method public static declared-synchronized a()Lcom/amazon/insights/AmazonInsights;
    .locals 4

    .prologue
    .line 33
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/utils/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/grubhub/AppBaseLibrary/android/utils/a;->a:Z

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/grubhub/AppBaseLibrary/android/utils/a;->a:Z

    .line 35
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/a;->c:Lcom/amazon/insights/InsightsCredentials;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/a;->b:Lcom/amazon/insights/InsightsOptions;

    invoke-static {v0, v2, v3}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;)Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 37
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/a;->c:Lcom/amazon/insights/InsightsCredentials;

    invoke-static {v0}, Lcom/amazon/insights/AmazonInsights;->getInstance(Lcom/amazon/insights/InsightsCredentials;)Lcom/amazon/insights/AmazonInsights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
