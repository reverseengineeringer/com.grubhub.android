.class public Lcom/taplytics/sdk/TLGeofenceEventService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "TLGeofenceEventService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/az;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/az;-><init>(Lcom/taplytics/sdk/TLGeofenceEventService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
