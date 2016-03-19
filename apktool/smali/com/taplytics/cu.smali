.class Lcom/taplytics/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/eq;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

.field final synthetic b:Lcom/taplytics/cl;


# direct methods
.method constructor <init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsResetUserListener;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/taplytics/cu;->b:Lcom/taplytics/cl;

    iput-object p2, p0, Lcom/taplytics/cu;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/taplytics/cu;->b:Lcom/taplytics/cl;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taplytics/cl;->b(Lcom/taplytics/cl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 351
    iget-object v0, p0, Lcom/taplytics/cu;->b:Lcom/taplytics/cl;

    invoke-static {v0}, Lcom/taplytics/cl;->b(Lcom/taplytics/cl;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/taplytics/cu;->b:Lcom/taplytics/cl;

    iget-object v1, p0, Lcom/taplytics/cu;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-virtual {v0, v1}, Lcom/taplytics/cl;->a(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V

    .line 354
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/taplytics/cu;->b:Lcom/taplytics/cl;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taplytics/cl;->b(Lcom/taplytics/cl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 359
    return-void
.end method
