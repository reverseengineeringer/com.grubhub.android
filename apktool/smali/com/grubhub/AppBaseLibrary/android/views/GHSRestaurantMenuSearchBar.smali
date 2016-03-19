.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lcom/grubhub/AppBaseLibrary/android/views/u;

.field private i:Lcom/grubhub/AppBaseLibrary/android/views/s;

.field private j:Lcom/grubhub/AppBaseLibrary/android/views/t;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SearchOverlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SearchResults"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 464
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 465
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 466
    if-ne v0, p0, :cond_1

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    :cond_0
    return-object v1

    .line 469
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 470
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 464
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    if-eqz p2, :cond_2

    .line 101
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/n;->com_grubhub_AppBaseLibrary_android_views_GHSRestaurantMenuSearchBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 103
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 107
    const v3, 0x7f0300b6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    const v3, 0x7f0300bd

    invoke-virtual {v0, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->p:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->p:Landroid/view/View;

    const v3, 0x7f0f035d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->q:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300b7

    invoke-virtual {v0, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$1;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300b8

    invoke-virtual {v0, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    const v2, 0x7f0f034e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 127
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    const v2, 0x7f0f034f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->o:Landroid/widget/ListView;

    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->o:Landroid/widget/ListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/t;

    invoke-direct {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/views/t;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$1;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j:Lcom/grubhub/AppBaseLibrary/android/views/t;

    .line 151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->o:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j:Lcom/grubhub/AppBaseLibrary/android/views/t;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 153
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 163
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/u;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-direct {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/u;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->h:Lcom/grubhub/AppBaseLibrary/android/views/u;

    .line 165
    const v0, 0x7f0f034a

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->l:Landroid/view/View;

    .line 167
    const v0, 0x7f0f034c

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    .line 168
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 208
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->g:I

    .line 233
    if-lez v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    .line 237
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    .line 238
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    .line 239
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 240
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 241
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 244
    :cond_0
    const v0, 0x7f0f034d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->m:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->m:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->l:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$8;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 393
    if-eqz p1, :cond_0

    .line 394
    if-eqz p2, :cond_1

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 397
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 404
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 406
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 428
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->m:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    .line 431
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->g:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->m:Landroid/view/View;

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :cond_0
    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    .line 433
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 430
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 436
    :cond_1
    return-void

    .line 428
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->e:Z

    return p1
.end method

.method private b(Z)V
    .locals 6

    .prologue
    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 445
    if-eqz p1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 447
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0804ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->p:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 454
    :cond_0
    :goto_1
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0804cd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    goto :goto_1
.end method

.method private b(Landroid/view/ViewGroup;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 486
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 487
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 488
    if-ne v0, p0, :cond_1

    .line 489
    const/4 v2, 0x1

    .line 495
    :cond_0
    :goto_1
    return v2

    .line 490
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 491
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b(Landroid/view/ViewGroup;)Z

    move-result v2

    goto :goto_1

    .line 486
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f()V

    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b(Z)V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/s;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/s;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 417
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 418
    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/t;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j:Lcom/grubhub/AppBaseLibrary/android/views/t;

    return-object v0
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/u;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->h:Lcom/grubhub/AppBaseLibrary/android/views/u;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 323
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j:Lcom/grubhub/AppBaseLibrary/android/views/t;

    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/views/t;->a(Ljava/util/ArrayList;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V

    .line 325
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 327
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/view/View;Z)V

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/view/View;Z)V

    .line 330
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f:Z

    .line 331
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f:Z

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/view/View;Z)V

    .line 281
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/view/View;Z)V

    .line 283
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f()V

    .line 284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 286
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->f:Z

    .line 288
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/s;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/s;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/s;->v()V

    .line 292
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->l:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->n:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b()V

    .line 383
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j:Lcom/grubhub/AppBaseLibrary/android/views/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j:Lcom/grubhub/AppBaseLibrary/android/views/t;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/t;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$9;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {p0, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSearchBarListener(Lcom/grubhub/AppBaseLibrary/android/views/s;)V
    .locals 1

    .prologue
    .line 310
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/s;

    .line 311
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->h:Lcom/grubhub/AppBaseLibrary/android/views/u;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/u;->a(Lcom/grubhub/AppBaseLibrary/android/views/s;)V

    .line 312
    return-void
.end method

.method public setSearchResultsContainer(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 339
    if-eqz p1, :cond_1

    .line 342
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/view/ViewGroup;)Ljava/lang/Integer;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_2

    .line 347
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 351
    :cond_0
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->s:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 361
    :cond_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->r:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
