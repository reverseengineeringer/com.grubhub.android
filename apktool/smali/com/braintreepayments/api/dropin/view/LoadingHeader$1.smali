.class Lcom/braintreepayments/api/dropin/view/LoadingHeader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setError(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/dropin/view/LoadingHeader;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/dropin/view/LoadingHeader;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$1;->a:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$1;->a:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-static {v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->a(Lcom/braintreepayments/api/dropin/view/LoadingHeader;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    return-void
.end method
