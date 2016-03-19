.class Lcom/taplytics/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/taplytics/n;


# direct methods
.method constructor <init>(Lcom/taplytics/n;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/taplytics/al;->b:Lcom/taplytics/n;

    iput-object p2, p0, Lcom/taplytics/al;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/al;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Activity Stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 302
    :cond_0
    sget-object v1, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v1

    const-string v2, "viewDisappeared"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/taplytics/cc;->b(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 304
    invoke-static {v0}, Lcom/taplytics/cc;->b(Ljava/lang/String;)V

    .line 306
    :cond_1
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const-string v1, "Error stopping activity: "

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
