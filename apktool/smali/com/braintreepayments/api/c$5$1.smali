.class Lcom/braintreepayments/api/c$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c$5;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/i;

.field final synthetic b:Lcom/braintreepayments/api/c$5;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c$5;Lcom/braintreepayments/api/i;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/braintreepayments/api/c$5$1;->b:Lcom/braintreepayments/api/c$5;

    iput-object p2, p0, Lcom/braintreepayments/api/c$5$1;->a:Lcom/braintreepayments/api/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/braintreepayments/api/c$5$1;->a:Lcom/braintreepayments/api/i;

    iget-object v1, p0, Lcom/braintreepayments/api/c$5$1;->b:Lcom/braintreepayments/api/c$5;

    iget-object v1, v1, Lcom/braintreepayments/api/c$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/i;->a(Ljava/lang/String;)V

    .line 1164
    return-void
.end method
