.class final Lcom/paypal/android/sdk/payments/bv;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bu;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bv;->a:Lcom/paypal/android/sdk/payments/bu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bv;->a:Lcom/paypal/android/sdk/payments/bu;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    return-void
.end method
