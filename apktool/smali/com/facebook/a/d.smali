.class Lcom/facebook/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Z

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/a/d;->c:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    :try_start_0
    invoke-direct {p0, p2}, Lcom/facebook/a/d;->a(Ljava/lang/String;)V

    .line 1316
    iput-object p2, p0, Lcom/facebook/a/d;->d:Ljava/lang/String;

    .line 1317
    iput-boolean p5, p0, Lcom/facebook/a/d;->b:Z

    .line 1318
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    .line 1320
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    const-string v1, "_eventName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1321
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    const-string v1, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1322
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    const-string v1, "_ui"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1324
    if-eqz p3, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    const-string v1, "_valueToSum"

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1328
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/a/d;->b:Z

    if-eqz v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    const-string v1, "_implicitlyLogged"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1332
    :cond_1
    if-eqz p4, :cond_4

    .line 1333
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1335
    invoke-direct {p0, v0}, Lcom/facebook/a/d;->a(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1338
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_3

    .line 1339
    new-instance v1, Lcom/facebook/h;

    const-string v3, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    .line 1340
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/h; {:try_start_0 .. :try_end_0} :catch_1

    .line 1356
    :catch_0
    move-exception v0

    .line 1359
    sget-object v1, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    const-string v2, "AppEvents"

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v7, [Ljava/lang/Object;

    .line 1360
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1359
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1361
    iput-object v8, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    .line 1369
    :cond_2
    :goto_1
    return-void

    .line 1348
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/h; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1363
    :catch_1
    move-exception v0

    .line 1365
    sget-object v1, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    const-string v2, "AppEvents"

    const-string v3, "Invalid app event name or parameter:"

    new-array v4, v7, [Ljava/lang/Object;

    .line 1366
    invoke-virtual {v0}, Lcom/facebook/h;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1365
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    iput-object v8, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    goto :goto_1

    .line 1352
    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/a/d;->b:Z

    if-nez v0, :cond_2

    .line 1353
    sget-object v0, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    const-string v1, "AppEvents"

    const-string v2, "Created app event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    .line 1354
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1353
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/h; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    .line 1377
    iput-boolean p2, p0, Lcom/facebook/a/d;->b:Z

    .line 1378
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/a/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-direct {p0, p1, p2}, Lcom/facebook/a/d;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/h;
        }
    .end annotation

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1393
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 1396
    if-eqz p1, :cond_0

    .line 1397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 1399
    :cond_0
    if-nez p1, :cond_1

    .line 1400
    const-string p1, "<None Provided>"

    .line 1402
    :cond_1
    new-instance v0, Lcom/facebook/h;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Identifier \'%s\' must be less than %d characters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 1407
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1403
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :cond_2
    sget-object v1, Lcom/facebook/a/d;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 1413
    :try_start_0
    sget-object v0, Lcom/facebook/a/d;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1414
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    if-nez v0, :cond_3

    .line 1417
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1418
    sget-object v1, Lcom/facebook/a/d;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 1419
    :try_start_1
    sget-object v0, Lcom/facebook/a/d;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1420
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1432
    :cond_3
    return-void

    .line 1414
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1420
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1422
    :cond_4
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 1423
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/facebook/a/d;)Z
    .locals 1

    .prologue
    .line 1298
    iget-boolean v0, p0, Lcom/facebook/a/d;->b:Z

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1450
    new-instance v0, Lcom/facebook/a/e;

    iget-object v1, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/a/d;->b:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/a/e;-><init>(Ljava/lang/String;ZLcom/facebook/a/a$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/facebook/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/facebook/a/d;->b:Z

    return v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1455
    const-string v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    const-string v4, "_eventName"

    .line 1457
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/a/d;->b:Z

    .line 1458
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/a/d;->a:Lorg/json/JSONObject;

    .line 1459
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1455
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
