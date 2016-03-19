.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$12;->e:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Z)Z

    .line 242
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method
