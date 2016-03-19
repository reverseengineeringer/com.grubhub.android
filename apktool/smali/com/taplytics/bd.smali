.class public final Lcom/taplytics/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Number;

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/taplytics/bd;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taplytics/bd;->b:Ljava/lang/Number;

    iput-object p3, p0, Lcom/taplytics/bd;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 297
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/bd;->b:Ljava/lang/Number;

    iget-object v3, p0, Lcom/taplytics/bd;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v0, "Taplytics"

    const-string v1, "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
