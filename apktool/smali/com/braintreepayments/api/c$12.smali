.class Lcom/braintreepayments/api/c$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/models/l;)Ljava/util/concurrent/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/models/l;

.field final synthetic b:Lcom/braintreepayments/api/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/l;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/braintreepayments/api/c$12;->b:Lcom/braintreepayments/api/c;

    iput-object p2, p0, Lcom/braintreepayments/api/c$12;->a:Lcom/braintreepayments/api/models/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c$12;->b:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->c(Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/k;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/c$12;->a:Lcom/braintreepayments/api/models/l;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/k;->a(Lcom/braintreepayments/api/models/l;)Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v0

    .line 990
    iget-object v1, p0, Lcom/braintreepayments/api/c$12;->b:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 992
    iget-object v1, p0, Lcom/braintreepayments/api/c$12;->b:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 993
    iget-object v1, p0, Lcom/braintreepayments/api/c$12;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/PaymentMethod;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_1

    .line 999
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    iget-object v1, p0, Lcom/braintreepayments/api/c$12;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 996
    :catch_1
    move-exception v0

    .line 997
    iget-object v1, p0, Lcom/braintreepayments/api/c$12;->b:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
