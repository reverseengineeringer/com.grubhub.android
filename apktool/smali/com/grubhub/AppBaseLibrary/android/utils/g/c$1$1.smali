.class Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braintreepayments/api/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->a(ZLcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 4

    .prologue
    .line 100
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;->getPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "Unable to retrieve PayPal payment nonce."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0
.end method
