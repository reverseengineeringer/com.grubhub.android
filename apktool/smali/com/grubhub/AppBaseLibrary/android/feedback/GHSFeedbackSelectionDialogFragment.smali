.class public Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

.field private b:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/grubhub/AppBaseLibrary/android/feedback/c;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 182
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->b:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;)Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;-><init>()V

    .line 50
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->d:Z

    .line 152
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/feedback/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 158
    const-string v3, "FeedbackID"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 162
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v4, "in-app feedback"

    const-string v5, "feedback categories modal_CTA"

    invoke-direct {v3, v4, v5, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 168
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/d;

    invoke-direct {v2, v1, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/d;)V

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->c:Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->c:Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-interface {v0, v2, v1, p1}, Lcom/grubhub/AppBaseLibrary/android/feedback/c;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->dismiss()V

    .line 177
    return-void

    .line 154
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->c:Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->c:Lcom/grubhub/AppBaseLibrary/android/feedback/c;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 72
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$3;->a:[I

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 80
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    const v3, 0x7f03008a

    const v4, 0x7f0f02d3

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->b:Landroid/widget/ArrayAdapter;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 89
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 95
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v2, 0x7f090218

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 96
    const v0, 0x7f030043

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    const v0, 0x7f0f0104

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 100
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    const v0, 0x7f0f0101

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 128
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->d:Z

    if-nez v0, :cond_0

    .line 131
    :cond_0
    return-void
.end method

.method public show(Landroid/support/v4/app/w;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "in-app feedback"

    const-string v3, "modal_impression"

    const-string v4, "give feedback categories modal step 2"

    const-string v5, "1"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 141
    return-void
.end method
