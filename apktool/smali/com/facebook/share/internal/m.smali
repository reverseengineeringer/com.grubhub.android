.class Lcom/facebook/share/internal/m;
.super Lcom/facebook/share/internal/b;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/facebook/share/internal/a;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1423
    iput-object p1, p0, Lcom/facebook/share/internal/m;->e:Lcom/facebook/share/internal/a;

    .line 1424
    invoke-direct {p0, p1, v3, v3}, Lcom/facebook/share/internal/b;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1426
    iput-object p2, p0, Lcom/facebook/share/internal/m;->f:Ljava/lang/String;

    .line 1428
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1429
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Lcom/facebook/ab;->DELETE:Lcom/facebook/ab;

    invoke-direct {v0, v1, p2, v3, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ab;)V

    .line 1428
    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/m;->a(Lcom/facebook/GraphRequest;)V

    .line 1433
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/aa;)V
    .locals 0

    .prologue
    .line 1437
    return-void
.end method

.method protected a(Lcom/facebook/j;)V
    .locals 6

    .prologue
    .line 1441
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1442
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error unliking object with unlike token \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/m;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1441
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1444
    iget-object v0, p0, Lcom/facebook/share/internal/m;->e:Lcom/facebook/share/internal/a;

    const-string v1, "publish_unlike"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/j;)V

    .line 1445
    return-void
.end method
