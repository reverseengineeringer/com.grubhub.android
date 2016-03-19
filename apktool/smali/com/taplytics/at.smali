.class Lcom/taplytics/at;
.super Lcom/taplytics/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/taplytics/sdk/TaplyticsVar;

.field final synthetic d:Ljava/lang/Class;

.field final synthetic e:Lcom/taplytics/as;


# direct methods
.method constructor <init>(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;Lcom/taplytics/sdk/TaplyticsVar;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    iput-object p2, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/taplytics/at;->c:Lcom/taplytics/sdk/TaplyticsVar;

    iput-object p5, p0, Lcom/taplytics/at;->d:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/taplytics/h;->d()V

    .line 151
    iget-object v0, p0, Lcom/taplytics/at;->c:Lcom/taplytics/sdk/TaplyticsVar;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/taplytics/at;->c:Lcom/taplytics/sdk/TaplyticsVar;

    iget-object v0, v0, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    iget-object v1, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/taplytics/sdk/TaplyticsVarListener;->variableUpdated(Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    .line 93
    invoke-super {p0}, Lcom/taplytics/h;->a()V

    .line 96
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/eo;->h()Lcom/taplytics/en;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/taplytics/en;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    iget-object v1, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taplytics/as;->a(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/taplytics/at;->c:Lcom/taplytics/sdk/TaplyticsVar;

    iget-object v0, v0, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/taplytics/at;->c:Lcom/taplytics/sdk/TaplyticsVar;

    iget-object v0, v0, Lcom/taplytics/sdk/TaplyticsVar;->listener:Lcom/taplytics/sdk/TaplyticsVarListener;

    iget-object v1, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/taplytics/sdk/TaplyticsVarListener;->variableUpdated(Ljava/lang/Object;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 107
    if-eqz v2, :cond_2

    .line 108
    iget-object v0, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/taplytics/en;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    iget-object v1, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taplytics/as;->a(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "Problem setting dynamic var after tlprop promise return"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    .line 118
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "value"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/taplytics/at;->d:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, v0

    .line 129
    :cond_5
    :goto_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    iget-object v0, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    invoke-static {v0}, Lcom/taplytics/as;->a(Lcom/taplytics/as;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    invoke-static {v0}, Lcom/taplytics/as;->a(Lcom/taplytics/as;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/taplytics/sdk/TaplyticsVar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    invoke-static {v0}, Lcom/taplytics/as;->a(Lcom/taplytics/as;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taplytics/sdk/TaplyticsVar;

    .line 139
    :goto_2
    if-eqz v0, :cond_0

    .line 140
    iget-object v2, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    iget-object v3, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/taplytics/as;->a(Lcom/taplytics/as;Lcom/taplytics/sdk/TaplyticsVar;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 123
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Variable types do no match. For "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taplytics/at;->d:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Check variable config and try clearing app data."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/taplytics/at;->e:Lcom/taplytics/as;

    iget-object v2, p0, Lcom/taplytics/at;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/taplytics/at;->b:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taplytics/as;->a(Lcom/taplytics/as;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 131
    :cond_7
    iget-object v0, p0, Lcom/taplytics/at;->c:Lcom/taplytics/sdk/TaplyticsVar;

    goto :goto_2

    .line 136
    :cond_8
    iget-object v0, p0, Lcom/taplytics/at;->c:Lcom/taplytics/sdk/TaplyticsVar;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
