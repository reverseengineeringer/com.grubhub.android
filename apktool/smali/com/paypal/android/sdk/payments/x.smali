.class final Lcom/paypal/android/sdk/payments/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ap;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/w;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/w;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/x;->a:Lcom/paypal/android/sdk/payments/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/x;->a:Lcom/paypal/android/sdk/payments/w;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/w;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->a()V

    return-void
.end method
