.class public Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:[I


# instance fields
.field private A:Lcom/grubhub/AppBaseLibrary/android/i;

.field private B:Z

.field private b:I

.field private c:I

.field private d:Z

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/drawable/Drawable;

.field private final h:I

.field private final i:Landroid/support/v4/widget/au;

.field private final j:Landroid/graphics/Rect;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View;

.field private q:I

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Lcom/grubhub/AppBaseLibrary/android/j;

.field private u:F

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->e:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b:I

    .line 63
    const/16 v0, 0x190

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->c:I

    .line 71
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d:Z

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->f:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    .line 99
    iput v5, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    .line 103
    iput v5, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->l:I

    .line 107
    iput v5, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->m:I

    .line 125
    iput v5, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->q:I

    .line 135
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/j;->EXPANDED:Lcom/grubhub/AppBaseLibrary/android/j;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->t:Lcom/grubhub/AppBaseLibrary/android/j;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->z:F

    .line 170
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->B:Z

    .line 183
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iput-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g:Landroid/graphics/drawable/Drawable;

    .line 185
    iput v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->h:I

    .line 186
    iput-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i:Landroid/support/v4/widget/au;

    .line 253
    :goto_0
    return-void

    .line 190
    :cond_0
    if-eqz p2, :cond_4

    .line 191
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 193
    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 195
    const/16 v4, 0x30

    if-eq v0, v4, :cond_1

    const/16 v4, 0x50

    if-eq v0, v4, :cond_1

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gravity must be set to either top or bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    const/16 v4, 0x50

    if-ne v0, v4, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    .line 201
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/n;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    .line 207
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->l:I

    .line 208
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->m:I

    .line 210
    const/4 v3, 0x4

    const/16 v4, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->c:I

    .line 211
    const/4 v3, 0x3

    const/high16 v4, -0x67000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b:I

    .line 213
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->q:I

    .line 215
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d:Z

    .line 218
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 222
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    if-ne v3, v5, :cond_5

    .line 223
    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    .line 225
    :cond_5
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->l:I

    if-ne v3, v5, :cond_6

    .line 226
    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->l:I

    .line 228
    :cond_6
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->m:I

    if-ne v3, v5, :cond_7

    .line 229
    const/4 v3, 0x0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->m:I

    .line 232
    :cond_7
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->l:I

    if-lez v3, :cond_a

    .line 233
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    if-eqz v3, :cond_9

    .line 234
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g:Landroid/graphics/drawable/Drawable;

    .line 243
    :goto_2
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->setWillNotDraw(Z)V

    .line 245
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/g;

    invoke-direct {v2, p0, v6}, Lcom/grubhub/AppBaseLibrary/android/g;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$1;)V

    invoke-static {p0, v7, v2}, Landroid/support/v4/widget/au;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/av;)Landroid/support/v4/widget/au;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i:Landroid/support/v4/widget/au;

    .line 246
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i:Landroid/support/v4/widget/au;

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->c:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/au;->a(F)V

    .line 248
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->o:Z

    .line 249
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->x:Z

    .line 251
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->h:I

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 198
    goto/16 :goto_1

    .line 236
    :cond_9
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 240
    :cond_a
    iput-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->z:F

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;Lcom/grubhub/AppBaseLibrary/android/j;)Lcom/grubhub/AppBaseLibrary/android/j;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->t:Lcom/grubhub/AppBaseLibrary/android/j;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getSlidingTop()I

    move-result v0

    .line 951
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    if-eqz v1, :cond_1

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    .line 954
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(Landroid/view/View;)V

    .line 956
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->m:I

    if-lez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getCurrentParalaxOffset()I

    move-result v0

    .line 958
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 959
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->s:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 964
    :cond_0
    return-void

    .line 951
    :cond_1
    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->v:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->v:I

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Landroid/support/v4/widget/au;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i:Landroid/support/v4/widget/au;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    return v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Lcom/grubhub/AppBaseLibrary/android/j;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->t:Lcom/grubhub/AppBaseLibrary/android/j;

    return-object v0
.end method

.method private static e(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    return v0
.end method

.method private getSlidingTop()I
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 855
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 860
    :goto_0
    return v0

    .line 857
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 860
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getSlidingTop()I

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    return v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->w:Z

    return v0
.end method


# virtual methods
.method a()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingLeft()I

    move-result v5

    .line 390
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingRight()I

    move-result v2

    sub-int v6, v0, v2

    .line 391
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingTop()I

    move-result v7

    .line 392
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 397
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 399
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 400
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 401
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 405
    :goto_1
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 406
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 407
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 408
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 409
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 411
    if-lt v5, v4, :cond_1

    if-lt v7, v2, :cond_1

    if-gt v6, v3, :cond_1

    if-gt v8, v0, :cond_1

    .line 413
    const/4 v1, 0x4

    .line 417
    :cond_1
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 403
    goto :goto_1
.end method

.method a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    invoke-interface {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/i;->a(Landroid/view/View;F)V

    .line 362
    :cond_0
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 422
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 424
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_1
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/i;->b(Landroid/view/View;)V

    .line 368
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->sendAccessibilityEvent(I)V

    .line 369
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/i;->a(Landroid/view/View;)V

    .line 375
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->sendAccessibilityEvent(I)V

    .line 376
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 541
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/h;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i:Landroid/support/v4/widget/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/au;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->o:Z

    if-nez v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->i:Landroid/support/v4/widget/au;

    invoke-virtual {v0}, Landroid/support/v4/widget/au;->f()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/bp;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/i;->c(Landroid/view/View;)V

    .line 382
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->sendAccessibilityEvent(I)V

    .line 383
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 719
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 721
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 729
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->l:I

    sub-int v1, v0, v1

    .line 731
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 736
    :goto_1
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 738
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 739
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 740
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 734
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->l:I

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 502
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/h;

    .line 504
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 506
    const/4 v1, 0x0

    .line 508
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->o:Z

    if-eqz v3, :cond_3

    iget-boolean v0, v0, Lcom/grubhub/AppBaseLibrary/android/h;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 511
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d:Z

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 513
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 520
    :cond_0
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    .line 521
    const/4 v0, 0x1

    .line 525
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 526
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 528
    if-eqz v0, :cond_1

    .line 529
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b:I

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x18

    .line 530
    int-to-float v0, v0

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    sub-float v2, v5, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 531
    shl-int/lit8 v0, v0, 0x18

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 532
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 536
    :cond_1
    return v1

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 629
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/h;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/h;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 617
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/h;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/grubhub/AppBaseLibrary/android/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 622
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/h;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/h;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/h;

    invoke-direct {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/h;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b:I

    return v0
.end method

.method public getCurrentParalaxOffset()I
    .locals 3

    .prologue
    .line 308
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->m:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 309
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->B:Z

    .line 548
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 552
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->B:Z

    .line 554
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 749
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 750
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 751
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->q:I

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->p:Landroid/view/View;

    .line 753
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingLeft()I

    move-result v4

    .line 559
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingTop()I

    move-result v1

    .line 560
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getSlidingTop()I

    move-result v5

    .line 562
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildCount()I

    move-result v6

    .line 564
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->B:Z

    if-eqz v0, :cond_0

    .line 565
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$1;->a:[I

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->t:Lcom/grubhub/AppBaseLibrary/android/j;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/j;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 573
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    .line 578
    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v6, :cond_9

    .line 579
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 581
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 578
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 567
    :pswitch_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    .line 570
    :pswitch_1
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->o:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->z:F

    :goto_4
    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    .line 585
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/h;

    .line 586
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 588
    iget-boolean v2, v0, Lcom/grubhub/AppBaseLibrary/android/h;->a:Z

    if-eqz v2, :cond_4

    .line 589
    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    sub-int v2, v8, v2

    iput v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->v:I

    .line 593
    :cond_4
    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->n:Z

    if-eqz v2, :cond_7

    .line 594
    iget-boolean v0, v0, Lcom/grubhub/AppBaseLibrary/android/h;->a:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->v:I

    int-to-float v0, v0

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v5

    :goto_5
    move v2, v0

    .line 601
    :cond_5
    :goto_6
    add-int v0, v2, v8

    .line 603
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    .line 605
    invoke-virtual {v7, v4, v2, v8, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_6
    move v0, v1

    .line 594
    goto :goto_5

    .line 596
    :cond_7
    iget-boolean v2, v0, Lcom/grubhub/AppBaseLibrary/android/h;->a:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->v:I

    int-to-float v2, v2

    iget v9, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->u:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    sub-int v2, v5, v2

    .line 597
    :goto_7
    iget-boolean v0, v0, Lcom/grubhub/AppBaseLibrary/android/h;->a:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d:Z

    if-nez v0, :cond_5

    .line 598
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    add-int/2addr v2, v0

    goto :goto_6

    :cond_8
    move v2, v1

    .line 596
    goto :goto_7

    .line 608
    :cond_9
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->B:Z

    if-eqz v0, :cond_a

    .line 609
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a()V

    .line 612
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->B:Z

    .line 613
    return-void

    .line 565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 757
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 758
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 759
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 760
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 762
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    .line 763
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_1

    .line 765
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getPaddingBottom()I

    move-result v1

    sub-int v3, v0, v1

    .line 769
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    .line 771
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildCount()I

    move-result v8

    .line 773
    const/4 v1, 0x2

    if-le v8, v1, :cond_2

    .line 774
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->a:Ljava/lang/String;

    const-string v2, "onMeasure: More than two child views are not supported."

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 780
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->o:Z

    .line 784
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v8, :cond_9

    .line 785
    invoke-virtual {p0, v5}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 786
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/h;

    .line 789
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    .line 790
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/grubhub/AppBaseLibrary/android/h;->b:Z

    .line 784
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 775
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 776
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 794
    :cond_3
    const/4 v2, 0x1

    if-ne v5, v2, :cond_4

    .line 795
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/grubhub/AppBaseLibrary/android/h;->a:Z

    .line 796
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/grubhub/AppBaseLibrary/android/h;->b:Z

    .line 797
    iput-object v9, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->r:Landroid/view/View;

    .line 798
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->o:Z

    move v2, v3

    .line 807
    :goto_3
    iget v4, v0, Lcom/grubhub/AppBaseLibrary/android/h;->width:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_5

    .line 808
    const/high16 v4, -0x80000000

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 816
    :goto_4
    iget v10, v0, Lcom/grubhub/AppBaseLibrary/android/h;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_7

    .line 817
    const/high16 v0, -0x80000000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 824
    :goto_5
    invoke-virtual {v9, v4, v0}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 800
    :cond_4
    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d:Z

    if-nez v2, :cond_a

    .line 801
    sub-int v2, v3, v1

    .line 803
    :goto_6
    iput-object v9, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->s:Landroid/view/View;

    goto :goto_3

    .line 809
    :cond_5
    iget v4, v0, Lcom/grubhub/AppBaseLibrary/android/h;->width:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_6

    .line 810
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_4

    .line 812
    :cond_6
    iget v4, v0, Lcom/grubhub/AppBaseLibrary/android/h;->width:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_4

    .line 818
    :cond_7
    iget v10, v0, Lcom/grubhub/AppBaseLibrary/android/h;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 819
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_5

    .line 821
    :cond_8
    iget v0, v0, Lcom/grubhub/AppBaseLibrary/android/h;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_5

    .line 827
    :cond_9
    invoke-virtual {p0, v6, v7}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->setMeasuredDimension(II)V

    .line 828
    return-void

    :cond_a
    move v2, v3

    goto :goto_6

    :cond_b
    move v1, v0

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 712
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;

    .line 713
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 714
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;->a:Lcom/grubhub/AppBaseLibrary/android/j;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->t:Lcom/grubhub/AppBaseLibrary/android/j;

    .line 715
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 702
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 704
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;

    invoke-direct {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 705
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->t:Lcom/grubhub/AppBaseLibrary/android/j;

    iput-object v0, v1, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane$SavedState;->a:Lcom/grubhub/AppBaseLibrary/android/j;

    .line 707
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 683
    if-eq p2, p4, :cond_0

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->B:Z

    .line 686
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAnchorPoint(F)V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 338
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->z:F

    .line 340
    :cond_0
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->b:I

    .line 275
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->invalidate()V

    .line 276
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->p:Landroid/view/View;

    .line 328
    return-void
.end method

.method public setEnableDragViewTouchEvents(Z)V
    .locals 0

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->y:Z

    .line 437
    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->d:Z

    .line 356
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0

    .prologue
    .line 300
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->k:I

    .line 301
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->requestLayout()V

    .line 302
    return-void
.end method

.method public setPanelSlideListener(Lcom/grubhub/AppBaseLibrary/android/i;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->A:Lcom/grubhub/AppBaseLibrary/android/i;

    .line 319
    return-void
.end method

.method setSlideState(Lcom/grubhub/AppBaseLibrary/android/j;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->t:Lcom/grubhub/AppBaseLibrary/android/j;

    .line 1024
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSOrderFlowPane;->x:Z

    .line 285
    return-void
.end method
