.class Lcom/taplytics/au;
.super Lcom/taplytics/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/taplytics/as;


# direct methods
.method constructor <init>(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/taplytics/au;->c:Lcom/taplytics/as;

    iput-object p2, p0, Lcom/taplytics/au;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taplytics/au;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/taplytics/h;->e()V

    .line 182
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 183
    const-string v1, "name"

    iget-object v2, p0, Lcom/taplytics/au;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v1, "createdAt"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v1, "defaultVal"

    iget-object v2, p0, Lcom/taplytics/au;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :try_start_1
    const-string v1, "variableType"

    iget-object v2, p0, Lcom/taplytics/au;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v1

    const-string v2, "newDynamicVar"

    invoke-virtual {v1, v2, v0}, Lcom/taplytics/im;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 190
    const-string v1, "variableType"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    const-string v1, "Problem pushing dynamic var to socket"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
