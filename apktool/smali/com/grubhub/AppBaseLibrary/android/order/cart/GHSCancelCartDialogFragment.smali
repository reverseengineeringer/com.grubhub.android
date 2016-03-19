.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Landroid/app/Activity;

.field private d:Lcom/grubhub/AppBaseLibrary/android/order/cart/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;J)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v1, "restaurantName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "expectedTimeMillis"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;-><init>()V

    .line 90
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/b;

    return-object v0
.end method

.method private a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 185
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 186
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 187
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x21

    .line 185
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 189
    return-void
.end method

.method private a(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 5

    .prologue
    .line 159
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, h:mm a"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->b:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 160
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const v1, 0x7f080392

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, v2, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 145
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 148
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 149
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 150
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->c:Landroid/app/Activity;

    .line 63
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/b;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/b;

    .line 67
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "restaurantName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a:Ljava/lang/String;

    .line 101
    const-string v1, "expectedTimeMillis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->b:J

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a:Ljava/lang/String;

    .line 108
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 135
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f03004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 72
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->c:Landroid/app/Activity;

    .line 73
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/b;

    .line 74
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f0f0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0f0141

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 122
    const v2, 0x7f0f0142

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 125
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Landroid/widget/TextView;)V

    .line 128
    invoke-direct {p0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Landroid/widget/Button;Landroid/widget/Button;)V

    .line 129
    return-void
.end method
