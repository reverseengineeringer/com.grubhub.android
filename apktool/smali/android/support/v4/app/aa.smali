.class Landroid/support/v4/app/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Z

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aa;->a:Z

    .line 420
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/aa;->b:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 438
    iget-boolean v0, p0, Landroid/support/v4/app/aa;->a:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/bp;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 441
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/app/z;->a(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/aa;->a:Z

    .line 430
    iget-boolean v0, p0, Landroid/support/v4/app/aa;->a:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/bp;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 433
    :cond_0
    return-void
.end method
