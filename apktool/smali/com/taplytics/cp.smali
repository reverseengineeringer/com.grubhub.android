.class Lcom/taplytics/cp;
.super Lcom/taplytics/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/taplytics/co;


# direct methods
.method constructor <init>(Lcom/taplytics/co;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/taplytics/cp;->b:Lcom/taplytics/co;

    iput-object p2, p0, Lcom/taplytics/cp;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-super {p0}, Lcom/taplytics/h;->e()V

    .line 217
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/cp;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    :cond_0
    invoke-virtual {v0, v3}, Lcom/taplytics/eo;->a(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/taplytics/cp;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/taplytics/eo;->a(Lorg/json/JSONObject;)V

    .line 222
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/taplytics/cp;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/taplytics/eo;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
