.class Lcom/braintreepayments/api/c$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c$4;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/h;

.field final synthetic b:Lcom/braintreepayments/api/c$4;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c$4;Lcom/braintreepayments/api/h;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/braintreepayments/api/c$4$1;->b:Lcom/braintreepayments/api/c$4;

    iput-object p2, p0, Lcom/braintreepayments/api/c$4$1;->a:Lcom/braintreepayments/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/braintreepayments/api/c$4$1;->a:Lcom/braintreepayments/api/h;

    iget-object v1, p0, Lcom/braintreepayments/api/c$4$1;->b:Lcom/braintreepayments/api/c$4;

    iget-object v1, v1, Lcom/braintreepayments/api/c$4;->a:Lcom/braintreepayments/api/models/PaymentMethod;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/h;->a(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 1143
    return-void
.end method
