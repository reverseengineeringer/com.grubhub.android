.class Lcom/facebook/share/internal/a$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a$10;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/j;

.field final synthetic b:Lcom/facebook/share/internal/e;

.field final synthetic c:Lcom/facebook/share/internal/a$10;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a$10;Lcom/facebook/share/internal/j;Lcom/facebook/share/internal/e;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/facebook/share/internal/a$10$1;->c:Lcom/facebook/share/internal/a$10;

    iput-object p2, p0, Lcom/facebook/share/internal/a$10$1;->a:Lcom/facebook/share/internal/j;

    iput-object p3, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/x;)V
    .locals 7

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->a:Lcom/facebook/share/internal/j;

    invoke-interface {v0}, Lcom/facebook/share/internal/j;->a()Lcom/facebook/j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/e;

    .line 1103
    invoke-virtual {v0}, Lcom/facebook/share/internal/e;->a()Lcom/facebook/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1106
    :cond_0
    sget-object v0, Lcom/facebook/ad;->REQUESTS:Lcom/facebook/ad;

    .line 1108
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to refresh like state for id: \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/a$10$1;->c:Lcom/facebook/share/internal/a$10;

    iget-object v5, v5, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    .line 1109
    invoke-static {v5}, Lcom/facebook/share/internal/a;->j(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1106
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    :goto_0
    return-void

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->c:Lcom/facebook/share/internal/a$10;

    iget-object v0, v0, Lcom/facebook/share/internal/a$10;->a:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$10$1;->a:Lcom/facebook/share/internal/j;

    .line 1114
    invoke-interface {v1}, Lcom/facebook/share/internal/j;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/e;

    iget-object v2, v2, Lcom/facebook/share/internal/e;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/e;

    iget-object v3, v3, Lcom/facebook/share/internal/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/e;

    iget-object v4, v4, Lcom/facebook/share/internal/e;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/e;

    iget-object v5, v5, Lcom/facebook/share/internal/e;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/a$10$1;->a:Lcom/facebook/share/internal/j;

    .line 1119
    invoke-interface {v6}, Lcom/facebook/share/internal/j;->c()Ljava/lang/String;

    move-result-object v6

    .line 1113
    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
