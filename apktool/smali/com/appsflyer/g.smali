.class Lcom/appsflyer/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/g;->d:Ljava/lang/ref/WeakReference;

    .line 1184
    iput-object p1, p0, Lcom/appsflyer/g;->c:Ljava/lang/String;

    .line 1185
    iput-object p2, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    .line 1186
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/g;->d:Ljava/lang/ref/WeakReference;

    .line 1187
    iput-boolean p4, p0, Lcom/appsflyer/g;->b:Z

    .line 1188
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    .prologue
    .line 1172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/g;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1191
    .line 1192
    iget-object v0, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/g;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1196
    if-eqz v0, :cond_6

    .line 1197
    invoke-static {}, Lcom/appsflyer/h;->a()Lcom/appsflyer/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    const-string v7, "referrer"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1200
    iget-object v6, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    const-string v7, "referrer"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    :cond_0
    const-string v1, "appsflyer-data"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1203
    const-string v6, "true"

    const-string v7, "sentSuccessfully"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1204
    iget-object v1, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    const-string v7, "eventName"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1205
    iget-object v7, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    const-string v8, "counter"

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    .line 1207
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    const-string v6, "isFirstCall"

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v0, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    const-string v1, "appsflyerKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1210
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 1211
    :cond_1
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v1, v4

    .line 1205
    goto :goto_0

    :cond_4
    move v0, v4

    .line 1207
    goto :goto_2

    .line 1215
    :cond_5
    new-instance v0, Lcom/appsflyer/m;

    invoke-direct {v0}, Lcom/appsflyer/m;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/appsflyer/m;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    const-string v4, "af_v"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v0, p0, Lcom/appsflyer/g;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->b(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1220
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/g;->d:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/appsflyer/g;->b:Z

    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    :goto_4
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/appsflyer/g;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/appsflyer/g;->c:Ljava/lang/String;

    const-string v3, "&isCachedRequest=true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1224
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    invoke-static {}, Lcom/appsflyer/a/a;->a()Lcom/appsflyer/a/a;

    move-result-object v2

    new-instance v3, Lcom/appsflyer/a/b;

    iget-object v0, p0, Lcom/appsflyer/g;->c:Ljava/lang/String;

    const-string v4, "1.16"

    invoke-direct {v3, v0, v1, v4}, Lcom/appsflyer/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/g;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/appsflyer/a/a;->a(Lcom/appsflyer/a/b;Landroid/content/Context;)V

    goto :goto_3

    .line 1227
    :catch_1
    move-exception v0

    .line 1228
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1222
    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :cond_6
    move v0, v4

    goto/16 :goto_1
.end method
