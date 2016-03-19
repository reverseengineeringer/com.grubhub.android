.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;
.super Lcom/grubhub/AppBaseLibrary/android/views/k;
.source "SourceFile"


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

.field private c:Lcom/grubhub/AppBaseLibrary/android/views/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/k;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/views/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)Lcom/grubhub/AppBaseLibrary/android/views/f;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->c:Lcom/grubhub/AppBaseLibrary/android/views/f;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)Lcom/grubhub/AppBaseLibrary/android/feedback/b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->b:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 135
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "in-app feedback"

    const-string v3, "modal_impression"

    const-string v4, "give feedback modal step 1"

    const-string v5, "1"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 138
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p2, :cond_0

    .line 46
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/n;->com_grubhub_AppBaseLibrary_android_views_GHSFeedbackView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->getMode(I)Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->b:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300af

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    const v0, 0x7f0f031e

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    const v1, 0x7f08038c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v0, 0x7f0f031d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0f031c

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->TRAY:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->b:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    goto :goto_0
.end method

.method public setListener(Lcom/grubhub/AppBaseLibrary/android/views/f;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->c:Lcom/grubhub/AppBaseLibrary/android/views/f;

    .line 120
    return-void
.end method

.method public setMode(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->b:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 130
    return-void
.end method
