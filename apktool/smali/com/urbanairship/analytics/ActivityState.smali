.class Lcom/urbanairship/analytics/ActivityState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NONE:I = 0x2

.field private static final STARTED:I = 0x0

.field private static final STOPPED:I = 0x1


# instance fields
.field private final activityName:Ljava/lang/String;

.field private final analyticsEnabled:Z

.field private autoInstrumentedState:I

.field private final currentSdkVersion:I

.field private lastModifiedTimeMS:J

.field private manualInstrumentedState:I

.field private final minSdkVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:I

    .line 37
    iput v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/analytics/ActivityState;->lastModifiedTimeMS:J

    .line 51
    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/urbanairship/analytics/ActivityState;->minSdkVersion:I

    .line 53
    iput p3, p0, Lcom/urbanairship/analytics/ActivityState;->currentSdkVersion:I

    .line 54
    iput-boolean p4, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/analytics/ActivityState;->lastModifiedTimeMS:J

    .line 56
    return-void
.end method


# virtual methods
.method getLastModifiedTime()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/urbanairship/analytics/ActivityState;->lastModifiedTimeMS:J

    return-wide v0
.end method

.method isForeground()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget v2, p0, Lcom/urbanairship/analytics/ActivityState;->currentSdkVersion:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 65
    iget v2, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:I

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    iget v2, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method setStarted(IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 88
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already added without being removed first. Call Analytics.activityStopped(this) in every activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 91
    :cond_0
    iput v2, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:I

    .line 96
    :goto_0
    iput-wide p2, p0, Lcom/urbanairship/analytics/ActivityState;->lastModifiedTimeMS:J

    .line 97
    return-void

    .line 93
    :cond_1
    iput v2, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:I

    goto :goto_0
.end method

.method setStopped(IJ)V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 106
    if-nez p1, :cond_2

    .line 107
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed without being manually added first. Call Analytics.activityStarted(this) in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    iput v2, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:I

    .line 120
    :goto_1
    iput-wide p2, p0, Lcom/urbanairship/analytics/ActivityState;->lastModifiedTimeMS:J

    .line 121
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->currentSdkVersion:I

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed in Analytics not during the activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->minSdkVersion:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->manualInstrumentedState:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->analyticsEnabled:Z

    if-eqz v0, :cond_3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not manually added during onStart(). Call Analytics.activityStarted(this) in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 117
    :cond_3
    iput v2, p0, Lcom/urbanairship/analytics/ActivityState;->autoInstrumentedState:I

    goto :goto_1
.end method
