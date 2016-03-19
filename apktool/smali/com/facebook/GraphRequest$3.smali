.class final Lcom/facebook/GraphRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->a(Lcom/facebook/x;Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/x;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/x;)V
    .locals 0

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/facebook/GraphRequest$3;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/GraphRequest$3;->b:Lcom/facebook/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/facebook/GraphRequest$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1368
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/r;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/aa;

    invoke-interface {v1, v0}, Lcom/facebook/r;->a(Lcom/facebook/aa;)V

    goto :goto_0

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$3;->b:Lcom/facebook/x;

    invoke-virtual {v0}, Lcom/facebook/x;->e()Ljava/util/List;

    move-result-object v0

    .line 1372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/y;

    .line 1373
    iget-object v2, p0, Lcom/facebook/GraphRequest$3;->b:Lcom/facebook/x;

    invoke-interface {v0, v2}, Lcom/facebook/y;->a(Lcom/facebook/x;)V

    goto :goto_1

    .line 1375
    :cond_1
    return-void
.end method
