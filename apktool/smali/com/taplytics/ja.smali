.class Lcom/taplytics/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/jm;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/im;


# direct methods
.method constructor <init>(Lcom/taplytics/im;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/taplytics/ja;->b:Lcom/taplytics/im;

    iput-object p2, p0, Lcom/taplytics/ja;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 616
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ja;->b:Lcom/taplytics/im;

    invoke-static {v0}, Lcom/taplytics/im;->a(Lcom/taplytics/im;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/taplytics/ja;->b:Lcom/taplytics/im;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Lcom/taplytics/im;->a(Lcom/taplytics/im;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/taplytics/ja;->b:Lcom/taplytics/im;

    invoke-static {v0}, Lcom/taplytics/im;->a(Lcom/taplytics/im;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "wasConnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 621
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/taplytics/jb;

    invoke-direct {v1, p0}, Lcom/taplytics/jb;-><init>(Lcom/taplytics/ja;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    const-string v1, "Sending pairing device socket"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
