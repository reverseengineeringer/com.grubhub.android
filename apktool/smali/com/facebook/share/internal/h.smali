.class Lcom/facebook/share/internal/h;
.super Lcom/facebook/share/internal/b;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/String;

.field f:Z

.field final synthetic g:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V
    .locals 5

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/facebook/share/internal/h;->g:Lcom/facebook/share/internal/a;

    .line 1343
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1346
    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1350
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/facebook/ab;->GET:Lcom/facebook/ab;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ab;)V

    .line 1349
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/h;->a(Lcom/facebook/GraphRequest;)V

    .line 1354
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/aa;)V
    .locals 2

    .prologue
    .line 1358
    .line 1359
    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/internal/h;->a:Ljava/lang/String;

    .line 1358
    invoke-static {v0, v1}, Lcom/facebook/internal/al;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_0

    .line 1362
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/h;->e:Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lcom/facebook/share/internal/h;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/share/internal/h;->f:Z

    .line 1365
    :cond_0
    return-void

    .line 1363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/facebook/j;)V
    .locals 6

    .prologue
    .line 1369
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1370
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/h;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/h;->b:Lcom/facebook/share/widget/d;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1369
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1375
    return-void
.end method
