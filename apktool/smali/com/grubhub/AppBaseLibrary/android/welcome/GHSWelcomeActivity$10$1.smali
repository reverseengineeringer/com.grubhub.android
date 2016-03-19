.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Z)V

    .line 335
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Z)V

    .line 329
    return-void
.end method
