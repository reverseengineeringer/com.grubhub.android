.class public Lcom/grubhub/AppBaseLibrary/android/views/e;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/e;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 40
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/e;->setCanceledOnTouchOutside(Z)V

    .line 44
    const v0, 0x7f0f00ed

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 88
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 89
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 90
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 92
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 94
    const-wide/16 v2, 0x157c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 95
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 97
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/e$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/e$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/e;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 114
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 115
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 116
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 117
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 119
    const v0, 0x7f0f00ed

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    return-void
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 61
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 62
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 67
    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 69
    const v3, 0x7f0f00ee

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 70
    const v4, 0x7f0b000d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 71
    int-to-float v4, p1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    sub-float v1, v4, v1

    div-float v4, v0, v5

    sub-float/2addr v1, v4

    .line 75
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 76
    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    sub-float v4, v2, v0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 78
    mul-float/2addr v0, v5

    sub-float v0, v2, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/e;->dismiss()V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
