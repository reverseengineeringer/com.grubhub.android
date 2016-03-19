.class Landroid/support/v7/app/j;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/g;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1755
    iput-object p1, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/g;

    .line 1756
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1757
    return-void
.end method

.method private a(II)Z
    .locals 1

    .prologue
    const/4 v0, -0x5

    .line 1784
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/j;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/j;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/g;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1767
    if-nez v0, :cond_0

    .line 1768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1770
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/g;->d(Landroid/support/v7/app/g;I)V

    .line 1772
    const/4 v0, 0x1

    .line 1775
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 1780
    invoke-virtual {p0}, Landroid/support/v7/app/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/av;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1781
    return-void
.end method
