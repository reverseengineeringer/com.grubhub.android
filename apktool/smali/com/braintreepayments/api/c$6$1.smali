.class Lcom/braintreepayments/api/c$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c$6;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/e;

.field final synthetic b:Lcom/braintreepayments/api/c$6;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c$6;Lcom/braintreepayments/api/e;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/braintreepayments/api/c$6$1;->b:Lcom/braintreepayments/api/c$6;

    iput-object p2, p0, Lcom/braintreepayments/api/c$6$1;->a:Lcom/braintreepayments/api/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/braintreepayments/api/c$6$1;->a:Lcom/braintreepayments/api/e;

    iget-object v1, p0, Lcom/braintreepayments/api/c$6$1;->b:Lcom/braintreepayments/api/c$6;

    iget-object v1, v1, Lcom/braintreepayments/api/c$6;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/e;->a(Ljava/lang/Throwable;)V

    .line 1185
    return-void
.end method
