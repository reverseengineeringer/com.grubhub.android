.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/b;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# instance fields
.field private a:Z

.field private b:J

.field private c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

.field private g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b:J

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(J)Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 134
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    return p1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 147
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    if-eqz v1, :cond_1

    .line 148
    new-instance v0, Landroid/text/SpannableString;

    iget-wide v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b:J

    const-string v1, "EEEE, MMM d, h:mm a"

    invoke-static {v4, v5, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->d:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 155
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->e:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 157
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setActivated(Z)V

    .line 158
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0804a6

    :goto_1
    invoke-virtual {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(I)V

    .line 160
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setActivated(Z)V

    .line 161
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_2
    const v1, 0x7f0804a5

    goto :goto_1

    .line 161
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 162
    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a()V

    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b:J

    return-wide v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b:J

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    .line 123
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b()V

    .line 124
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setSubOrderType(Lcom/grubhub/AppBaseLibrary/android/order/l;)V

    .line 109
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setWhenFor(J)V

    .line 110
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getHasUserSelectedRefinements()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedRefinements(Z)V

    .line 111
    return-void

    .line 108
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    .line 116
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b()V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    const-string v1, "savedFutureOrderTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b:J

    .line 46
    const-string v1, "savedSubOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/l;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->a:Z

    .line 48
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f030055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0f0188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->d:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0f018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->e:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0f0189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 62
    const v0, 0x7f0f018a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 65
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0f018b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;->b()V

    .line 104
    return-void
.end method
