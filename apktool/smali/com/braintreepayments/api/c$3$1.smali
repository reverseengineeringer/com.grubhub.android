.class Lcom/braintreepayments/api/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c$3;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/j;

.field final synthetic b:Lcom/braintreepayments/api/c$3;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c$3;Lcom/braintreepayments/api/j;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/braintreepayments/api/c$3$1;->b:Lcom/braintreepayments/api/c$3;

    iput-object p2, p0, Lcom/braintreepayments/api/c$3$1;->a:Lcom/braintreepayments/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/braintreepayments/api/c$3$1;->a:Lcom/braintreepayments/api/j;

    iget-object v1, p0, Lcom/braintreepayments/api/c$3$1;->b:Lcom/braintreepayments/api/c$3;

    iget-object v1, v1, Lcom/braintreepayments/api/c$3;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/braintreepayments/api/j;->a(Ljava/util/List;)V

    .line 1122
    return-void
.end method
