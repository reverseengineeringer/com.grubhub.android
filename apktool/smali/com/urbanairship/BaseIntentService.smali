.class public abstract Lcom/urbanairship/BaseIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_MAX_BACK_OFF_TIME_MS:J = 0x4e2000L

.field protected static final DEFAULT_STARTING_BACK_OFF_TIME_MS:J = 0x2710L

.field private static final EXTRA_BACK_OFF_MS:Ljava/lang/String; = "com.urbanairship.EXTRA_BACK_OFF_MS"


# instance fields
.field private final delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/BaseIntentService$Delegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/BaseIntentService;->delegateMap:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method protected abstract getServiceDelegate(Ljava/lang/String;Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/BaseIntentService$Delegate;
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 75
    invoke-virtual {p0}, Lcom/urbanairship/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 87
    if-nez v1, :cond_1

    .line 105
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 92
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/BaseIntentService;->delegateMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/BaseIntentService$Delegate;

    .line 93
    if-nez v0, :cond_2

    .line 94
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/BaseIntentService;->getServiceDelegate(Ljava/lang/String;Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/BaseIntentService$Delegate;

    move-result-object v0

    .line 97
    :cond_2
    if-nez v0, :cond_3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseIntentService - No delegate for intent action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 102
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/urbanairship/BaseIntentService;->delegateMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v0, p1}, Lcom/urbanairship/BaseIntentService$Delegate;->onHandleIntent(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    throw v0
.end method
