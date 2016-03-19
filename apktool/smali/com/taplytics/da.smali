.class Lcom/taplytics/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/cz;


# direct methods
.method constructor <init>(Lcom/taplytics/cz;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v0, v0, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v0}, Lcom/taplytics/cy;->a(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    iget-object v0, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v0, v0, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v0}, Lcom/taplytics/cy;->a(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v1, v1, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v1}, Lcom/taplytics/cy;->b(Lcom/taplytics/cy;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v1, v1, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v1}, Lcom/taplytics/cy;->a(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    iget-object v1, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v1, v1, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getEvents"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/taplytics/cy;->a(Lcom/taplytics/cy;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 69
    iget-object v1, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v1, v1, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v1}, Lcom/taplytics/cy;->c(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    iget-object v1, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v1, v1, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v1}, Lcom/taplytics/cy;->c(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 74
    iget-object v1, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v1, v1, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v1}, Lcom/taplytics/cy;->c(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    :goto_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 77
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    const-string v3, "event_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v3, v3, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v3}, Lcom/taplytics/cy;->d(Lcom/taplytics/cy;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v3, v3, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    const-string v4, "event_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/taplytics/cy;->a(Lcom/taplytics/cy;J)J

    .line 81
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v3

    const-string v4, "amplitude"

    const-string v5, "event_type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "event_properties"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 82
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "logged amplitude event"

    invoke-static {v3}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 85
    :cond_0
    const-string v3, "event_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v3, v3, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v3}, Lcom/taplytics/cy;->d(Lcom/taplytics/cy;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v3, v3, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    const-string v4, "event_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/taplytics/cy;->a(Lcom/taplytics/cy;J)J

    move v1, v2

    .line 76
    :goto_1
    add-int/lit8 v2, v1, 0x1

    goto/16 :goto_0

    .line 90
    :cond_1
    int-to-long v2, v2

    iget-object v4, p0, Lcom/taplytics/da;->a:Lcom/taplytics/cz;

    iget-object v4, v4, Lcom/taplytics/cz;->a:Lcom/taplytics/cy;

    invoke-static {v4}, Lcom/taplytics/cy;->d(Lcom/taplytics/cy;)J

    move-result-wide v4

    const-string v6, "event_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while getting amplitude event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 100
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method
