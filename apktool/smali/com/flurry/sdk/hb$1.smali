.class Lcom/flurry/sdk/hb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hw",
        "<",
        "Lcom/flurry/sdk/ja;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hb;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/sdk/hb$1;->a:Lcom/flurry/sdk/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lcom/flurry/sdk/ja;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/hb$1;->a(Lcom/flurry/sdk/ja;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ja;)V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/flurry/sdk/hb$4;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/ja;->c:Lcom/flurry/sdk/ja$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/ja$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/hb$1;->a:Lcom/flurry/sdk/hb;

    invoke-virtual {v0}, Lcom/flurry/sdk/hb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/hb$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/hb$1$1;-><init>(Lcom/flurry/sdk/hb$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
