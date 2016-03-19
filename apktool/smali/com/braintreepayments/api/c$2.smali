.class Lcom/braintreepayments/api/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/braintreepayments/api/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/braintreepayments/api/c$2;->c:Lcom/braintreepayments/api/c;

    iput-object p2, p0, Lcom/braintreepayments/api/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/braintreepayments/api/c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/braintreepayments/api/c$2;->c:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->c(Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/k;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/c$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/braintreepayments/api/c$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/braintreepayments/api/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return-void
.end method
