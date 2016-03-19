.class public Lcom/a/a/f;
.super Lcom/a/a/a;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field h:Z

.field private i:Landroid/location/LocationManager;

.field private j:Landroid/location/Location;

.field private k:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/a/a/c;Lcom/a/d;J)V
    .locals 8

    .prologue
    .line 79
    sget-object v5, Lcom/a/a/b;->GEO_LOCATION:Lcom/a/a/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/a/a/a;-><init>(Landroid/app/Activity;Lcom/a/a/c;Lcom/a/d;Lcom/a/a/b;J)V

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/a/a/f;->k:Ljava/util/Date;

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/a/a/f;->i:Landroid/location/LocationManager;

    .line 83
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/a/a/f;->i:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 205
    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 10

    .prologue
    const-wide/32 v8, 0x36ee80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    if-nez p2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 295
    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    move v3, v1

    .line 297
    :goto_1
    cmp-long v0, v4, v8

    if-gez v0, :cond_3

    move v0, v1

    .line 299
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v5, v1

    .line 303
    :goto_3
    if-nez v3, :cond_0

    .line 306
    if-eqz v0, :cond_5

    move v1, v2

    .line 307
    goto :goto_0

    :cond_2
    move v3, v2

    .line 295
    goto :goto_1

    :cond_3
    move v0, v2

    .line 297
    goto :goto_2

    :cond_4
    move v5, v2

    .line 299
    goto :goto_3

    .line 311
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 313
    if-lez v0, :cond_8

    move v4, v1

    .line 314
    :goto_4
    if-gez v0, :cond_9

    move v3, v1

    .line 315
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a

    move v0, v1

    .line 319
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 325
    if-nez v3, :cond_0

    .line 327
    if-eqz v5, :cond_6

    if-eqz v4, :cond_0

    .line 329
    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v6, :cond_0

    :cond_7
    move v1, v2

    .line 332
    goto :goto_0

    :cond_8
    move v4, v2

    .line 313
    goto :goto_4

    :cond_9
    move v3, v2

    .line 314
    goto :goto_5

    :cond_a
    move v0, v2

    .line 315
    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 343
    if-nez p1, :cond_1

    .line 344
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 214
    iget-object v0, p0, Lcom/a/a/f;->i:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 216
    return-void
.end method

.method private g()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/f;->k:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v8

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time it took:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/a/a/f;->b:Lcom/a/d;

    sget-object v1, Lcom/a/e;->LATITUDE:Lcom/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->a(Lcom/a/e;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/a/a/f;->b:Lcom/a/d;

    sget-object v1, Lcom/a/e;->LONGITUDE:Lcom/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->a(Lcom/a/e;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/a/a/f;->b:Lcom/a/d;

    sget-object v1, Lcom/a/e;->GEO_DATE:Lcom/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->a(Lcom/a/e;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/a/a/f;->b:Lcom/a/d;

    sget-object v1, Lcom/a/e;->GEO_PROVIDER:Lcom/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->a(Lcom/a/e;Ljava/lang/String;)V

    .line 236
    iput-boolean v6, p0, Lcom/a/a/f;->h:Z

    .line 247
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/a/a/f;->g:Z

    .line 250
    invoke-direct {p0}, Lcom/a/a/f;->h()V

    .line 253
    iget-object v0, p0, Lcom/a/a/f;->e:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/f;->f:Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    .line 255
    return-void

    .line 238
    :cond_1
    const-string v0, "No Location found."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/a/a/f;->e:Lcom/a/a/g;

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    iput-object v0, p0, Lcom/a/a/f;->e:Lcom/a/a/g;

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No location found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/f;->f:Ljava/lang/Exception;

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/a/a/f;->i:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/a/a/f;->i:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 96
    iput-boolean v8, p0, Lcom/a/a/f;->h:Z

    .line 97
    const/4 v1, 0x0

    .line 109
    :try_start_0
    const-string v0, "Getting providers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/a/a/f;->i:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 115
    sget-object v0, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v2, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    invoke-virtual {v2}, Lcom/a/a/g;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/a/a/f;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying provider ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-nez v1, :cond_2

    move-object v1, v0

    .line 128
    :cond_2
    iget-object v3, p0, Lcom/a/a/f;->i:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_6

    .line 132
    iget-object v4, p0, Lcom/a/a/f;->k:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 133
    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New enough, using this location: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    invoke-direct {p0, v3, v2}, Lcom/a/a/f;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is better location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iput-object v3, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/f;->h:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/a/a/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/f;->e:Lcom/a/a/g;

    if-nez v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lcom/a/a/f;->h:Z

    if-eqz v0, :cond_4

    if-nez v1, :cond_8

    .line 161
    :cond_4
    const-string v0, "making a single request"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    monitor-enter p0

    .line 164
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_7

    .line 168
    invoke-direct {p0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;)V

    .line 173
    :goto_2
    iget-boolean v0, p0, Lcom/a/a/f;->g:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/a/a/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 174
    const-string v0, "Waiting on location... for [%s] milliseconds"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/a/a/f;->f()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/a/a/f;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 177
    const-string v0, "Done Waiting on location."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-boolean v0, p0, Lcom/a/a/f;->h:Z

    if-nez v0, :cond_5

    .line 180
    invoke-direct {p0}, Lcom/a/a/f;->h()V

    .line 182
    invoke-virtual {p0}, Lcom/a/a/f;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    move-object v0, v1

    move-object v1, v0

    .line 148
    goto/16 :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    sget-object v1, Lcom/a/a/g;->PERMISSION_DENIED:Lcom/a/a/g;

    iput-object v1, p0, Lcom/a/a/f;->e:Lcom/a/a/g;

    .line 155
    iput-object v0, p0, Lcom/a/a/f;->f:Ljava/lang/Exception;

    goto/16 :goto_0

    .line 170
    :cond_7
    :try_start_3
    invoke-direct {p0, v1}, Lcom/a/a/f;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 185
    :catch_1
    move-exception v0

    .line 186
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception(hiding it):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 192
    :cond_8
    invoke-direct {p0}, Lcom/a/a/f;->g()V

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 264
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 265
    invoke-direct {p0}, Lcom/a/a/f;->h()V

    .line 266
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    invoke-direct {p0, p1, v0}, Lcom/a/a/f;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iput-object p1, p0, Lcom/a/a/f;->j:Landroid/location/Location;

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/a/a/f;->g()V

    .line 364
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/a/a/f;->g()V

    .line 376
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 398
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/a/a/f;->g()V

    .line 402
    :cond_1
    return-void
.end method
