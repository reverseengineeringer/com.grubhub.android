.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Lcom/android/volley/toolbox/RequestFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/toolbox/RequestFuture",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;)V

    .line 35
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->l:Ljava/util/ArrayList;

    .line 36
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->m:Lcom/android/volley/toolbox/RequestFuture;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->i()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "ratings"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "orders"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected c()V
    .locals 7

    .prologue
    .line 51
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;)V

    .line 52
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 53
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 54
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->h()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;-><init>()V

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->m:Lcom/android/volley/toolbox/RequestFuture;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->m:Lcom/android/volley/toolbox/RequestFuture;

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 61
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 62
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    .line 63
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->l:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e()Ljava/util/Map;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const-string v3, "orderReviewCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orderId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->orderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",timePlaced="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->timePlaced:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->state:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_1
    return-object v1
.end method

.method protected h()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderReviewCheckDTO;

    invoke-direct {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderReviewCheckDTO;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v2, "orders"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->f()V

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->b()V

    .line 120
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->c()V

    .line 123
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    instance-of v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cz;

    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cz;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->m:Lcom/android/volley/toolbox/RequestFuture;

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cz;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
