.class Lcom/facebook/share/internal/i;
.super Lcom/facebook/share/internal/b;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/j;


# instance fields
.field final synthetic e:Lcom/facebook/share/internal/a;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/facebook/share/internal/i;->e:Lcom/facebook/share/internal/a;

    .line 1460
    sget-object v0, Lcom/facebook/share/widget/d;->PAGE:Lcom/facebook/share/widget/d;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1456
    iget-object v0, p0, Lcom/facebook/share/internal/i;->e:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->k(Lcom/facebook/share/internal/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/internal/i;->f:Z

    .line 1461
    iput-object p2, p0, Lcom/facebook/share/internal/i;->g:Ljava/lang/String;

    .line 1463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1464
    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1467
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "me/likes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/ab;->GET:Lcom/facebook/ab;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ab;)V

    .line 1466
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/i;->a(Lcom/facebook/GraphRequest;)V

    .line 1471
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/aa;)V
    .locals 2

    .prologue
    .line 1475
    .line 1476
    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    .line 1475
    invoke-static {v0, v1}, Lcom/facebook/internal/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1478
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/i;->f:Z

    .line 1481
    :cond_0
    return-void
.end method

.method protected a(Lcom/facebook/j;)V
    .locals 6

    .prologue
    .line 1485
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1486
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for page id \'%s\': %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/i;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1485
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1490
    iget-object v0, p0, Lcom/facebook/share/internal/i;->e:Lcom/facebook/share/internal/a;

    const-string v1, "get_page_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/j;)V

    .line 1491
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1496
    iget-boolean v0, p0, Lcom/facebook/share/internal/i;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1501
    const/4 v0, 0x0

    return-object v0
.end method
