.class final Lcom/paypal/android/sdk/payments/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bs;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bs;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/bs;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/am;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/am;Z)V

    return-void
.end method
