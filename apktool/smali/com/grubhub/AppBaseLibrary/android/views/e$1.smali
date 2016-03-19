.class Lcom/grubhub/AppBaseLibrary/android/views/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/e;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/e;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/e;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/e$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/e$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->dismiss()V

    .line 106
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
