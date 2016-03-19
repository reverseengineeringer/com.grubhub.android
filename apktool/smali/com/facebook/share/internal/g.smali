.class Lcom/facebook/share/internal/g;
.super Lcom/facebook/share/internal/b;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/j;


# instance fields
.field final synthetic e:Lcom/facebook/share/internal/a;

.field private f:Z

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/facebook/share/widget/d;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V
    .locals 5

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/facebook/share/internal/g;->e:Lcom/facebook/share/internal/a;

    .line 1516
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1510
    iget-object v0, p0, Lcom/facebook/share/internal/g;->e:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->k(Lcom/facebook/share/internal/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/internal/g;->f:Z

    .line 1517
    iput-object p2, p0, Lcom/facebook/share/internal/g;->h:Ljava/lang/String;

    .line 1518
    iput-object p3, p0, Lcom/facebook/share/internal/g;->i:Lcom/facebook/share/widget/d;

    .line 1520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1521
    const-string v1, "fields"

    const-string v2, "id,application"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v1, "object"

    iget-object v2, p0, Lcom/facebook/share/internal/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1525
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/ab;->GET:Lcom/facebook/ab;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ab;)V

    .line 1524
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/g;->a(Lcom/facebook/GraphRequest;)V

    .line 1529
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/aa;)V
    .locals 6

    .prologue
    .line 1533
    .line 1534
    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    .line 1533
    invoke-static {v0, v1}, Lcom/facebook/internal/al;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1536
    if-eqz v1, :cond_1

    .line 1537
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1538
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1539
    if-eqz v2, :cond_0

    .line 1540
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/share/internal/g;->f:Z

    .line 1541
    const-string v3, "application"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1542
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v4

    .line 1543
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1546
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 1547
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1545
    invoke-static {v4, v3}, Lcom/facebook/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1548
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/share/internal/g;->g:Ljava/lang/String;

    .line 1537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1553
    :cond_1
    return-void
.end method

.method protected a(Lcom/facebook/j;)V
    .locals 6

    .prologue
    .line 1557
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1558
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/g;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/g;->i:Lcom/facebook/share/widget/d;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1557
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    iget-object v0, p0, Lcom/facebook/share/internal/g;->e:Lcom/facebook/share/internal/a;

    const-string v1, "get_og_object_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/j;)V

    .line 1564
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/facebook/share/internal/g;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/facebook/share/internal/g;->g:Ljava/lang/String;

    return-object v0
.end method
