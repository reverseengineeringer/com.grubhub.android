.class Lcom/taplytics/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/hj;


# instance fields
.field final synthetic a:Lcom/taplytics/gr;

.field final synthetic b:Lcom/taplytics/cs;


# direct methods
.method constructor <init>(Lcom/taplytics/cs;Lcom/taplytics/gr;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/taplytics/dv;->b:Lcom/taplytics/cs;

    iput-object p2, p0, Lcom/taplytics/dv;->a:Lcom/taplytics/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taplytics/dv;->a:Lcom/taplytics/gr;

    invoke-interface {v0, v3, p2}, Lcom/taplytics/gr;->a(Lcom/taplytics/eo;Ljava/lang/Exception;)V

    .line 110
    :goto_0
    return-void

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/taplytics/dv;->a:Lcom/taplytics/gr;

    invoke-interface {v0, v3, v3}, Lcom/taplytics/gr;->a(Lcom/taplytics/eo;Ljava/lang/Exception;)V

    goto :goto_0

    .line 101
    :cond_1
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 102
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    :cond_2
    new-instance v0, Lcom/taplytics/eo;

    invoke-direct {v0, p1}, Lcom/taplytics/eo;-><init>(Lorg/json/JSONObject;)V

    .line 105
    iget-object v1, p0, Lcom/taplytics/dv;->a:Lcom/taplytics/gr;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/taplytics/gr;->a(Lcom/taplytics/eo;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/taplytics/dv;->a:Lcom/taplytics/gr;

    invoke-interface {v1, v3, v0}, Lcom/taplytics/gr;->a(Lcom/taplytics/eo;Ljava/lang/Exception;)V

    goto :goto_0
.end method
