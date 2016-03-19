.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

.field private final b:Lcom/grubhub/AppBaseLibrary/android/b/b;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    .line 1186
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;)Lcom/grubhub/AppBaseLibrary/android/b/b;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 1382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1383
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/b;

    if-eqz v1, :cond_0

    .line 1384
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;-><init>()V

    .line 1385
    check-cast p2, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/b;

    invoke-interface {p2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/b;->accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V

    .line 1386
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1390
    :cond_0
    if-eqz p3, :cond_1

    .line 1391
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;-><init>()V

    .line 1392
    invoke-virtual {p3, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V

    .line 1393
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1397
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1398
    const-string v1, "FORCE_USER_TO_SIGN_IN"

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1403
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Landroid/content/Context;)V

    .line 1404
    return-void

    .line 1400
    :cond_2
    const-string v0, "FORCE_USER_TO_SIGN_IN"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 1264
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 1265
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v3

    .line 1268
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 1271
    :goto_0
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v4

    sget-object v5, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_HTTP401:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v4, v5, :cond_1

    .line 1273
    if-eqz v3, :cond_0

    .line 1274
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v4

    .line 1275
    invoke-interface {v4, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->setRefresh_token_expire_time(J)V

    .line 1276
    invoke-interface {v4, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->setToken_expire_time(J)V

    .line 1277
    invoke-interface {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 1281
    :cond_0
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1283
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v3

    .line 1284
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v4

    .line 1285
    invoke-interface {v4, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->setRefresh_token_expire_time(J)V

    .line 1286
    invoke-interface {v4, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->setToken_expire_time(J)V

    .line 1287
    invoke-interface {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 1292
    :cond_1
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    invoke-direct {v2, p1, v0, v1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 1293
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;Ljava/lang/String;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    invoke-virtual {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1310
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;

    invoke-direct {v0, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1319
    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->a()V

    .line 1320
    return-void

    :cond_2
    move-object v0, v1

    .line 1268
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;ZZ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1227
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_HTTP401:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v1, v2, :cond_3

    .line 1230
    if-eqz p3, :cond_2

    .line 1232
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 1233
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    .line 1234
    invoke-interface {v2, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->setRefresh_token_expire_time(J)V

    .line 1235
    invoke-interface {v2, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->setToken_expire_time(J)V

    .line 1236
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 1239
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-interface {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {p0, p1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 1254
    :cond_1
    :goto_0
    return-void

    .line 1247
    :cond_2
    if-eqz p2, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-interface {p2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0

    .line 1252
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;ZZ)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 1180
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;ZZ)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1332
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v6

    .line 1334
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1336
    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->getRefresh_token()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, p1, v1, v0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 1337
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$3;

    invoke-direct {v0, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    invoke-virtual {v7, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1346
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;)V

    invoke-virtual {v7, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1360
    invoke-virtual {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/c;->a()V

    .line 1370
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v6, v0

    .line 1332
    goto :goto_0

    .line 1361
    :cond_2
    if-eqz p3, :cond_0

    .line 1363
    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    .line 1364
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b:Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-interface {p2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 1368
    :cond_3
    invoke-direct {p0, p1, v6, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V
    .locals 6

    .prologue
    .line 1196
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ZZ)V

    .line 1197
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ZZ)V
    .locals 1

    .prologue
    .line 1209
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER_WHEN_LOGGED_IN:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    .line 1210
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;ZZ)V

    .line 1215
    :goto_0
    return-void

    .line 1213
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    goto :goto_0
.end method
