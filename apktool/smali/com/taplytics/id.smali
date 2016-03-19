.class public Lcom/taplytics/id;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/hn;


# direct methods
.method public constructor <init>(Lcom/taplytics/hn;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/taplytics/id;->a:Lcom/taplytics/hn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 165
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    .line 166
    :goto_0
    const/4 v1, 0x1

    aget-object v1, p1, v1

    move-object v0, v1

    check-cast v0, Lcom/taplytics/ij;

    move-object v7, v0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taplytics/id;->a:Lcom/taplytics/hn;

    invoke-static {v4}, Lcom/taplytics/hn;->b(Lcom/taplytics/hn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/taplytics/id;->a:Lcom/taplytics/hn;

    invoke-static {v4}, Lcom/taplytics/hn;->c(Lcom/taplytics/hn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/api/v1/clientConfig"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/taplytics/fy;->m()Lcom/taplytics/el;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/taplytics/el;->a(Ljava/lang/StringBuilder;)V

    .line 174
    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/cc;->a()Lcom/taplytics/cl;

    move-result-object v4

    const-string v5, "user_id"

    invoke-virtual {v4, v5}, Lcom/taplytics/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    if-eqz v4, :cond_0

    .line 176
    const-string v5, "uid"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/cc;->a()Lcom/taplytics/cl;

    move-result-object v1

    const-string v4, "email"

    invoke-virtual {v1, v4}, Lcom/taplytics/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_1

    .line 180
    const-string v4, "email"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1
    invoke-static {v2, v3}, Lcom/taplytics/iz;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 183
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 184
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Properties From Server, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 188
    :cond_2
    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lcom/taplytics/ie;

    invoke-direct {v5, p0, v6, v7}, Lcom/taplytics/ie;-><init>(Lcom/taplytics/id;Ljava/util/Date;Lcom/taplytics/ij;)V

    new-instance v6, Lcom/taplytics/if;

    invoke-direct {v6, p0, v9, v7}, Lcom/taplytics/if;-><init>(Lcom/taplytics/id;Ljava/lang/String;Lcom/taplytics/ij;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 217
    const-string v2, "get_clientConfig"

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 218
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v3, 0x3a98

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 219
    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 220
    iget-object v2, p0, Lcom/taplytics/id;->a:Lcom/taplytics/hn;

    invoke-static {v2}, Lcom/taplytics/hn;->a(Lcom/taplytics/hn;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 224
    :goto_1
    return-object v8

    .line 165
    :cond_3
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    const-string v2, "error getting TLProperties from Server"

    instance-of v3, v1, Ljava/lang/Exception;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/Exception;

    :goto_2
    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    move-object v1, v8

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/taplytics/id;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
