.class Lcom/taplytics/ia;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/taplytics/ik;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/hn;


# direct methods
.method private constructor <init>(Lcom/taplytics/hn;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/taplytics/ia;->a:Lcom/taplytics/hn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taplytics/hn;Lcom/taplytics/ho;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/taplytics/ia;-><init>(Lcom/taplytics/hn;)V

    return-void
.end method


# virtual methods
.method protected final a([Lcom/taplytics/ik;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 329
    const/4 v0, 0x0

    :try_start_0
    aget-object v7, p1, v0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taplytics/ia;->a:Lcom/taplytics/hn;

    invoke-static {v1}, Lcom/taplytics/hn;->b(Lcom/taplytics/hn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/ia;->a:Lcom/taplytics/hn;

    invoke-static {v1}, Lcom/taplytics/hn;->d(Lcom/taplytics/hn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    :try_start_1
    const-string v0, "projectToken"

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v0, "isAppIcon"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 337
    const-string v0, "isAndroid"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :goto_0
    :try_start_2
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 344
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 345
    invoke-static {}, Lcom/taplytics/kc;->c()[B

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 347
    const-string v1, "icon"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    new-instance v0, Lcom/taplytics/hl;

    const/4 v1, 0x1

    new-instance v5, Lcom/taplytics/ib;

    invoke-direct {v5, p0, v6, v7}, Lcom/taplytics/ib;-><init>(Lcom/taplytics/ia;Ljava/util/Date;Lcom/taplytics/ik;)V

    new-instance v6, Lcom/taplytics/ic;

    invoke-direct {v6, p0, v2, v7}, Lcom/taplytics/ic;-><init>(Lcom/taplytics/ia;Ljava/lang/String;Lcom/taplytics/ik;)V

    invoke-direct/range {v0 .. v6}, Lcom/taplytics/hl;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 372
    const-string v1, "post_appIcon"

    invoke-virtual {v0, v1}, Lcom/taplytics/hl;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 373
    iget-object v1, p0, Lcom/taplytics/ia;->a:Lcom/taplytics/hn;

    invoke-static {v1}, Lcom/taplytics/hn;->a(Lcom/taplytics/hn;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 377
    :goto_1
    return-object v8

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v1, "postChosenActivity"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 374
    :catch_1
    move-exception v0

    goto :goto_1

    .line 349
    :cond_0
    const-string v0, "app icon null"

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    check-cast p1, [Lcom/taplytics/ik;

    invoke-virtual {p0, p1}, Lcom/taplytics/ia;->a([Lcom/taplytics/ik;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
