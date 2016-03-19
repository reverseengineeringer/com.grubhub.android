.class public Lcom/taplytics/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:[F

.field private d:I

.field private e:Z

.field private f:J

.field private g:Lcom/taplytics/fd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/taplytics/fb;->c:[F

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taplytics/fb;->e:Z

    .line 63
    return-void
.end method

.method private a(FI)F
    .locals 2

    .prologue
    .line 146
    const v0, 0x3f4ccccd    # 0.8f

    iget-object v1, p0, Lcom/taplytics/fb;->c:[F

    aget v1, v1, p2

    mul-float/2addr v0, v1

    const v1, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/hardware/SensorEvent;)F
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/taplytics/fb;->c:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-direct {p0, v1, v2}, Lcom/taplytics/fb;->a(FI)F

    move-result v1

    aput v1, v0, v2

    .line 131
    iget-object v0, p0, Lcom/taplytics/fb;->c:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-direct {p0, v1, v3}, Lcom/taplytics/fb;->a(FI)F

    move-result v1

    aput v1, v0, v3

    .line 132
    iget-object v0, p0, Lcom/taplytics/fb;->c:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-direct {p0, v1, v4}, Lcom/taplytics/fb;->a(FI)F

    move-result v1

    aput v1, v0, v4

    .line 134
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/taplytics/fb;->c:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 135
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/taplytics/fb;->c:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    .line 136
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/taplytics/fb;->c:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 139
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/taplytics/fb;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/taplytics/fb;->e:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/taplytics/fb;->d:I

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taplytics/fb;->f:J

    .line 152
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taplytics/fb;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/taplytics/fb;->b:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 83
    invoke-static {}, Lcom/taplytics/iz;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/taplytics/fc;

    invoke-direct {v1, p0}, Lcom/taplytics/fc;-><init>(Lcom/taplytics/fb;)V

    const-wide/16 v2, 0xc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 89
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/taplytics/fb;->a:Landroid/hardware/SensorManager;

    .line 74
    iget-object v0, p0, Lcom/taplytics/fb;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/fb;->b:Landroid/hardware/Sensor;

    .line 75
    invoke-virtual {p0}, Lcom/taplytics/fb;->a()V

    .line 76
    return-void
.end method

.method public a(Lcom/taplytics/fd;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/taplytics/fb;->g:Lcom/taplytics/fd;

    .line 67
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/taplytics/fb;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 127
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    .line 94
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taplytics/fb;->e:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/taplytics/fb;->a(Landroid/hardware/SensorEvent;)F

    move-result v0

    .line 97
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/taplytics/fb;->d:I

    if-nez v0, :cond_1

    .line 99
    iget v0, p0, Lcom/taplytics/fb;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taplytics/fb;->d:I

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taplytics/fb;->f:J

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    iget-wide v2, p0, Lcom/taplytics/fb;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/taplytics/fb;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 104
    iget v0, p0, Lcom/taplytics/fb;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taplytics/fb;->d:I

    .line 105
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taplytics/fb;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 113
    :cond_2
    iget v0, p0, Lcom/taplytics/fb;->d:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/taplytics/fb;->g:Lcom/taplytics/fd;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/taplytics/fb;->g:Lcom/taplytics/fd;

    invoke-interface {v0}, Lcom/taplytics/fd;->a()V

    goto :goto_0

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/taplytics/fb;->c()V

    .line 110
    iget v0, p0, Lcom/taplytics/fb;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taplytics/fb;->d:I

    goto :goto_0
.end method
