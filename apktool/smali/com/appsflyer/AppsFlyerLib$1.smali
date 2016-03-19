.class final Lcom/appsflyer/AppsFlyerLib$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation


# instance fields
.field final synthetic a:Lcom/appsflyer/j;


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->a:Lcom/appsflyer/j;

    invoke-interface {v0, p1}, Lcom/appsflyer/j;->a(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->a:Lcom/appsflyer/j;

    invoke-interface {v0, p1}, Lcom/appsflyer/j;->a(Ljava/util/Map;)V

    .line 346
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    return-void
.end method
