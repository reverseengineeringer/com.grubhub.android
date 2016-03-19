.class Lcom/taplytics/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/ik;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

.field final synthetic b:Lcom/taplytics/fy;

.field final synthetic c:Lcom/taplytics/cl;


# direct methods
.method constructor <init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsResetUserListener;Lcom/taplytics/fy;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/taplytics/cq;->c:Lcom/taplytics/cl;

    iput-object p2, p0, Lcom/taplytics/cq;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    iput-object p3, p0, Lcom/taplytics/cq;->b:Lcom/taplytics/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 315
    const-string v0, "Resetting App User"

    invoke-static {v0, p1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 316
    iget-object v0, p0, Lcom/taplytics/cq;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/taplytics/cq;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsResetUserListener;->finishedResettingUser()V

    .line 318
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "Reset App User!"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cs;->c()V

    .line 297
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cs;->b()V

    .line 299
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    .line 300
    new-instance v1, Lcom/taplytics/cr;

    invoke-direct {v1, p0}, Lcom/taplytics/cr;-><init>(Lcom/taplytics/cq;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 308
    iget-object v1, p0, Lcom/taplytics/cq;->b:Lcom/taplytics/fy;

    invoke-virtual {v1}, Lcom/taplytics/fy;->x()V

    .line 309
    iget-object v1, p0, Lcom/taplytics/cq;->b:Lcom/taplytics/fy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taplytics/fy;->e(Z)V

    .line 310
    iget-object v1, p0, Lcom/taplytics/cq;->b:Lcom/taplytics/fy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    .line 311
    return-void
.end method
