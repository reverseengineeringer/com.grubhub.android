.class Lcom/taplytics/gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ij;


# instance fields
.field final synthetic a:Lcom/taplytics/c;

.field final synthetic b:Lcom/taplytics/fy;


# direct methods
.method constructor <init>(Lcom/taplytics/fy;Lcom/taplytics/c;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    iput-object p2, p0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taplytics/eo;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 863
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    const-string v2, "Got TLProperties!!"

    invoke-static {v2}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 867
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/taplytics/fy;->b(Lcom/taplytics/fy;Z)Z

    .line 868
    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->n()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/taplytics/eo;->a(Lorg/json/JSONArray;)V

    .line 873
    :cond_1
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1, p1}, Lcom/taplytics/fy;->b(Lcom/taplytics/fy;Lcom/taplytics/eo;)Lcom/taplytics/eo;

    .line 875
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Lcom/taplytics/eo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 956
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 868
    goto :goto_0

    .line 880
    :cond_4
    invoke-static {}, Lcom/taplytics/fx;->a()Lcom/taplytics/fx;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taplytics/fx;->a(Lcom/taplytics/eo;)V

    .line 882
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/taplytics/fy;->a(ZLjava/util/Map;)V

    .line 883
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->c(Lcom/taplytics/fy;)Lcom/taplytics/cc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/cc;->a()Lcom/taplytics/cl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taplytics/cl;->a(Lcom/taplytics/eq;)V

    .line 884
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->b(Lcom/taplytics/fy;)V

    .line 885
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->e(Lcom/taplytics/fy;)V

    .line 886
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->f(Lcom/taplytics/fy;)Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 887
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->f(Lcom/taplytics/fy;)Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;->loaded()V

    .line 888
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    .line 892
    :cond_5
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->g(Lcom/taplytics/fy;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 893
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taplytics/im;->a:Z

    if-nez v1, :cond_6

    .line 894
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taplytics/im;->a(Lcom/taplytics/jm;)V

    .line 896
    :cond_6
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/eo;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->h(Lcom/taplytics/fy;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 897
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/im;->d()V

    .line 900
    :cond_7
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->i(Lcom/taplytics/fy;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 901
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->i(Lcom/taplytics/fy;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    invoke-static {v1, v2}, Lcom/taplytics/iz;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 902
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 903
    const-string v1, "Getting Push token"

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 905
    :cond_8
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->k(Lcom/taplytics/fy;)Lcom/taplytics/gn;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->j(Lcom/taplytics/fy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taplytics/gn;->a(Z)V

    .line 910
    :cond_9
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->l(Lcom/taplytics/fy;)Lcom/taplytics/c;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 911
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->l(Lcom/taplytics/fy;)Lcom/taplytics/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/c;->a()V

    .line 915
    :cond_a
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->n()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->o()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->o()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/eo;->n()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 916
    :cond_b
    invoke-static {}, Lcom/taplytics/ft;->a()Lcom/taplytics/ft;

    move-result-object v1

    new-instance v2, Lcom/taplytics/gj;

    invoke-direct {v2, p0}, Lcom/taplytics/gj;-><init>(Lcom/taplytics/gh;)V

    invoke-virtual {v1, v2}, Lcom/taplytics/ft;->a(Lcom/taplytics/es;)V

    .line 931
    invoke-static {}, Lcom/taplytics/ft;->a()Lcom/taplytics/ft;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/eo;->n()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taplytics/ft;->a(Lorg/json/JSONArray;)V

    .line 939
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->q()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 940
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->q()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "clearEventQueue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 941
    iget-object v1, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/cc;->f()V

    .line 945
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 946
    iget-object v0, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->c(Lcom/taplytics/fy;)Lcom/taplytics/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cc;->d()V

    .line 949
    :cond_e
    iget-object v0, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->m(Lcom/taplytics/fy;)Lcom/taplytics/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 950
    iget-object v0, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->m(Lcom/taplytics/fy;)Lcom/taplytics/sdk/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/taplytics/sdk/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    const-string v1, "error processing tlproperties response"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 933
    :cond_f
    :try_start_1
    iget-object v1, p0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    if-eqz v1, :cond_c

    .line 934
    iget-object v1, p0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    invoke-virtual {v1}, Lcom/taplytics/c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 960
    const-string v0, "Getting Properties from server"

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 961
    iget-object v0, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->e(Lcom/taplytics/fy;)V

    .line 962
    iget-object v0, p0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/taplytics/gh;->a:Lcom/taplytics/c;

    invoke-virtual {v0}, Lcom/taplytics/c;->b()V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->l(Lcom/taplytics/fy;)Lcom/taplytics/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/taplytics/gh;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->l(Lcom/taplytics/fy;)Lcom/taplytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/c;->b()V

    .line 968
    :cond_1
    return-void
.end method
