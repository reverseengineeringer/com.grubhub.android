.class Lcom/taplytics/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/taplytics/dg;


# direct methods
.method constructor <init>(Lcom/taplytics/dg;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iput-object p2, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/taplytics/dm;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/taplytics/eo;->s()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 681
    invoke-virtual {v0}, Lcom/taplytics/eo;->s()Lorg/json/JSONObject;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-boolean v1, v1, Lcom/taplytics/dg;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    invoke-virtual {v1}, Lcom/taplytics/dg;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "amplitude"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-object v2, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;Ljava/util/Map;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-boolean v1, v1, Lcom/taplytics/dg;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    invoke-virtual {v1}, Lcom/taplytics/dg;->e()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "adobe"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-object v2, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;Ljava/util/Map;)V

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-boolean v1, v1, Lcom/taplytics/dg;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    invoke-virtual {v1}, Lcom/taplytics/dg;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "localytics"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-object v2, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/taplytics/dg;->c(Lcom/taplytics/dg;Ljava/util/Map;)V

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-boolean v1, v1, Lcom/taplytics/dg;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    invoke-virtual {v1}, Lcom/taplytics/dg;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "flurry"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-object v2, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/taplytics/dg;->d(Lcom/taplytics/dg;Ljava/util/Map;)V

    .line 694
    :cond_3
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-boolean v1, v1, Lcom/taplytics/dg;->a:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    invoke-virtual {v1}, Lcom/taplytics/dg;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mixpanel"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-object v2, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/taplytics/dg;->e(Lcom/taplytics/dg;Ljava/util/Map;)V

    .line 697
    :cond_4
    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-boolean v1, v1, Lcom/taplytics/dg;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    invoke-virtual {v1}, Lcom/taplytics/dg;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "googleAnalytics"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    iget-object v0, p0, Lcom/taplytics/dm;->c:Lcom/taplytics/dg;

    iget-object v1, p0, Lcom/taplytics/dm;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/taplytics/dm;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/dg;->b(Ljava/util/Map;Ljava/lang/Object;)V

    .line 701
    :cond_5
    return-void
.end method
