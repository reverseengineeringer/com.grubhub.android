.class Lcom/flurry/sdk/hf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hf;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hw",
        "<",
        "Lcom/flurry/sdk/jh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hf;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/hf$1;->a:Lcom/flurry/sdk/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/flurry/sdk/jh;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hf$1;->a(Lcom/flurry/sdk/jh;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/jh;)V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/hf$1;->a:Lcom/flurry/sdk/hf;

    invoke-static {v0}, Lcom/flurry/sdk/hf;->a(Lcom/flurry/sdk/hf;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/hf$1;->a:Lcom/flurry/sdk/hf;

    invoke-static {v0}, Lcom/flurry/sdk/hf;->a(Lcom/flurry/sdk/hf;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 67
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/hf;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/hf$1;->a:Lcom/flurry/sdk/hf;

    invoke-static {v0}, Lcom/flurry/sdk/hf;->b(Lcom/flurry/sdk/hf;)V

    .line 70
    :cond_0
    return-void
.end method
