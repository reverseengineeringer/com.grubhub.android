.class public abstract Lcom/urbanairship/BaseIntentService$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/urbanairship/BaseIntentService$Delegate;->context:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/urbanairship/BaseIntentService$Delegate;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 132
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/urbanairship/BaseIntentService$Delegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDataStore()Lcom/urbanairship/PreferenceDataStore;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/urbanairship/BaseIntentService$Delegate;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    return-object v0
.end method

.method protected getInitialBackoff(Landroid/content/Intent;)J
    .locals 2

    .prologue
    .line 168
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method protected getMaxBackOff(Landroid/content/Intent;)J
    .locals 2

    .prologue
    .line 180
    const-wide/32 v0, 0x4e2000

    return-wide v0
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public retryIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 193
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 199
    const-string v0, "android.support.content.wakelockid"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 202
    const-string v0, "com.urbanairship.EXTRA_BACK_OFF_MS"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 203
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 204
    invoke-virtual {p0, v4}, Lcom/urbanairship/BaseIntentService$Delegate;->getInitialBackoff(Landroid/content/Intent;)J

    move-result-wide v0

    move-wide v2, v0

    .line 210
    :goto_0
    const-string v0, "com.urbanairship.EXTRA_BACK_OFF_MS"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseIntentService - Scheduling intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/urbanairship/BaseIntentService$Delegate;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 215
    iget-object v1, p0, Lcom/urbanairship/BaseIntentService$Delegate;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v1, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 216
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 217
    return-void

    .line 206
    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-virtual {p0, v4}, Lcom/urbanairship/BaseIntentService$Delegate;->getMaxBackOff(Landroid/content/Intent;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0
.end method
