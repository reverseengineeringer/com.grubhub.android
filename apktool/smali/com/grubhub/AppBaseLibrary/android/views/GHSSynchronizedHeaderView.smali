.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 133
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 138
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/AbsListView;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1e

    const-wide/16 v4, 0x64

    const/4 v2, 0x0

    .line 150
    if-nez p2, :cond_3

    .line 151
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->e:I

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 158
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->clearAnimation()V

    .line 183
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public a(Landroid/widget/AbsListView;III)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_b

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 59
    :goto_0
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->d:I

    sub-int v6, v0, v3

    .line 60
    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->d:I

    .line 62
    const/4 v3, 0x0

    .line 63
    if-gez v6, :cond_1

    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->e:I

    if-lt v5, v0, :cond_1

    move v4, v2

    .line 64
    :goto_1
    if-lez v6, :cond_2

    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->e:I

    if-gt v5, v0, :cond_2

    move v0, v2

    .line 66
    :goto_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 72
    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    .line 76
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    :goto_3
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->setTranslationY(F)V

    .line 121
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 126
    :cond_0
    iput v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->e:I

    .line 127
    return-void

    :cond_1
    move v4, v1

    .line 63
    goto :goto_1

    :cond_2
    move v0, v1

    .line 64
    goto :goto_2

    .line 78
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_5

    .line 79
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 87
    :cond_5
    if-eqz v0, :cond_a

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 94
    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    .line 95
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    int-to-float v2, v6

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 98
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 103
    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_a

    .line 104
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    int-to-float v2, v6

    add-float/2addr v0, v2

    cmpg-float v0, v0, v7

    if-gez v0, :cond_9

    .line 107
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 110
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    move-object v0, v3

    goto/16 :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public setAlternateHeader(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->c:Landroid/view/View;

    .line 197
    return-void
.end method

.method public setSyncView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSynchronizedHeaderView;->b:Landroid/view/View;

    .line 207
    return-void
.end method
