.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;
.super Lcom/grubhub/AppBaseLibrary/android/views/k;
.source "SourceFile"


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

.field private d:Lcom/grubhub/AppBaseLibrary/android/views/w;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/k;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/views/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)Lcom/grubhub/AppBaseLibrary/android/views/w;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->d:Lcom/grubhub/AppBaseLibrary/android/views/w;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 148
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "submit ratings and reviews"

    const-string v3, "submit ratings prompt_impression"

    const-string v4, "restaurant search_modal"

    const-string v5, "true"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 151
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300af

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    const v0, 0x7f0f031e

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->e:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0f031d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0f031c

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public setListener(Lcom/grubhub/AppBaseLibrary/android/views/w;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->d:Lcom/grubhub/AppBaseLibrary/android/views/w;

    .line 117
    return-void
.end method

.method public setLocationType(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel$GHSLocationType;

    .line 126
    return-void
.end method

.method public setPastOrder(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V
    .locals 6

    .prologue
    .line 134
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 135
    if-eqz p1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->e:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080466

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    .line 143
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSReviewPromptView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
