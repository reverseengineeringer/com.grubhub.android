.class Lcom/braintreepayments/api/c$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c$7;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/e;

.field final synthetic b:Lcom/braintreepayments/api/c$7;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c$7;Lcom/braintreepayments/api/e;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/braintreepayments/api/c$7$1;->b:Lcom/braintreepayments/api/c$7;

    iput-object p2, p0, Lcom/braintreepayments/api/c$7$1;->a:Lcom/braintreepayments/api/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/braintreepayments/api/c$7$1;->a:Lcom/braintreepayments/api/e;

    iget-object v1, p0, Lcom/braintreepayments/api/c$7$1;->b:Lcom/braintreepayments/api/c$7;

    iget-object v1, v1, Lcom/braintreepayments/api/c$7;->a:Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/e;->a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    .line 1206
    return-void
.end method
