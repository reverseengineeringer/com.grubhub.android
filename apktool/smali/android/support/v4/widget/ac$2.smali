.class Landroid/support/v4/widget/ac$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/ac;->b()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ad;

.field final synthetic b:Landroid/support/v4/widget/ac;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ac;Landroid/support/v4/widget/ad;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Landroid/support/v4/widget/ac$2;->b:Landroid/support/v4/widget/ac;

    iput-object p2, p0, Landroid/support/v4/widget/ac$2;->a:Landroid/support/v4/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->a:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->l()V

    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->a:Landroid/support/v4/widget/ad;

    invoke-virtual {v0}, Landroid/support/v4/widget/ad;->b()V

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->a:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac$2;->a:Landroid/support/v4/widget/ad;

    invoke-virtual {v1}, Landroid/support/v4/widget/ad;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ad;->b(F)V

    .line 436
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->b:Landroid/support/v4/widget/ac;

    iget-boolean v0, v0, Landroid/support/v4/widget/ac;->a:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->b:Landroid/support/v4/widget/ac;

    iput-boolean v2, v0, Landroid/support/v4/widget/ac;->a:Z

    .line 440
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->a:Landroid/support/v4/widget/ad;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ad;->a(Z)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->b:Landroid/support/v4/widget/ac;

    iget-object v1, p0, Landroid/support/v4/widget/ac$2;->b:Landroid/support/v4/widget/ac;

    invoke-static {v1}, Landroid/support/v4/widget/ac;->a(Landroid/support/v4/widget/ac;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/widget/ac;->a(Landroid/support/v4/widget/ac;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v4/widget/ac$2;->b:Landroid/support/v4/widget/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/ac;->a(Landroid/support/v4/widget/ac;F)F

    .line 424
    return-void
.end method
