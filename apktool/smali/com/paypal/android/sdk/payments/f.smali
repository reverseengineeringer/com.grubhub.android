.class final Lcom/paypal/android/sdk/payments/f;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/e;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/f;->a:Lcom/paypal/android/sdk/payments/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/f;->a:Lcom/paypal/android/sdk/payments/e;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/e;->a(Lcom/paypal/android/sdk/payments/e;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
