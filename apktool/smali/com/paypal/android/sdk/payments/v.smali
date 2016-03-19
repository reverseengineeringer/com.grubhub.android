.class final Lcom/paypal/android/sdk/payments/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/u;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/u;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/u;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/u;->c:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-static {v0, p2}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Lcom/paypal/android/sdk/payments/LoginActivity;I)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/u;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/u;->a:Lcom/paypal/android/sdk/eq;

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/eq;->a(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/u;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/u;->c:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->e(Lcom/paypal/android/sdk/payments/LoginActivity;)Lcom/paypal/android/sdk/ep;

    move-result-object v0

    iget-object v1, v0, Lcom/paypal/android/sdk/ep;->o:Lcom/paypal/android/sdk/er;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/v;->a:Lcom/paypal/android/sdk/payments/u;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/u;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/er;->a(Ljava/lang/String;)V

    return-void
.end method
