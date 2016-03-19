.class Lcom/braintreepayments/api/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/wallet/Cart;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/braintreepayments/api/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c;Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/braintreepayments/api/c$11;->e:Lcom/braintreepayments/api/c;

    iput-object p2, p0, Lcom/braintreepayments/api/c$11;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/braintreepayments/api/c$11;->b:I

    iput-object p4, p0, Lcom/braintreepayments/api/c$11;->c:Lcom/google/android/gms/wallet/Cart;

    iput-object p5, p0, Lcom/braintreepayments/api/c$11;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c$11;->e:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->c(Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/k;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/c$11;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/c$11;->b:I

    iget-object v3, p0, Lcom/braintreepayments/api/c$11;->c:Lcom/google/android/gms/wallet/Cart;

    iget-object v4, p0, Lcom/braintreepayments/api/c$11;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/braintreepayments/api/k;->a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    iget-object v1, p0, Lcom/braintreepayments/api/c$11;->e:Lcom/braintreepayments/api/c;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
