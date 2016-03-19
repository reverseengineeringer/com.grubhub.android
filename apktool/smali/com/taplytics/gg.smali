.class Lcom/taplytics/gg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ik;


# instance fields
.field final synthetic a:Lcom/taplytics/fy;


# direct methods
.method constructor <init>(Lcom/taplytics/fy;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/taplytics/gg;->a:Lcom/taplytics/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 826
    const-string v0, "git tag error"

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 827
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 812
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got tag response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 815
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/taplytics/gg;->a:Lcom/taplytics/fy;

    iget-object v1, p0, Lcom/taplytics/gg;->a:Lcom/taplytics/fy;

    new-instance v2, Lcom/taplytics/ep;

    const-string v3, "tag_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taplytics/ep;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Lcom/taplytics/ep;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Z)Z

    .line 817
    iget-object v0, p0, Lcom/taplytics/gg;->a:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->d(Lcom/taplytics/fy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    invoke-static {}, Lcom/taplytics/ck;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A Taplytics SDK update is available. Please update to ensure best functionality"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_1
    return-void
.end method
