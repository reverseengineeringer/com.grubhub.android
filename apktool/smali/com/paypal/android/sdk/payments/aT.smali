.class final Lcom/paypal/android/sdk/payments/aT;
.super Landroid/text/style/URLSpan;


# instance fields
.field private a:Lcom/paypal/android/sdk/payments/bx;


# direct methods
.method constructor <init>(Landroid/text/style/URLSpan;Lcom/paypal/android/sdk/payments/bx;)V
    .locals 1

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/aT;->a:Lcom/paypal/android/sdk/payments/bx;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/aT;->a:Lcom/paypal/android/sdk/payments/bx;

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/bx;->a()V

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    return-void
.end method
