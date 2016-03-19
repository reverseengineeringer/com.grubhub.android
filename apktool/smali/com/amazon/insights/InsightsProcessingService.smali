.class public Lcom/amazon/insights/InsightsProcessingService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final ACTION_SUBMIT_MEASUREMENTS:Ljava/lang/String; = "SubmitMeasurements"

.field public static final ACTION_SYNC_CONFIGURATION:Ljava/lang/String; = "SyncConfiguration"

.field private static final AVAILABILITY_SERVICE_WORKER:Ljava/lang/String; = "AvailabilityServiceWorker"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "AvailabilityServiceWorker"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/amazon/insights/InsightsProcessingService;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 67
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 68
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 72
    :cond_0
    return-void
.end method

.method private static getPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/amazon/insights/core/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\'intentAction\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/insights/InsightsProcessingService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    if-eqz p2, :cond_2

    .line 92
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 46
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/amazon/insights/InsightsProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SubmitMeasurements"

    invoke-static {v0, v1}, Lcom/amazon/insights/InsightsProcessingService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/amazon/insights/InsightsProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SyncConfiguration"

    invoke-static {v0, v1}, Lcom/amazon/insights/InsightsProcessingService;->cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method
