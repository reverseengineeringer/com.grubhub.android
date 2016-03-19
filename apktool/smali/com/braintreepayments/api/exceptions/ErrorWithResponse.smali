.class public final Lcom/braintreepayments/api/exceptions/ErrorWithResponse;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput p1, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->a:I

    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->c:Ljava/util/List;

    .line 34
    invoke-virtual {p2}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->b:Ljava/lang/String;

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->c:Ljava/util/List;

    .line 37
    const-string v0, "Parsing error response failed"

    iput-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    invoke-direct {p0, p1, v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;-><init>(ILcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    .line 71
    invoke-static {v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorWithResponse ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
