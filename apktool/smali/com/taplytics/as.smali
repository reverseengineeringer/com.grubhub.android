.class public Lcom/taplytics/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/taplytics/as;


# instance fields
.field private final a:Ljava/util/WeakHashMap;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/taplytics/as;->a:Ljava/util/WeakHashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taplytics/as;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/taplytics/as;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/taplytics/as;->c:Lcom/taplytics/as;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/taplytics/as;

    invoke-direct {v0}, Lcom/taplytics/as;-><init>()V

    sput-object v0, Lcom/taplytics/as;->c:Lcom/taplytics/as;

    .line 42
    :cond_0
    sget-object v0, Lcom/taplytics/as;->c:Lcom/taplytics/as;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/as;Lcom/taplytics/sdk/TaplyticsVar;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taplytics/as;->a(Lcom/taplytics/sdk/TaplyticsVar;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/taplytics/sdk/TaplyticsVar;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taplytics/sdk/TaplyticsVar",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p1, Lcom/taplytics/sdk/TaplyticsVar;->value:Ljava/lang/Object;

    .line 316
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iput-object p2, p1, Lcom/taplytics/sdk/TaplyticsVar;->value:Ljava/lang/Object;

    .line 329
    iget-object v0, p1, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p1, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    invoke-interface {v0, p2}, Lcom/taplytics/sdk/TaplyticsVarListener;->variableUpdated(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/taplytics/as;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taplytics/as;->a:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/taplytics/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/im;->b()Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Lcom/taplytics/au;

    invoke-direct {v1, p0, p1, p2}, Lcom/taplytics/au;-><init>(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/taplytics/sdk/TaplyticsVar;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/taplytics/sdk/TaplyticsVar",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 53
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/taplytics/as;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 61
    iget-object v0, p0, Lcom/taplytics/as;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/taplytics/as;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 165
    :cond_1
    :goto_0
    return-object p2

    .line 67
    :cond_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 69
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/eo;->h()Lcom/taplytics/en;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_3

    .line 74
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_5

    move-object p2, v0

    .line 86
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p3, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p3, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    invoke-interface {v0, p2}, Lcom/taplytics/sdk/TaplyticsVarListener;->variableUpdated(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    :cond_4
    :goto_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 163
    iget-object v0, p0, Lcom/taplytics/as;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_5
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/taplytics/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable types do no match. For "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Check variable config and try clearing app data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_4
    const-string v1, "Taplytics"

    const-string v2, "Problem casting dynamic variable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/taplytics/as;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 157
    :catch_1
    move-exception v0

    goto :goto_2

    .line 89
    :cond_6
    if-nez p4, :cond_4

    .line 90
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->d()Lcom/taplytics/c;

    move-result-object v6

    new-instance v0, Lcom/taplytics/at;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/taplytics/at;-><init>(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;Lcom/taplytics/sdk/TaplyticsVar;Ljava/lang/Class;)V

    invoke-virtual {v6, v0}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taplytics/eo;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_1

    const-string v2, "hasDynamicVariables"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/taplytics/eo;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_1

    .line 277
    const-string v2, "dynamicVariables"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_1

    move v3, v0

    .line 280
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 282
    :try_start_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/taplytics/as;->a:Ljava/util/WeakHashMap;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taplytics/sdk/TaplyticsVar;

    .line 285
    if-eqz v1, :cond_0

    .line 287
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "defaultValue"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v5, v2, v0}, Lcom/taplytics/as;->a(Lcom/taplytics/sdk/TaplyticsVar;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 297
    :cond_1
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_1
.end method
