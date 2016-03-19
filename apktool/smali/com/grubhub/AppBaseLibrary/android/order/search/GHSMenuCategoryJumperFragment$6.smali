.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;I)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/c;

    move-result-object v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;->a:I

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/c;->a(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->f()V

    .line 170
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method
