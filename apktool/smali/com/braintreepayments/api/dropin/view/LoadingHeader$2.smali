.class Lcom/braintreepayments/api/dropin/view/LoadingHeader$2;
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
    .line 124
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$2;->a:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$2;->a:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-static {v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->b(Lcom/braintreepayments/api/dropin/view/LoadingHeader;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
