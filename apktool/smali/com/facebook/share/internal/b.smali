.class abstract Lcom/facebook/share/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/o;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/facebook/share/widget/d;

.field protected c:Lcom/facebook/j;

.field final synthetic d:Lcom/facebook/share/internal/a;

.field private e:Lcom/facebook/GraphRequest;


# direct methods
.method protected constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V
    .locals 0

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/facebook/share/internal/b;->d:Lcom/facebook/share/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    iput-object p2, p0, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    .line 1661
    iput-object p3, p0, Lcom/facebook/share/internal/b;->b:Lcom/facebook/share/widget/d;

    .line 1662
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/j;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/facebook/share/internal/b;->c:Lcom/facebook/j;

    return-object v0
.end method

.method protected a(Lcom/facebook/GraphRequest;)V
    .locals 1

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/facebook/share/internal/b;->e:Lcom/facebook/GraphRequest;

    .line 1676
    const-string v0, "v2.5"

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;)V

    .line 1677
    new-instance v0, Lcom/facebook/share/internal/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/b$1;-><init>(Lcom/facebook/share/internal/b;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/r;)V

    .line 1688
    return-void
.end method

.method protected abstract a(Lcom/facebook/aa;)V
.end method

.method protected a(Lcom/facebook/j;)V
    .locals 6

    .prologue
    .line 1691
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1692
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running request for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/b;->b:Lcom/facebook/share/widget/d;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1691
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1697
    return-void
.end method

.method public a(Lcom/facebook/x;)V
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/facebook/share/internal/b;->e:Lcom/facebook/GraphRequest;

    invoke-virtual {p1, v0}, Lcom/facebook/x;->a(Lcom/facebook/GraphRequest;)Z

    .line 1666
    return-void
.end method
