.class Lcom/taplytics/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ik;


# instance fields
.field final synthetic a:Lcom/taplytics/eq;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/taplytics/cl;


# direct methods
.method constructor <init>(Lcom/taplytics/cl;Lcom/taplytics/eq;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/taplytics/co;->c:Lcom/taplytics/cl;

    iput-object p2, p0, Lcom/taplytics/co;->a:Lcom/taplytics/eq;

    iput-object p3, p0, Lcom/taplytics/co;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 237
    const-string v0, "Flushing App User Attributes"

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 238
    iget-object v0, p0, Lcom/taplytics/co;->c:Lcom/taplytics/cl;

    iget-object v1, p0, Lcom/taplytics/co;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/taplytics/cl;->a(Lcom/taplytics/cl;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 239
    iget-object v0, p0, Lcom/taplytics/co;->c:Lcom/taplytics/cl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/cl;->a(Lcom/taplytics/cl;Z)Z

    .line 240
    iget-object v0, p0, Lcom/taplytics/co;->a:Lcom/taplytics/eq;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/taplytics/co;->a:Lcom/taplytics/eq;

    invoke-interface {v0}, Lcom/taplytics/eq;->b()V

    .line 243
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "Flushed App User Attributes!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 210
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->d()Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Lcom/taplytics/cp;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/cp;-><init>(Lcom/taplytics/co;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/taplytics/co;->a:Lcom/taplytics/eq;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/taplytics/co;->a:Lcom/taplytics/eq;

    invoke-interface {v0}, Lcom/taplytics/eq;->a()V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/taplytics/co;->c:Lcom/taplytics/cl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/cl;->a(Lcom/taplytics/cl;Z)Z

    .line 233
    return-void
.end method
