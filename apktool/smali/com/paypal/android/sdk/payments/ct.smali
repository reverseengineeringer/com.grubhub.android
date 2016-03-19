.class final Lcom/paypal/android/sdk/payments/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ap;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/cs;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/cs;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/cs;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/ck;->d(Lcom/paypal/android/sdk/payments/ck;)V

    return-void
.end method
