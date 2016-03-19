.class Lcom/facebook/share/internal/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/b;->a(Lcom/facebook/GraphRequest;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/b;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/b;)V
    .locals 0

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/facebook/share/internal/b$1;->a:Lcom/facebook/share/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/aa;)V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/facebook/share/internal/b$1;->a:Lcom/facebook/share/internal/b;

    invoke-virtual {p1}, Lcom/facebook/aa;->a()Lcom/facebook/j;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/share/internal/b;->c:Lcom/facebook/j;

    .line 1681
    iget-object v0, p0, Lcom/facebook/share/internal/b$1;->a:Lcom/facebook/share/internal/b;

    iget-object v0, v0, Lcom/facebook/share/internal/b;->c:Lcom/facebook/j;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/facebook/share/internal/b$1;->a:Lcom/facebook/share/internal/b;

    iget-object v1, p0, Lcom/facebook/share/internal/b$1;->a:Lcom/facebook/share/internal/b;

    iget-object v1, v1, Lcom/facebook/share/internal/b;->c:Lcom/facebook/j;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/j;)V

    .line 1686
    :goto_0
    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/b$1;->a:Lcom/facebook/share/internal/b;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/aa;)V

    goto :goto_0
.end method
