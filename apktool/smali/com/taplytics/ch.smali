.class Lcom/taplytics/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/eq;

.field final synthetic b:Lcom/taplytics/cc;


# direct methods
.method constructor <init>(Lcom/taplytics/cc;Lcom/taplytics/eq;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    iput-object p2, p0, Lcom/taplytics/ch;->a:Lcom/taplytics/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 658
    iget-object v1, p0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    invoke-static {v1, v0}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;Ljava/util/Date;)Ljava/util/Date;

    .line 659
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    .line 660
    invoke-virtual {v3}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v1

    .line 661
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 666
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    invoke-static {v0}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;)Lcom/taplytics/bw;

    move-result-object v0

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Lcom/taplytics/bw;->a(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 667
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 668
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 669
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 671
    :try_start_1
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    const-string v1, "sid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    :cond_0
    const-string v1, "prod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 674
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 675
    const-string v1, "prod"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 681
    :cond_1
    :goto_2
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "tlError"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 684
    const-string v7, "taplyticsMessage"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 685
    const-string v7, "taplyticsMessage"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 687
    invoke-static {}, Lcom/taplytics/cc;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 688
    const-string v8, "val"

    invoke-static {}, Lcom/taplytics/cc;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    invoke-static {}, Lcom/taplytics/cc;->g()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {}, Lcom/taplytics/cc;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v9, v10, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    :try_start_2
    const-string v1, "Adding JSONObject to eventQueue"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 744
    :catch_1
    move-exception v0

    .line 745
    const-string v1, "Something has gone wrong flushing."

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 747
    :goto_3
    return-void

    :cond_3
    move-object v2, v0

    .line 661
    goto/16 :goto_0

    .line 677
    :cond_4
    :try_start_3
    const-string v1, "prod"

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 704
    :cond_5
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 705
    invoke-virtual {v3}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 706
    const-string v1, "t"

    invoke-virtual {v3}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    :cond_6
    const-string v1, "sid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    const-string v1, "e"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    invoke-virtual {v3}, Lcom/taplytics/fy;->l()Lcom/taplytics/hn;

    move-result-object v1

    new-instance v2, Lcom/taplytics/ci;

    invoke-direct {v2, p0, v4}, Lcom/taplytics/ci;-><init>(Lcom/taplytics/ch;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lcom/taplytics/hn;->a(Lorg/json/JSONObject;Lcom/taplytics/ik;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 735
    :catch_2
    move-exception v0

    .line 736
    :try_start_5
    const-string v1, "Flushing Events Queue"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 737
    iget-object v0, p0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    iget-object v1, p0, Lcom/taplytics/ch;->a:Lcom/taplytics/eq;

    invoke-static {v0, v1}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;Lcom/taplytics/eq;)V

    goto :goto_3

    .line 741
    :cond_7
    iget-object v0, p0, Lcom/taplytics/ch;->b:Lcom/taplytics/cc;

    iget-object v1, p0, Lcom/taplytics/ch;->a:Lcom/taplytics/eq;

    invoke-static {v0, v1}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;Lcom/taplytics/eq;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method
