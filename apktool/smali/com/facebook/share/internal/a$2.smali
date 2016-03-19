.class Lcom/facebook/share/internal/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/n;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/f;

.field final synthetic b:Lcom/facebook/share/internal/h;

.field final synthetic c:Lcom/facebook/share/internal/n;

.field final synthetic d:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Lcom/facebook/share/internal/f;Lcom/facebook/share/internal/h;Lcom/facebook/share/internal/n;)V
    .locals 0

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    iput-object p2, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/f;

    iput-object p3, p0, Lcom/facebook/share/internal/a$2;->b:Lcom/facebook/share/internal/h;

    iput-object p4, p0, Lcom/facebook/share/internal/a$2;->c:Lcom/facebook/share/internal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/x;)V
    .locals 6

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/f;

    iget-object v1, v1, Lcom/facebook/share/internal/f;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$2;->b:Lcom/facebook/share/internal/h;

    iget-object v1, v1, Lcom/facebook/share/internal/h;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$2;->b:Lcom/facebook/share/internal/h;

    iget-boolean v1, v1, Lcom/facebook/share/internal/h;->f:Z

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;Z)Z

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    sget-object v0, Lcom/facebook/ad;->DEVELOPER_ERRORS:Lcom/facebook/ad;

    .line 1225
    invoke-static {}, Lcom/facebook/share/internal/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    .line 1228
    invoke-static {v5}, Lcom/facebook/share/internal/a;->j(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1224
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1229
    iget-object v1, p0, Lcom/facebook/share/internal/a$2;->d:Lcom/facebook/share/internal/a;

    const-string v2, "get_verified_id"

    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->b:Lcom/facebook/share/internal/h;

    .line 1230
    invoke-virtual {v0}, Lcom/facebook/share/internal/h;->a()Lcom/facebook/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->b:Lcom/facebook/share/internal/h;

    .line 1231
    invoke-virtual {v0}, Lcom/facebook/share/internal/h;->a()Lcom/facebook/j;

    move-result-object v0

    .line 1229
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/j;)V

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->c:Lcom/facebook/share/internal/n;

    if-eqz v0, :cond_2

    .line 1236
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->c:Lcom/facebook/share/internal/n;

    invoke-interface {v0}, Lcom/facebook/share/internal/n;->a()V

    .line 1238
    :cond_2
    return-void

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/facebook/share/internal/a$2;->a:Lcom/facebook/share/internal/f;

    .line 1232
    invoke-virtual {v0}, Lcom/facebook/share/internal/f;->a()Lcom/facebook/j;

    move-result-object v0

    goto :goto_0
.end method
