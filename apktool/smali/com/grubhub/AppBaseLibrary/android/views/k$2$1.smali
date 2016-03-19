.class Lcom/grubhub/AppBaseLibrary/android/views/k$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/k$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/k$2;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/k$2;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/k$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Lcom/grubhub/AppBaseLibrary/android/views/k;)Lcom/grubhub/AppBaseLibrary/android/views/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/k$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/k$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/k$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/k;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/k;->a(Lcom/grubhub/AppBaseLibrary/android/views/k;)Lcom/grubhub/AppBaseLibrary/android/views/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/l;->b()V

    .line 90
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
