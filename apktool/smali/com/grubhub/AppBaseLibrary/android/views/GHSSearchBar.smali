.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Landroid/widget/TextView$OnEditorActionListener;

.field protected b:Landroid/widget/AdapterView$OnItemClickListener;

.field private e:[Landroid/widget/Button;

.field private f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

.field private g:Landroid/view/View;

.field private h:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;

.field private l:Lcom/grubhub/AppBaseLibrary/android/views/y;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:I

.field private r:I

.field private s:J

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

.field private w:Landroid/text/TextWatcher;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->c:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SearchResults"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 795
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$5;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->w:Landroid/text/TextWatcher;

    .line 824
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->x:Landroid/view/View$OnClickListener;

    .line 832
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a:Landroid/widget/TextView$OnEditorActionListener;

    .line 854
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 795
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$5;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->w:Landroid/text/TextWatcher;

    .line 824
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->x:Landroid/view/View$OnClickListener;

    .line 832
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a:Landroid/widget/TextView$OnEditorActionListener;

    .line 854
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 795
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$5;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->w:Landroid/text/TextWatcher;

    .line 824
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->x:Landroid/view/View$OnClickListener;

    .line 832
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a:Landroid/widget/TextView$OnEditorActionListener;

    .line 854
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 1053
    const/4 v0, 0x0

    .line 1054
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1055
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1057
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1058
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1059
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1062
    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    .line 1063
    invoke-static {v7}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1069
    :goto_1
    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 1070
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    .line 1071
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d003f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v2, v9, v8, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1079
    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    if-eqz p2, :cond_3

    .line 156
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/n;->com_grubhub_AppBaseLibrary_android_views_GHSSearchBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 158
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v0

    .line 161
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ac()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    .line 162
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300ba

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 168
    const v0, 0x7f0f0358

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    .line 170
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 171
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/z;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/z;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Landroid/content/Context;)V

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    invoke-virtual {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    invoke-virtual {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setKeyEventCallback(Landroid/view/KeyEvent$Callback;)V

    .line 207
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->q:I

    .line 209
    if-lez v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setBackgroundResource(I)V

    .line 213
    :cond_1
    const v0, 0x7f0f0359

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->m:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->m:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v0, 0x7f0f0356

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->g:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->g:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e()V

    .line 243
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030045

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const v1, 0x7f0f0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->n:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    .line 249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const v1, 0x7f0f010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->p:Landroid/widget/Button;

    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->p:Landroid/widget/Button;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e:[Landroid/widget/Button;

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setSelectedSearchTypeButton(I)V

    .line 260
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const v1, 0x7f0f010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->h:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 261
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const v1, 0x7f0f010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    .line 262
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 681
    if-eqz p1, :cond_0

    .line 683
    if-eqz p2, :cond_1

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 686
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 687
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 693
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 694
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 695
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;)V
    .locals 5

    .prologue
    .line 543
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 545
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 546
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    if-nez v3, :cond_0

    .line 549
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 548
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 555
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 557
    :cond_3
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->f(Ljava/util/ArrayList;)V

    .line 559
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setSelectedSearchTypeButton(I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 530
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;-><init>()V

    .line 532
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->setValue(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;)V

    .line 535
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 295
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 296
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 299
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 301
    new-array v2, v6, [Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->p:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/s;->m:Ljava/lang/String;

    aput-object v0, v2, v5

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Z)V

    .line 314
    :goto_1
    return-void

    .line 305
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/s;->l:Ljava/lang/String;

    aput-object v0, v2, v5

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->p()V

    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/z;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/grubhub/AppBaseLibrary/android/views/z;->a(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    return-object v0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 439
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->m:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    .line 442
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->q:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->m:Landroid/view/View;

    .line 443
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :cond_0
    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    .line 444
    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getPaddingBottom()I

    move-result v4

    .line 441
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setPadding(IIII)V

    .line 447
    :cond_1
    return-void

    .line 439
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->g()V

    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->n:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 320
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 321
    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->s:J

    sub-long v2, v0, v2

    .line 322
    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 323
    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->s:J

    .line 325
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_4

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 331
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 340
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 342
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 348
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_4
    return-void
.end method

.method private getSearchBarText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getSearchBarText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->k:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j()V

    .line 515
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->clearFocus()V

    .line 516
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/view/View;Z)V

    .line 518
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->o()V

    .line 522
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    return-object v0
.end method

.method private i()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 577
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 579
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 580
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 582
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 583
    if-eqz v2, :cond_2

    .line 584
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

    invoke-interface {v5, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;->getSummary(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    move-result-object v2

    .line 586
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    move v2, v3

    .line 600
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 601
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 602
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v6

    .line 606
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 607
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 608
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 609
    if-eqz v8, :cond_5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 610
    const/4 v1, 0x1

    .line 615
    :goto_2
    if-nez v1, :cond_7

    .line 617
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

    if-eqz v1, :cond_8

    if-eqz v6, :cond_8

    .line 618
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

    invoke-interface {v1, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;->getSummary(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    move-result-object v1

    .line 620
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 621
    :cond_6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_7
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 628
    goto :goto_1

    .line 624
    :cond_8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 630
    :cond_9
    return-object v4

    :cond_a
    move v1, v3

    goto :goto_2
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getSearchBarText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 671
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 672
    return-void
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->h()V

    return-void
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j()V

    return-void
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->h:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setSelectedSearchTypeButton(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e:[Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 274
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->e:[Landroid/widget/Button;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 275
    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 276
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->r:I

    .line 277
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 274
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getSearchBarText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Ljava/lang/String;Z)V

    .line 286
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 906
    if-eqz p1, :cond_0

    .line 909
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->h:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 911
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const-string v0, "autocomplete-default tab dismiss_cta"

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getSearchBarText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/view/View;Z)V

    .line 382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d()V

    .line 385
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j()V

    .line 386
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->clearFocus()V

    .line 388
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->o()V

    .line 392
    :cond_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    const-string v0, "autocomplete-food tab dismiss_cta"

    goto :goto_0

    .line 376
    :cond_2
    const-string v0, "autocomplete-restaurant tab dismiss_cta"

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->m()V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->p:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->n()V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->l()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const v0, 0x7f0f0356

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 474
    const v0, 0x7f0f0356

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->t:Ljava/util/ArrayList;

    .line 566
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/z;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/z;->a(Ljava/util/ArrayList;Z)V

    .line 569
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 407
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 408
    invoke-static {p2}, Landroid/support/v4/view/r;->b(Landroid/view/KeyEvent;)V

    .line 409
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 417
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "autocomplete-default tab search button_cta"

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getSearchBarText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->h()V

    .line 431
    const/4 v0, 0x1

    .line 434
    :goto_1
    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->o:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "autocomplete-food tab search button_cta"

    goto :goto_0

    .line 426
    :cond_1
    const-string v0, "autocomplete-restaurant tab search button_cta"

    goto :goto_0

    .line 434
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 124
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 125
    check-cast p1, Landroid/os/Bundle;

    .line 127
    const-string v0, "is_search_open_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->k()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->requestFocus()Z

    .line 136
    :cond_1
    const-string v0, "selected_search_type_id_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->setSelectedSearchTypeButton(I)V

    .line 140
    :cond_2
    const-string v0, "parent_state_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 142
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 143
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "parent_state_key"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v1, "is_search_open_key"

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    const-string v1, "selected_search_type_id_key"

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    return-object v0
.end method

.method public setAutoCompleteResults(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSIAutoCompleteDataModel;)V
    .locals 3

    .prologue
    .line 897
    if-eqz p1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/z;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSIAutoCompleteDataModel;->getAutoCompleteResults()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/z;->a(Ljava/util/ArrayList;Z)V

    .line 900
    :cond_0
    return-void
.end method

.method public setPastOrders(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    .line 640
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 641
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    .line 642
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v4

    .line 643
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v5

    .line 645
    const/4 v2, 0x0

    .line 646
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    .line 647
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 653
    :goto_1
    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;-><init>()V

    .line 655
    invoke-virtual {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->setValue(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;->setId(Ljava/lang/String;)V

    .line 657
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getSearchBarText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/z;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/views/z;->a(Ljava/util/ArrayList;Z)V

    .line 664
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public setRestaurantAvailability(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;)V
    .locals 3

    .prologue
    .line 789
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

    .line 790
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getSearchBarText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/z;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/z;->a(Ljava/util/ArrayList;Z)V

    .line 793
    :cond_0
    return-void
.end method

.method public setSearchBarListener(Lcom/grubhub/AppBaseLibrary/android/views/y;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->l:Lcom/grubhub/AppBaseLibrary/android/views/y;

    .line 504
    return-void
.end method

.method public setSearchResultsContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 400
    if-eqz p1, :cond_0

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 403
    :cond_0
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 493
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->k:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method
