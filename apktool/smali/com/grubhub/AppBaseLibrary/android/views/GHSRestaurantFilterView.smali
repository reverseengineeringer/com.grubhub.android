.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;
.super Landroid/support/v4/app/FragmentTabHost;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

.field private b:[I

.field private c:J

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->b:[I

    .line 35
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->b:[I

    .line 40
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a()V

    .line 41
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->setClickable(Z)V

    .line 58
    return-void
.end method

.method private a(JF)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 107
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->e:F

    cmpg-float v1, v1, p3

    if-gez v1, :cond_0

    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->c:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->c:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->e:F

    sub-float v1, p3, v1

    const/high16 v2, 0x43160000    # 150.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->e:F

    .line 111
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 116
    invoke-direct {p0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a(Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method private a(Landroid/view/ViewGroup;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 134
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 141
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 145
    iget v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->d:F

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->b:[I

    aget v6, v6, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 146
    iget v6, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->e:F

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->b:[I

    aget v7, v7, v3

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 149
    aget v7, v4, v2

    if-lt v5, v7, :cond_2

    aget v7, v4, v2

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v5, v7, :cond_2

    aget v5, v4, v3

    if-lt v6, v5, :cond_2

    aget v4, v4, v3

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v6, v4, :cond_2

    move v4, v3

    .line 157
    :goto_2
    if-eqz v4, :cond_3

    move v2, v3

    .line 158
    goto :goto_0

    :cond_2
    move v4, v2

    .line 153
    goto :goto_2

    .line 163
    :cond_3
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    .line 164
    goto :goto_0

    .line 134
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d()V

    .line 91
    const/4 v0, 0x1

    .line 94
    :goto_1
    return v0

    .line 70
    :pswitch_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->c:J

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->d:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->e:F

    .line 75
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->b:[I

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->getLocationOnScreen([I)V

    goto :goto_0

    .line 80
    :pswitch_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 84
    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a(JF)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFilterFragment(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantFilterView;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    .line 50
    return-void
.end method
