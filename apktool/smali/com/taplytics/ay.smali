.class Lcom/taplytics/ay;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/aw;


# direct methods
.method constructor <init>(Lcom/taplytics/aw;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/taplytics/ay;->a:Lcom/taplytics/aw;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to fetch TLProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/taplytics/ay;->a:Lcom/taplytics/aw;

    iget-object v0, v0, Lcom/taplytics/aw;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/taplytics/sdk/TLGcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 54
    return-void

    .line 51
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/taplytics/ay;->a:Lcom/taplytics/aw;

    iget-object v0, v0, Lcom/taplytics/aw;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/taplytics/sdk/TLGcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 47
    return-void
.end method
