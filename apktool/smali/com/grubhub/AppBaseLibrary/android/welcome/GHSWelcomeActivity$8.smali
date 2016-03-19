.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;->c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;->c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$8;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 228
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method
