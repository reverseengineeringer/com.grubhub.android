.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/grubhub/AppBaseLibrary/android/views/x;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->f:Landroid/view/View$OnClickListener;

    .line 55
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->f:Landroid/view/View$OnClickListener;

    .line 60
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->a()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->f:Landroid/view/View$OnClickListener;

    .line 65
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->a()V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->setOrientation(I)V

    .line 73
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->setGravity(I)V

    .line 75
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->o()F

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->c:I

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->removeAllViews()V

    .line 123
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->b:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    move v0, v1

    .line 127
    :goto_0
    if-ge v0, p2, :cond_0

    .line 128
    add-int/lit8 v2, v0, 0x1

    .line 129
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 130
    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    const v4, 0x7f0f0007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 132
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0801f8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 139
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->addView(Landroid/view/View;)V

    .line 143
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public getSelectedRating()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->a:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->getMeasuredWidth()I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int v2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->c:I

    if-le v2, v1, :cond_0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->c:I

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 179
    :cond_1
    return-void
.end method

.method public setMaxRatingViewHeight(I)V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->o()F

    move-result v0

    if-lez p1, :cond_0

    :goto_0
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->c:I

    .line 154
    return-void

    .line 153
    :cond_0
    const/16 p1, 0x30

    goto :goto_0
.end method

.method public setOnRatingSelectedListener(Lcom/grubhub/AppBaseLibrary/android/views/x;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->e:Lcom/grubhub/AppBaseLibrary/android/views/x;

    .line 163
    return-void
.end method

.method public setSelectedRating(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 95
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->b:I

    if-lt v0, v1, :cond_3

    .line 96
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->a:I

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 98
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 101
    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->e:Lcom/grubhub/AppBaseLibrary/android/views/x;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewRatingView;->e:Lcom/grubhub/AppBaseLibrary/android/views/x;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/x;->a(I)V

    .line 110
    :cond_3
    return-void
.end method
