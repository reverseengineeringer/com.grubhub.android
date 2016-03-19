.class Lcom/grubhub/AppBaseLibrary/android/account/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/q;->d(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/q;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/q;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/q$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/q$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/q;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/q;->e:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z

    .line 770
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 778
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 765
    return-void
.end method
