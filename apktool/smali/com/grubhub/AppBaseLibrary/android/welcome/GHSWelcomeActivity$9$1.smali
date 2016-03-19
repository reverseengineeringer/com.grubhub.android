.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$1;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$1;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$1;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Z)V

    .line 268
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$1;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Z)V

    .line 262
    return-void
.end method
