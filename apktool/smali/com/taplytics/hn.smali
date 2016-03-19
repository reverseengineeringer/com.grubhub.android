.class public Lcom/taplytics/hn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/taplytics/il;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/taplytics/il;->alpaca:Lcom/taplytics/il;

    iput-object v0, p0, Lcom/taplytics/hn;->a:Lcom/taplytics/il;

    .line 54
    const-string v0, "taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->b:Ljava/lang/String;

    .line 55
    const-string v0, "ping.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->c:Ljava/lang/String;

    .line 56
    const-string v0, "socketio.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->d:Ljava/lang/String;

    .line 57
    const-string v0, "api.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    .line 58
    const-string v0, "https://"

    iput-object v0, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const/high16 v3, 0x2300000

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    iput-object v0, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    .line 64
    iget-object v0, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/taplytics/hn;)Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/taplytics/hn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/taplytics/hn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/taplytics/hn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taplytics/hn;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/taplytics/hn;->a:Lcom/taplytics/il;

    sget-object v2, Lcom/taplytics/il;->antelope:Lcom/taplytics/il;

    if-eq v1, v2, :cond_0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":443"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 475
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":3020"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/taplytics/ik;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/taplytics/ig;

    invoke-direct {v0, p0}, Lcom/taplytics/ig;-><init>(Lcom/taplytics/hn;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/taplytics/ig;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Lcom/taplytics/il;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/taplytics/hn;->a:Lcom/taplytics/il;

    if-eq p1, v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/taplytics/hn;->a:Lcom/taplytics/il;

    .line 70
    sget-object v0, Lcom/taplytics/hs;->a:[I

    iget-object v1, p0, Lcom/taplytics/hn;->a:Lcom/taplytics/il;

    invoke-virtual {v1}, Lcom/taplytics/il;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    const-string v0, "socketio.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->d:Ljava/lang/String;

    .line 103
    const-string v0, "taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->b:Ljava/lang/String;

    .line 104
    const-string v0, "ping.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->c:Ljava/lang/String;

    .line 105
    const-string v0, "api.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    .line 106
    const-string v0, "https://"

    iput-object v0, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "Switched to Production Server!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string v0, "socketio-dev.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->d:Ljava/lang/String;

    .line 73
    const-string v0, "dev.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->b:Ljava/lang/String;

    .line 74
    const-string v0, "dev.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->c:Ljava/lang/String;

    .line 75
    const-string v0, "dev.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    .line 76
    const-string v0, "https://"

    iput-object v0, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Switched to Dev Server!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_1
    const-string v0, "socketio-staging.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->d:Ljava/lang/String;

    .line 83
    const-string v0, "staging.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->b:Ljava/lang/String;

    .line 84
    const-string v0, "staging.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->c:Ljava/lang/String;

    .line 85
    const-string v0, "staging.taplytics.com"

    iput-object v0, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    .line 86
    const-string v0, "https://"

    iput-object v0, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Switched to Staging Server!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "10.0.3.2"

    iput-object v0, p0, Lcom/taplytics/hn;->d:Ljava/lang/String;

    .line 93
    const-string v0, "10.0.3.2:3002"

    iput-object v0, p0, Lcom/taplytics/hn;->b:Ljava/lang/String;

    .line 94
    const-string v0, "10.0.3.2:3002"

    iput-object v0, p0, Lcom/taplytics/hn;->c:Ljava/lang/String;

    .line 95
    const-string v0, "10.0.3.2:3002"

    iput-object v0, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    .line 96
    const-string v0, "http://"

    iput-object v0, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "Switched to Local Host!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/util/Map;Lcom/taplytics/ij;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taplytics/ij;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/taplytics/id;

    invoke-direct {v0, p0}, Lcom/taplytics/id;-><init>(Lcom/taplytics/hn;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/taplytics/id;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONArray;Lcom/taplytics/ik;)V
    .locals 7

    .prologue
    .line 230
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/experimentElements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 235
    const/4 v3, 0x0

    .line 237
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    const-string v3, "t"

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v3, "os"

    const-string v4, "Android"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v3, "views"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v3, "exp_id"

    const-string v4, "experiment_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    .line 246
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 251
    new-instance v0, Lcom/taplytics/hl;

    const/4 v1, 0x1

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/gq;->q()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/taplytics/ho;

    invoke-direct {v5, p0, v6, p2}, Lcom/taplytics/ho;-><init>(Lcom/taplytics/hn;Ljava/util/Date;Lcom/taplytics/ik;)V

    new-instance v6, Lcom/taplytics/ht;

    invoke-direct {v6, p0, v2, p2}, Lcom/taplytics/ht;-><init>(Lcom/taplytics/hn;Ljava/lang/String;Lcom/taplytics/ik;)V

    invoke-direct/range {v0 .. v6}, Lcom/taplytics/hl;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 269
    const-string v1, "post_viewinfo"

    invoke-virtual {v0, v1}, Lcom/taplytics/hl;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 270
    iget-object v1, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 242
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 243
    :goto_2
    const-string v3, "Setting POST experimentElements properties"

    invoke-static {v3, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v3, v1

    goto :goto_1

    .line 242
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a(Lorg/json/JSONObject;Lcom/taplytics/ik;)V
    .locals 7

    .prologue
    .line 383
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    sget-object v0, Lcom/taplytics/kb;->cattle:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/taplytics/ik;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 392
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/clientEvents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->m()Lcom/taplytics/el;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taplytics/el;->a(Ljava/lang/StringBuilder;)V

    .line 395
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 396
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    const-string v6, "%20"

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/taplytics/hu;

    invoke-direct {v4, p0, v5, p2}, Lcom/taplytics/hu;-><init>(Lcom/taplytics/hn;Ljava/util/Date;Lcom/taplytics/ik;)V

    new-instance v5, Lcom/taplytics/hv;

    invoke-direct {v5, p0, v3, p2}, Lcom/taplytics/hv;-><init>(Lcom/taplytics/hn;Ljava/lang/String;Lcom/taplytics/ik;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 412
    const-string v1, "post_clientEvents"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 413
    iget-object v1, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public b(Lcom/taplytics/ik;)V
    .locals 3

    .prologue
    .line 316
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v0, Lcom/taplytics/ia;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taplytics/ia;-><init>(Lcom/taplytics/hn;Lcom/taplytics/ho;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/taplytics/ik;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/taplytics/ia;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;Lcom/taplytics/ik;)V
    .locals 6

    .prologue
    .line 417
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/clientAppUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 422
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    const-string v2, " "

    const-string v4, "%20"

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/taplytics/hw;

    invoke-direct {v4, p0, v5, p2}, Lcom/taplytics/hw;-><init>(Lcom/taplytics/hn;Ljava/util/Date;Lcom/taplytics/ik;)V

    new-instance v5, Lcom/taplytics/hx;

    invoke-direct {v5, p0, v3, p2}, Lcom/taplytics/hx;-><init>(Lcom/taplytics/hn;Ljava/lang/String;Lcom/taplytics/ik;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 438
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x9c4

    const/16 v3, 0xa

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 440
    const-string v1, "post_clientAppUser"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 441
    iget-object v1, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public c(Lorg/json/JSONObject;Lcom/taplytics/ik;)V
    .locals 6

    .prologue
    .line 445
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/resetAppUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 451
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    const-string v2, " "

    const-string v4, "%20"

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/taplytics/hy;

    invoke-direct {v4, p0, v5, p2}, Lcom/taplytics/hy;-><init>(Lcom/taplytics/hn;Ljava/util/Date;Lcom/taplytics/ik;)V

    new-instance v5, Lcom/taplytics/hp;

    invoke-direct {v5, p0, v3, p2}, Lcom/taplytics/hp;-><init>(Lcom/taplytics/hn;Ljava/lang/String;Lcom/taplytics/ik;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 466
    const-string v1, "post_resetAppUser"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 467
    iget-object v1, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public d(Lorg/json/JSONObject;Lcom/taplytics/ik;)V
    .locals 6

    .prologue
    .line 481
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taplytics/hn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/hn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/pushToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 486
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    const-string v2, " "

    const-string v4, "%20"

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/taplytics/hq;

    invoke-direct {v4, p0, v5, p2}, Lcom/taplytics/hq;-><init>(Lcom/taplytics/hn;Ljava/util/Date;Lcom/taplytics/ik;)V

    new-instance v5, Lcom/taplytics/hr;

    invoke-direct {v5, p0, v3, p2}, Lcom/taplytics/hr;-><init>(Lcom/taplytics/hn;Ljava/lang/String;Lcom/taplytics/ik;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 499
    const-string v1, "post_pushToken"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 500
    iget-object v1, p0, Lcom/taplytics/hn;->g:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method
