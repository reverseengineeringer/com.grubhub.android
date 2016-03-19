.class Lcom/braintreepayments/cardform/view/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/cardform/view/c;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/cardform/view/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/cardform/view/c;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/c$3;->a:Lcom/braintreepayments/cardform/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/c$3;->a:Lcom/braintreepayments/cardform/view/c;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/braintreepayments/cardform/view/c;->b(Lcom/braintreepayments/cardform/view/c;I)I

    .line 100
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c$3;->a:Lcom/braintreepayments/cardform/view/c;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/c;->invalidate()V

    .line 101
    return-void
.end method
