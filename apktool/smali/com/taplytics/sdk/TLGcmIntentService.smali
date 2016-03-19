.class public Lcom/taplytics/sdk/TLGcmIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "TLGcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 29
    .line 30
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/aw;

    invoke-direct {v1, p0, p1, p0}, Lcom/taplytics/aw;-><init>(Lcom/taplytics/sdk/TLGcmIntentService;Landroid/content/Intent;Landroid/app/IntentService;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method
