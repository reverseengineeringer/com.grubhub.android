.class Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braintreepayments/api/e;


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
    .line 111
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 3

    .prologue
    .line 122
    const-string v0, "Unable to retrieve PayPal payment nonce."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrainTree Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 126
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 114
    const-string v0, "Unable to retrieve PayPal payment nonce."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrainTree Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1$2;->a:Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 118
    :cond_0
    return-void
.end method
