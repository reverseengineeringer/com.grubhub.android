.class Lcom/appsflyer/e;
.super Lcom/appsflyer/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 1251
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1252
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    const-string v0, "https://api.appsflyer.com/install_data/v3/"

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1264
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->b()Lcom/appsflyer/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/a;->a(Ljava/lang/String;)V

    .line 1265
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1260
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->b()Lcom/appsflyer/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/a;->a(Ljava/util/Map;)V

    .line 1261
    return-void
.end method
