.class Lcom/grubhub/AppBaseLibrary/android/views/k$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/k$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/k$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/k$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/k$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Lcom/grubhub/AppBaseLibrary/android/views/k;)Lcom/grubhub/AppBaseLibrary/android/views/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/k$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Lcom/grubhub/AppBaseLibrary/android/views/k;)Lcom/grubhub/AppBaseLibrary/android/views/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/l;->a()V

    .line 64
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
