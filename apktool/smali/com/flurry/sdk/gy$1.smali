.class Lcom/flurry/sdk/gy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy;
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
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Lcom/flurry/sdk/ja;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gy$1;->a(Lcom/flurry/sdk/ja;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ja;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/ja;->b:Lcom/flurry/sdk/iz;

    iget-object v1, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/flurry/sdk/gy$7;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/ja;->c:Lcom/flurry/sdk/ja$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/ja$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v1, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-object v2, p1, Lcom/flurry/sdk/ja;->b:Lcom/flurry/sdk/iz;

    iget-object v0, p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/iz;Landroid/content/Context;)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v1, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-object v0, p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gy;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v1, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-object v0, p1, Lcom/flurry/sdk/ja;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gy;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    invoke-static {v2}, Lcom/flurry/sdk/gy;->b(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hw;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->b(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 139
    iget-object v0, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    iget-wide v2, p1, Lcom/flurry/sdk/ja;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/gy;->a(J)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
