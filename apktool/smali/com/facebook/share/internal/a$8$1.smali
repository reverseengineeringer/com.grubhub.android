.class Lcom/facebook/share/internal/a$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a$8;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/l;

.field final synthetic b:Lcom/facebook/share/internal/a$8;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a$8;Lcom/facebook/share/internal/l;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iput-object p2, p0, Lcom/facebook/share/internal/a$8$1;->a:Lcom/facebook/share/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/x;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1004
    iget-object v0, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v0, v0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Z)Z

    .line 1006
    iget-object v0, p0, Lcom/facebook/share/internal/a$8$1;->a:Lcom/facebook/share/internal/l;

    invoke-virtual {v0}, Lcom/facebook/share/internal/l;->a()Lcom/facebook/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v0, v0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Z)V

    .line 1025
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v0, v0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$8$1;->a:Lcom/facebook/share/internal/l;

    iget-object v1, v1, Lcom/facebook/share/internal/l;->e:Ljava/lang/String;

    .line 1013
    invoke-static {v1, v3}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v0, v0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;Z)Z

    .line 1016
    iget-object v0, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v0, v0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->g(Lcom/facebook/share/internal/a;)Lcom/facebook/a/a;

    move-result-object v0

    const-string v1, "fb_like_control_did_like"

    iget-object v2, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v2, v2, Lcom/facebook/share/internal/a$8;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1023
    iget-object v0, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v0, v0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$8$1;->b:Lcom/facebook/share/internal/a$8;

    iget-object v1, v1, Lcom/facebook/share/internal/a$8;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V

    goto :goto_0
.end method
