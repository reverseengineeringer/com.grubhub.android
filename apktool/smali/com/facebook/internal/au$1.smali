.class Lcom/facebook/internal/au$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/au;->b(Lcom/facebook/internal/aw;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/aw;

.field final synthetic b:Lcom/facebook/internal/au;


# direct methods
.method constructor <init>(Lcom/facebook/internal/au;Lcom/facebook/internal/aw;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/facebook/internal/au$1;->b:Lcom/facebook/internal/au;

    iput-object p2, p0, Lcom/facebook/internal/au$1;->a:Lcom/facebook/internal/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/au$1;->a:Lcom/facebook/internal/aw;

    invoke-virtual {v0}, Lcom/facebook/internal/aw;->a()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/facebook/internal/au$1;->b:Lcom/facebook/internal/au;

    iget-object v1, p0, Lcom/facebook/internal/au$1;->a:Lcom/facebook/internal/aw;

    invoke-static {v0, v1}, Lcom/facebook/internal/au;->a(Lcom/facebook/internal/au;Lcom/facebook/internal/aw;)V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/au$1;->b:Lcom/facebook/internal/au;

    iget-object v2, p0, Lcom/facebook/internal/au$1;->a:Lcom/facebook/internal/aw;

    invoke-static {v1, v2}, Lcom/facebook/internal/au;->a(Lcom/facebook/internal/au;Lcom/facebook/internal/aw;)V

    throw v0
.end method
