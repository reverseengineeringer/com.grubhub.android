.class Lcom/facebook/share/internal/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->b(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    iput-object p2, p0, Lcom/facebook/share/internal/a$8;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 982
    iget-object v0, p0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 985
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Invalid Object Id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1029
    :goto_0
    return-void

    .line 997
    :cond_0
    new-instance v0, Lcom/facebook/x;

    invoke-direct {v0}, Lcom/facebook/x;-><init>()V

    .line 998
    new-instance v1, Lcom/facebook/share/internal/l;

    iget-object v2, p0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    iget-object v3, p0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    .line 999
    invoke-static {v3}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/a$8;->b:Lcom/facebook/share/internal/a;

    invoke-static {v4}, Lcom/facebook/share/internal/a;->i(Lcom/facebook/share/internal/a;)Lcom/facebook/share/widget/d;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/l;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1000
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/l;->a(Lcom/facebook/x;)V

    .line 1001
    new-instance v2, Lcom/facebook/share/internal/a$8$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/share/internal/a$8$1;-><init>(Lcom/facebook/share/internal/a$8;Lcom/facebook/share/internal/l;)V

    invoke-virtual {v0, v2}, Lcom/facebook/x;->a(Lcom/facebook/y;)V

    .line 1028
    invoke-virtual {v0}, Lcom/facebook/x;->h()Lcom/facebook/w;

    goto :goto_0
.end method
