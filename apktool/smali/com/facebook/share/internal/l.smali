.class Lcom/facebook/share/internal/l;
.super Lcom/facebook/share/internal/b;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/String;

.field final synthetic f:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V
    .locals 5

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/facebook/share/internal/l;->f:Lcom/facebook/share/internal/a;

    .line 1382
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1385
    const-string v1, "object"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1388
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/ab;->POST:Lcom/facebook/ab;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ab;)V

    .line 1387
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/l;->a(Lcom/facebook/GraphRequest;)V

    .line 1392
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/aa;)V
    .locals 2

    .prologue
    .line 1396
    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/facebook/internal/al;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/l;->e:Ljava/lang/String;

    .line 1397
    return-void
.end method

.method protected a(Lcom/facebook/j;)V
    .locals 6

    .prologue
    .line 1401
    invoke-virtual {p1}, Lcom/facebook/j;->b()I

    move-result v0

    .line 1402
    const/16 v1, 0xdad

    if-ne v0, v1, :cond_0

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/share/internal/l;->c:Lcom/facebook/j;

    .line 1417
    :goto_0
    return-void

    .line 1409
    :cond_0
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1410
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error liking object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/l;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/l;->b:Lcom/facebook/share/widget/d;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1409
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    iget-object v0, p0, Lcom/facebook/share/internal/l;->f:Lcom/facebook/share/internal/a;

    const-string v1, "publish_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/j;)V

    goto :goto_0
.end method
