.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->l()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 311
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->b(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V

    .line 319
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const v1, 0x7f0f00a5

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const v2, 0x7f0f0099

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const v3, 0x7f0f00a0

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const v4, 0x7f04002e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 325
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;

    invoke-direct {v4, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 343
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const v5, 0x7f040030

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 344
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$2;

    invoke-direct {v5, p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 361
    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 366
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$10;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const-string v1, "onboarding 1 start"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->a(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
