.class Lcom/braintreepayments/cardform/view/c$2;
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
    .line 77
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/c$2;->a:Lcom/braintreepayments/cardform/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/c$2;->a:Lcom/braintreepayments/cardform/view/c;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/braintreepayments/cardform/view/c;->a(Lcom/braintreepayments/cardform/view/c;I)I

    .line 81
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/c$2;->a:Lcom/braintreepayments/cardform/view/c;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/c;->invalidate()V

    .line 82
    return-void
.end method
