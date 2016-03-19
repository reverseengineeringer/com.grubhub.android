.class Lcom/taplytics/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/gr;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/fy;


# direct methods
.method constructor <init>(Lcom/taplytics/fy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    iput-object p2, p0, Lcom/taplytics/gf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taplytics/eo;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 676
    if-eqz p2, :cond_1

    .line 677
    const-string v0, "Reading TLProperties from disk"

    invoke-static {v0, p2}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p1}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_3

    .line 682
    iget-object v1, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    iget-object v2, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Lcom/taplytics/eo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    invoke-static {}, Lcom/taplytics/fx;->a()Lcom/taplytics/fx;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    invoke-static {v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taplytics/fx;->a(Lcom/taplytics/eo;)V

    .line 688
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 690
    :try_start_0
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taplytics/gf;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    invoke-static {v0, p1}, Lcom/taplytics/fy;->b(Lcom/taplytics/fy;Lcom/taplytics/eo;)Lcom/taplytics/eo;

    .line 693
    iget-object v0, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/fy;->a(ZLjava/util/Map;)V

    .line 694
    iget-object v0, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->b(Lcom/taplytics/fy;)V

    .line 697
    iget-object v0, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    iget-object v1, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    invoke-static {v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;)Lcom/taplytics/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/eo;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/fy;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taplytics/gf;->b:Lcom/taplytics/fy;

    invoke-static {v0}, Lcom/taplytics/fy;->c(Lcom/taplytics/fy;)Lcom/taplytics/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cc;->d()V

    goto :goto_0

    .line 699
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cs;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 701
    :catch_0
    move-exception v0

    .line 702
    const-string v1, "Getting token from disk TLProperties"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
