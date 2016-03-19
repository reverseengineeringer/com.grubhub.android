.class final Lcom/paypal/android/sdk/payments/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ck;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/a;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/a;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ck;->f(Lcom/paypal/android/sdk/payments/ck;)V

    return-void
.end method
