.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bd;
.implements Landroid/support/v4/view/bf;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final w:[I


# instance fields
.field private A:Landroid/support/v4/widget/ac;

.field private B:Landroid/view/animation/Animation;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private G:F

.field private H:Z

.field private I:I

.field private J:I

.field private K:Z

.field private L:Landroid/view/animation/Animation$AnimationListener;

.field private final M:Landroid/view/animation/Animation;

.field private final N:Landroid/view/animation/Animation;

.field private final O:Landroid/view/animation/Animation;

.field protected a:I

.field protected b:I

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/widget/at;

.field private f:Z

.field private g:I

.field private h:F

.field private i:F

.field private final j:Landroid/support/v4/view/bg;

.field private final k:Landroid/support/v4/view/be;

.field private final l:[I

.field private m:I

.field private n:I

.field private o:Z

.field private p:F

.field private q:F

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private final v:Landroid/view/animation/DecelerateInterpolator;

.field private x:Landroid/support/v4/widget/d;

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 104
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    .line 116
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:Z

    .line 121
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    .line 134
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    .line 165
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation$AnimationListener;

    .line 1052
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    .line 1069
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->N:Landroid/view/animation/Animation;

    .line 1093
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    .line 286
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    .line 291
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 292
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/DecelerateInterpolator;

    .line 294
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 296
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 299
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:I

    .line 300
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    .line 302
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    .line 303
    invoke-static {p0, v3}, Landroid/support/v4/view/bp;->a(Landroid/view/ViewGroup;Z)V

    .line 305
    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    .line 306
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 307
    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bg;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/bg;

    .line 309
    new-instance v0, Landroid/support/v4/view/be;

    invoke-direct {v0, p0}, Landroid/support/v4/view/be;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    .line 310
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 311
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 707
    invoke-static {p1, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 708
    if-gez v0, :cond_0

    .line 709
    const/high16 v0, -0x40800000    # -1.0f

    .line 711
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method private a(II)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 449
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    :goto_0
    return-object v0

    .line 452
    :cond_0
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 460
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 462
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 463
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 464
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    .line 465
    goto :goto_0
.end method

.method private a(F)V
    .locals 14

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ac;->a(Z)V

    .line 865
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v0, p1, v0

    .line 867
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 868
    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    .line 869
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    sub-float v3, v0, v3

    .line 870
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 872
    :goto_0
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 874
    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v11

    .line 876
    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    .line 878
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    .line 880
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 883
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-nez v1, :cond_1

    .line 884
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-static {v1, v10}, Landroid/support/v4/view/bp;->d(Landroid/view/View;F)V

    .line 885
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-static {v1, v10}, Landroid/support/v4/view/bp;->e(Landroid/view/View;F)V

    .line 887
    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    .line 888
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-eqz v1, :cond_2

    .line 889
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    div-float v1, p1, v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 891
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v1}, Landroid/support/v4/widget/ac;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 894
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->d()V

    .line 896
    :cond_3
    mul-float v1, v2, v13

    .line 897
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/ac;->a(FF)V

    .line 898
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ac;->a(F)V

    .line 905
    :cond_4
    :goto_1
    const/high16 v1, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 906
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ac;->b(F)V

    .line 907
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 908
    return-void

    .line 870
    :cond_5
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    goto/16 :goto_0

    .line 900
    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v1}, Landroid/support/v4/widget/ac;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 902
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->e()V

    goto :goto_1
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 1012
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1013
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1014
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1015
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1016
    if-eqz p2, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1019
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 1020
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1021
    return-void
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->bringToFront()V

    .line 1126
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->offsetTopAndBottom(I)V

    .line 1127
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 1128
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1129
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 1131
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 1134
    invoke-static {p1}, Landroid/support/v4/view/aw;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1135
    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1136
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    if-ne v1, v2, :cond_0

    .line 1139
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1140
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    .line 1142
    :cond_0
    return-void

    .line 1139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ac;->setAlpha(I)V

    .line 385
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/view/animation/Animation;

    .line 391
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 392
    if-eqz p1, :cond_1

    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 395
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_0

    .line 414
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Z

    .line 415
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    .line 416
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 417
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eqz v0, :cond_1

    .line 418
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    return v0
.end method

.method private a(Landroid/view/animation/Animation;)Z
    .locals 1

    .prologue
    .line 860
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    return p1
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/ac;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, -0x50506

    .line 329
    new-instance v0, Landroid/support/v4/widget/d;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/widget/d;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    .line 330
    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/ac;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    .line 331
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/ac;->b(I)V

    .line 332
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method private b(F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 911
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 912
    invoke-direct {p0, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    .line 941
    :goto_0
    return-void

    .line 915
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 916
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/ac;->a(FF)V

    .line 917
    const/4 v0, 0x0

    .line 918
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-nez v1, :cond_1

    .line 919
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 938
    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 939
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ac;->a(Z)V

    goto :goto_0
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 1036
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    if-eqz v0, :cond_0

    .line 1038
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1050
    :goto_0
    return-void

    .line 1040
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1041
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1042
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1043
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1044
    if-eqz p2, :cond_1

    .line 1045
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1047
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 1048
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    return-void
.end method

.method private b(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 426
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    .line 432
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 436
    return-void
.end method

.method private c(F)V
    .locals 3

    .prologue
    .line 1087
    .line 1088
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1089
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1090
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 1091
    return-void
.end method

.method private c(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 1102
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:I

    .line 1103
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0}, Landroid/support/v4/widget/ac;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:F

    .line 1108
    :goto_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$9;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$9;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    .line 1116
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1117
    if-eqz p2, :cond_0

    .line 1118
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1120
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 1121
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1122
    return-void

    .line 1106
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-static {v0}, Landroid/support/v4/view/bp;->k(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:F

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/at;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/at;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0}, Landroid/support/v4/widget/ac;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    .line 440
    return-void
.end method

.method static synthetic e(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0}, Landroid/support/v4/widget/ac;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    .line 444
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 544
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 545
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 546
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 552
    :cond_0
    return-void

    .line 544
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    return v0
.end method

.method static synthetic h(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    return v0
.end method

.method static synthetic j(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:F

    return v0
.end method

.method private setAnimationProgress(F)V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/bp;->d(Landroid/view/View;F)V

    .line 408
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/bp;->e(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 203
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ac;->setAlpha(I)V

    .line 204
    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 2

    .prologue
    .line 221
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Z

    .line 222
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 223
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    .line 224
    int-to-float v0, p3

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->invalidate()V

    .line 227
    return-void
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_5

    .line 634
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 636
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 643
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 636
    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/bp;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    move v0, v2

    goto :goto_0

    .line 643
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/bp;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/be;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/be;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/be;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/be;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    if-gez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return p2

    .line 316
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 318
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    goto :goto_0

    .line 319
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    if-lt p2, v0, :cond_0

    .line 321
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/bg;

    invoke-virtual {v0}, Landroid/support/v4/view/bg;->a()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0}, Landroid/support/v4/view/be;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0}, Landroid/support/v4/view/be;->a()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 649
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    .line 651
    invoke-static {p1}, Landroid/support/v4/view/aw;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 653
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 654
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eqz v2, :cond_2

    .line 703
    :cond_1
    :goto_0
    return v0

    .line 662
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 703
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    goto :goto_0

    .line 664
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 665
    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    .line 666
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    .line 667
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 668
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 671
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:F

    goto :goto_1

    .line 675
    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    if-ne v1, v4, :cond_4

    .line 676
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_4
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 681
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 684
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:F

    sub-float v0, v1, v0

    .line 685
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    if-nez v0, :cond_3

    .line 686
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    .line 687
    iput-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    .line 688
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ac;->setAlpha(I)V

    goto :goto_1

    .line 693
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 698
    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    .line 699
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    goto :goto_1

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 566
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    .line 567
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v2, :cond_2

    .line 571
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    .line 573
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    .line 577
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    .line 578
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    .line 579
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 580
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 581
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 582
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getMeasuredWidth()I

    move-result v1

    .line 583
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v2

    .line 584
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/d;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 590
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 591
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 592
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    .line 594
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-nez v0, :cond_2

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 601
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/d;->measure(II)V

    .line 603
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:Z

    if-nez v0, :cond_3

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:Z

    .line 605
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    .line 607
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    .line 609
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 610
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    if-ne v1, v2, :cond_4

    .line 611
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:I

    goto :goto_0

    .line 609
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 750
    if-lez p3, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 751
    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 752
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    .line 753
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 759
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 763
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:[I

    .line 764
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 766
    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    .line 768
    :cond_1
    return-void

    .line 755
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 756
    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 791
    if-gez p5, :cond_0

    .line 792
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 793
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 794
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    .line 797
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 798
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/bg;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/bg;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 744
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 733
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 734
    const/4 v0, 0x1

    .line 736
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 777
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:Landroid/support/v4/view/bg;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/bg;->a(Landroid/view/View;)V

    .line 780
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 781
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 782
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:F

    .line 785
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 786
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 945
    invoke-static {p1}, Landroid/support/v4/view/aw;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 947
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 948
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    .line 951
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1008
    :cond_1
    :goto_0
    return v0

    .line 956
    :cond_2
    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v0, v1

    .line 1008
    goto :goto_0

    .line 958
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    .line 959
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    goto :goto_1

    .line 963
    :pswitch_2
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    invoke-static {p1, v2}, Landroid/support/v4/view/aw;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 964
    if-gez v2, :cond_4

    .line 965
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 969
    :cond_4
    invoke-static {p1, v2}, Landroid/support/v4/view/aw;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 970
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    .line 971
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    if-eqz v3, :cond_3

    .line 972
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 973
    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    goto :goto_1

    .line 981
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/aw;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 982
    invoke-static {p1, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    goto :goto_1

    .line 987
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 992
    :pswitch_5
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    if-ne v3, v5, :cond_5

    .line 993
    if-ne v2, v1, :cond_1

    .line 994
    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Ljava/lang/String;

    const-string v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_5
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    invoke-static {p1, v1}, Landroid/support/v4/view/aw;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 999
    invoke-static {p1, v1}, Landroid/support/v4/view/aw;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1000
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    .line 1001
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    .line 1002
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    .line 1003
    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:I

    goto :goto_0

    .line 956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .prologue
    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/bp;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 725
    :cond_1
    :goto_0
    return-void

    .line 723
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 501
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .prologue
    .line 528
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->f()V

    .line 529
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ac;->a([I)V

    .line 530
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 512
    array-length v0, p1

    new-array v2, v0, [I

    .line 513
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 514
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 517
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1

    .prologue
    .line 560
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:F

    .line 561
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/be;->a(Z)V

    .line 815
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/at;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Landroid/support/v4/widget/at;

    .line 343
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 474
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->setBackgroundColor(I)V

    .line 492
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ac;->b(I)V

    .line 493
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 483
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    if-eq v0, p1, :cond_1

    .line 361
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:Z

    .line 363
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Z

    if-nez v0, :cond_0

    .line 364
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 368
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    .line 370
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:Z

    .line 371
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 375
    :goto_1
    return-void

    .line 366
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:F

    float-to-int v0, v0

    goto :goto_0

    .line 373
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    .line 251
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 255
    if-nez p1, :cond_1

    .line 256
    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    .line 263
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ac;->a(I)V

    .line 265
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/support/v4/widget/ac;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 258
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:I

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/be;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Landroid/support/v4/view/be;

    invoke-virtual {v0}, Landroid/support/v4/view/be;->c()V

    .line 830
    return-void
.end method
