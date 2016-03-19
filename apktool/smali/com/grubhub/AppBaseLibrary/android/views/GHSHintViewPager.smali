.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->h()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->h()V

    .line 25
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->setClipToPadding(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setHintMargins(I)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->getPaddingTop()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->getPaddingBottom()I

    move-result v1

    .line 42
    invoke-virtual {p0, p1, v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->setPadding(IIII)V

    .line 43
    div-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->setPageMargin(I)V

    .line 44
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1

    .prologue
    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSHintViewPager;->a:Z

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
