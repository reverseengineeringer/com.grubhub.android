.class final Landroid/support/v4/view/eb$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/eb;->a(Landroid/view/View;Landroid/support/v4/view/ed;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ed;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ed;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/v4/view/eb$1;->a:Landroid/support/v4/view/ed;

    iput-object p2, p0, Landroid/support/v4/view/eb$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/view/eb$1;->a:Landroid/support/v4/view/ed;

    iget-object v1, p0, Landroid/support/v4/view/eb$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ed;->c(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/view/eb$1;->a:Landroid/support/v4/view/ed;

    iget-object v1, p0, Landroid/support/v4/view/eb$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ed;->b(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/view/eb$1;->a:Landroid/support/v4/view/ed;

    iget-object v1, p0, Landroid/support/v4/view/eb$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ed;->a(Landroid/view/View;)V

    .line 53
    return-void
.end method
