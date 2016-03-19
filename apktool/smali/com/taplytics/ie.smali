.class Lcom/taplytics/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Lcom/taplytics/ij;

.field final synthetic c:Lcom/taplytics/id;


# direct methods
.method constructor <init>(Lcom/taplytics/id;Ljava/util/Date;Lcom/taplytics/ij;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/taplytics/ie;->c:Lcom/taplytics/id;

    iput-object p2, p0, Lcom/taplytics/ie;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/taplytics/ie;->b:Lcom/taplytics/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "Got Properties Response!"

    iget-object v1, p0, Lcom/taplytics/ie;->a:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 196
    :cond_0
    :try_start_0
    new-instance v0, Lcom/taplytics/eo;

    invoke-direct {v0, p1}, Lcom/taplytics/eo;-><init>(Lorg/json/JSONObject;)V

    .line 197
    iget-object v1, p0, Lcom/taplytics/ie;->b:Lcom/taplytics/ij;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/taplytics/ie;->b:Lcom/taplytics/ij;

    invoke-interface {v1, v0}, Lcom/taplytics/ij;->a(Lcom/taplytics/eo;)V

    .line 200
    :cond_1
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taplytics/cs;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_2
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "Parsing TLProperties"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    iget-object v1, p0, Lcom/taplytics/ie;->b:Lcom/taplytics/ij;

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/taplytics/ie;->b:Lcom/taplytics/ij;

    invoke-interface {v1, v0}, Lcom/taplytics/ij;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taplytics/ie;->a(Lorg/json/JSONObject;)V

    return-void
.end method
