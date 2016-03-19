.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$2;
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

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$2;->c:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$9$2;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method
