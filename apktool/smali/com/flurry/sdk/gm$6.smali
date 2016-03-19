.class Lcom/flurry/sdk/gm$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gm;
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
.field final synthetic a:Lcom/flurry/sdk/gm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/flurry/sdk/gm$6;->a:Lcom/flurry/sdk/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Lcom/flurry/sdk/ja;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gm$6;->a(Lcom/flurry/sdk/ja;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ja;)V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/flurry/sdk/gm$4;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/ja;->c:Lcom/flurry/sdk/ja$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/ja$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/gm$6;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->b()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/gm$6;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->c()V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/gm$6;->a:Lcom/flurry/sdk/gm;

    iget-wide v2, p1, Lcom/flurry/sdk/ja;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/gm;->a(J)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/gm$6;->a:Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->d()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
