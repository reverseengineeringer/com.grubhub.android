.class final Lcom/facebook/GraphRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/s;


# virtual methods
.method public a(Lcom/facebook/aa;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/GraphRequest$1;->a:Lcom/facebook/s;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/facebook/GraphRequest$1;->a:Lcom/facebook/s;

    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/s;->a(Lorg/json/JSONObject;Lcom/facebook/aa;)V

    .line 306
    :cond_0
    return-void
.end method
