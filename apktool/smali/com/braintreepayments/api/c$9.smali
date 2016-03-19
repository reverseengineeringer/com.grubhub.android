.class Lcom/braintreepayments/api/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->a(ILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/braintreepayments/api/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    iput-object p2, p0, Lcom/braintreepayments/api/c$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->c(Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/k;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/c$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/k;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v0

    .line 622
    const-string v1, "venmo-app"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/PaymentMethod;->f(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 624
    iget-object v1, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 625
    iget-object v0, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    iget-object v1, p0, Lcom/braintreepayments/api/c$9;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    const-string v1, "venmo-app.success"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_2

    .line 634
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    iget-object v1, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 629
    :catch_1
    move-exception v0

    .line 630
    iget-object v1, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 631
    :catch_2
    move-exception v0

    .line 632
    iget-object v1, p0, Lcom/braintreepayments/api/c$9;->b:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
