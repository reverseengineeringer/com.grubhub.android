.class Lcom/facebook/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/facebook/internal/d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/facebook/internal/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/l;->b:Ljava/util/List;

    .line 1174
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/a/l;->g:I

    .line 1180
    iput-object p1, p0, Lcom/facebook/a/l;->d:Lcom/facebook/internal/d;

    .line 1181
    iput-object p2, p0, Lcom/facebook/a/l;->e:Ljava/lang/String;

    .line 1182
    iput-object p3, p0, Lcom/facebook/a/l;->f:Ljava/lang/String;

    .line 1183
    return-void
.end method

.method private a(Lcom/facebook/GraphRequest;ILorg/json/JSONArray;Z)V
    .locals 4

    .prologue
    .line 1253
    .line 1255
    :try_start_0
    sget-object v0, Lcom/facebook/internal/c;->CUSTOM_APP_EVENTS:Lcom/facebook/internal/c;

    iget-object v1, p0, Lcom/facebook/a/l;->d:Lcom/facebook/internal/d;

    iget-object v2, p0, Lcom/facebook/a/l;->f:Ljava/lang/String;

    .line 1260
    invoke-static {}, Lcom/facebook/a/a;->e()Landroid/content/Context;

    move-result-object v3

    .line 1255
    invoke-static {v0, v1, v2, p4, v3}, Lcom/facebook/internal/b;->a(Lcom/facebook/internal/c;Lcom/facebook/internal/d;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1262
    iget v1, p0, Lcom/facebook/a/l;->c:I

    if-lez v1, :cond_0

    .line 1263
    const-string v1, "num_skipped_events"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;)V

    .line 1271
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 1272
    if-nez v0, :cond_1

    .line 1273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1276
    :cond_1
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1277
    if-eqz v1, :cond_2

    .line 1278
    const-string v2, "custom_events_file"

    .line 1280
    invoke-direct {p0, v1}, Lcom/facebook/a/l;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 1278
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1281
    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->a(Ljava/lang/Object;)V

    .line 1283
    :cond_2
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 1284
    return-void

    .line 1265
    :catch_0
    move-exception v0

    .line 1267
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 1287
    const/4 v0, 0x0

    .line 1289
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1294
    :goto_0
    return-object v0

    .line 1290
    :catch_0
    move-exception v1

    .line 1292
    const-string v2, "Encoding exception: "

    invoke-static {v2, v1}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    .prologue
    .line 1196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/facebook/GraphRequest;ZZ)I
    .locals 5

    .prologue
    .line 1212
    monitor-enter p0

    .line 1213
    :try_start_0
    iget v1, p0, Lcom/facebook/a/l;->c:I

    .line 1216
    iget-object v0, p0, Lcom/facebook/a/l;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1217
    iget-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1219
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1220
    iget-object v0, p0, Lcom/facebook/a/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/d;

    .line 1221
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/facebook/a/d;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1222
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/a/d;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1226
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1227
    const/4 v0, 0x0

    monitor-exit p0

    .line 1232
    :goto_1
    return v0

    .line 1229
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    invoke-direct {p0, p1, v1, v2, p3}, Lcom/facebook/a/l;->a(Lcom/facebook/GraphRequest;ILorg/json/JSONArray;Z)V

    .line 1232
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/facebook/a/d;)V
    .locals 2

    .prologue
    .line 1188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/a/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1189
    iget v0, p0, Lcom/facebook/a/l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/a/l;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    :goto_0
    monitor-exit p0

    return-void

    .line 1191
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    monitor-exit p0

    return-void

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 1200
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/a/l;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1204
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/a/l;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    monitor-exit p0

    return-void

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/l;->a:Ljava/util/List;

    .line 1240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/a/l;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    monitor-exit p0

    return-object v0

    .line 1239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
