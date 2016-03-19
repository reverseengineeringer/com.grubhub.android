.class Lcom/taplytics/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/es;


# instance fields
.field final synthetic a:Lcom/taplytics/aq;


# direct methods
.method constructor <init>(Lcom/taplytics/aq;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/taplytics/ar;->a:Lcom/taplytics/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taplytics/ar;->a:Lcom/taplytics/aq;

    iget-object v0, v0, Lcom/taplytics/aq;->a:Lcom/taplytics/am;

    iget-object v0, v0, Lcom/taplytics/am;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/taplytics/sdk/TLGcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 38
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taplytics/ar;->a:Lcom/taplytics/aq;

    iget-object v0, v0, Lcom/taplytics/aq;->a:Lcom/taplytics/am;

    iget-object v0, v0, Lcom/taplytics/am;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/taplytics/sdk/TLGcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 43
    return-void
.end method
