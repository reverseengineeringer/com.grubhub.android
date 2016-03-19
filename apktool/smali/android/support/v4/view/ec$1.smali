.class final Landroid/support/v4/view/ec$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ec;->a(Landroid/view/View;Landroid/support/v4/view/ef;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ef;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ef;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v4/view/ec$1;->a:Landroid/support/v4/view/ef;

    iput-object p2, p0, Landroid/support/v4/view/ec$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v4/view/ec$1;->a:Landroid/support/v4/view/ef;

    iget-object v1, p0, Landroid/support/v4/view/ec$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ef;->a(Landroid/view/View;)V

    .line 29
    return-void
.end method
