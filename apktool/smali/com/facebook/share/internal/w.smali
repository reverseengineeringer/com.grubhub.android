.class Lcom/facebook/share/internal/w;
.super Lcom/facebook/internal/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/o",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Ljava/lang/Object;",
        ">.com/facebook/internal/p;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/share/internal/u;


# direct methods
.method private constructor <init>(Lcom/facebook/share/internal/u;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/share/internal/w;->b:Lcom/facebook/share/internal/u;

    invoke-direct {p0, p1}, Lcom/facebook/internal/p;-><init>(Lcom/facebook/internal/o;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/u;Lcom/facebook/share/internal/u$1;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/w;-><init>(Lcom/facebook/share/internal/u;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/internal/LikeContent;)Z
    .locals 1

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/facebook/share/internal/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 167
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/w;->a(Lcom/facebook/share/internal/LikeContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/share/internal/w;->b:Lcom/facebook/share/internal/u;

    invoke-virtual {v0}, Lcom/facebook/share/internal/u;->c()Lcom/facebook/internal/a;

    move-result-object v0

    .line 179
    invoke-static {p1}, Lcom/facebook/share/internal/u;->a(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/facebook/share/internal/u;->f()Lcom/facebook/internal/l;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/m;->a(Lcom/facebook/internal/a;Landroid/os/Bundle;Lcom/facebook/internal/l;)V

    .line 182
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 167
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/w;->b(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
