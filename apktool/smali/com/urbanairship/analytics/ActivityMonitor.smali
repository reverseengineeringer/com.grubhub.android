.class Lcom/urbanairship/analytics/ActivityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUTO_INSTRUMENTATION:I = 0x1

.field private static final BACKGROUND_DELAY_MS:I = 0x7d0

.field static final MANUAL_INSTRUMENTATION:I


# instance fields
.field private final activityStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/analytics/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsEnabled:Z

.field private final currentSdkVersion:I

.field private isForeground:Z

.field private listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

.field private final minSdkVersion:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    .line 75
    iput p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->minSdkVersion:I

    .line 76
    iput p2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->currentSdkVersion:I

    .line 77
    iput-boolean p3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->analyticsEnabled:Z

    .line 78
    return-void
.end method

.method private getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;
    .locals 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityState;

    .line 129
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/urbanairship/analytics/ActivityState;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->minSdkVersion:I

    iget v3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->currentSdkVersion:I

    iget-boolean v4, p0, Lcom/urbanairship/analytics/ActivityMonitor;->analyticsEnabled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/urbanairship/analytics/ActivityState;-><init>(Ljava/lang/String;IIZ)V

    .line 131
    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    :cond_0
    return-object v0
.end method


# virtual methods
.method activityStarted(Landroid/app/Activity;IJ)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/urbanairship/analytics/ActivityState;->setStarted(IJ)V

    .line 100
    invoke-virtual {p0}, Lcom/urbanairship/analytics/ActivityMonitor;->updateForegroundState()V

    .line 101
    return-void
.end method

.method activityStopped(Landroid/app/Activity;IJ)V
    .locals 5

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->getActivityState(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/urbanairship/analytics/ActivityState;->setStopped(IJ)V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    new-instance v1, Lcom/urbanairship/analytics/ActivityMonitor$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/ActivityMonitor$1;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void
.end method

.method setListener(Lcom/urbanairship/analytics/ActivityMonitor$Listener;)V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateForegroundState()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 142
    move v1, v0

    move-wide v4, v2

    move-wide v6, v2

    move v2, v0

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activityStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityState;

    .line 150
    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityState;->isForeground()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const/4 v2, 0x1

    .line 152
    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-lez v3, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v6

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-lez v3, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityState;->getLastModifiedTime()J

    move-result-wide v4

    goto :goto_1

    .line 162
    :cond_2
    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    if-eq v0, v2, :cond_4

    .line 163
    iput-boolean v2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->isForeground:Z

    .line 165
    monitor-enter p0

    .line 166
    if-eqz v2, :cond_5

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    invoke-virtual {v0, v6, v7}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;->onForeground(J)V

    .line 175
    :cond_3
    :goto_2
    monitor-exit p0

    .line 177
    :cond_4
    return-void

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->listener:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    invoke-virtual {v0, v4, v5}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;->onBackground(J)V

    goto :goto_2

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
