.class Lcom/braintreepayments/api/c$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/wallet/Cart;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lcom/braintreepayments/api/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c;Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/braintreepayments/api/c$10;->g:Lcom/braintreepayments/api/c;

    iput-object p2, p0, Lcom/braintreepayments/api/c$10;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/braintreepayments/api/c$10;->b:I

    iput-object p4, p0, Lcom/braintreepayments/api/c$10;->c:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p5, p0, Lcom/braintreepayments/api/c$10;->d:Z

    iput-boolean p6, p0, Lcom/braintreepayments/api/c$10;->e:Z

    iput-boolean p7, p0, Lcom/braintreepayments/api/c$10;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c$10;->g:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->c(Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/k;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/c$10;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/c$10;->b:I

    iget-object v3, p0, Lcom/braintreepayments/api/c$10;->c:Lcom/google/android/gms/wallet/Cart;

    iget-boolean v4, p0, Lcom/braintreepayments/api/c$10;->d:Z

    iget-boolean v5, p0, Lcom/braintreepayments/api/c$10;->e:Z

    iget-boolean v6, p0, Lcom/braintreepayments/api/c$10;->f:Z

    invoke-virtual/range {v0 .. v6}, Lcom/braintreepayments/api/k;->a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/j; {:try_start_0 .. :try_end_0} :catch_1

    .line 718
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    iget-object v1, p0, Lcom/braintreepayments/api/c$10;->g:Lcom/braintreepayments/api/c;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 715
    :catch_1
    move-exception v0

    .line 716
    iget-object v1, p0, Lcom/braintreepayments/api/c$10;->g:Lcom/braintreepayments/api/c;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
