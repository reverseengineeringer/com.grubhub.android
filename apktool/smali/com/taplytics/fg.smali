.class Lcom/taplytics/fg;
.super Lcom/taplytics/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/fe;


# direct methods
.method constructor <init>(Lcom/taplytics/fe;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/taplytics/fg;->b:Lcom/taplytics/fe;

    iput-object p2, p0, Lcom/taplytics/fg;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/taplytics/h;->e()V

    .line 137
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-string v1, "name"

    iget-object v2, p0, Lcom/taplytics/fg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v1, "variableType"

    const-string v2, "Code Block"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "created_at"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v1

    const-string v2, "newCodeBlock"

    invoke-virtual {v1, v2, v0}, Lcom/taplytics/im;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "error pushing codeBlock to server"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
