.class public Lcom/taplytics/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/app/IntentService;

.field final synthetic c:Lcom/taplytics/sdk/TLGcmIntentService;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TLGcmIntentService;Landroid/content/Intent;Landroid/app/IntentService;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/taplytics/aw;->c:Lcom/taplytics/sdk/TLGcmIntentService;

    iput-object p2, p0, Lcom/taplytics/aw;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/taplytics/aw;->b:Landroid/app/IntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taplytics/aw;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    :try_start_0
    const-string v1, "custom_keys"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom_keys"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "tl_geo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "Geofence push received"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 42
    :cond_0
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    .line 43
    new-instance v1, Lcom/taplytics/ay;

    invoke-direct {v1, p0}, Lcom/taplytics/ay;-><init>(Lcom/taplytics/aw;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 57
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    .line 70
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "tl_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->o()Lcom/taplytics/gn;

    move-result-object v1

    iget-object v2, p0, Lcom/taplytics/aw;->b:Landroid/app/IntentService;

    invoke-virtual {v1, v0, v2}, Lcom/taplytics/gn;->a(Landroid/os/Bundle;Landroid/app/IntentService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/taplytics/aw;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/taplytics/sdk/TLGcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "Sending push notification"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
