.class Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$1;->b:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$1;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
