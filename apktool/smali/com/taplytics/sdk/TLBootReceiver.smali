.class public Lcom/taplytics/sdk/TLBootReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/am;

    invoke-direct {v1, p0, p2}, Lcom/taplytics/am;-><init>(Lcom/taplytics/sdk/TLBootReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
