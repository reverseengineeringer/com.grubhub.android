.class public Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/grubhub/AppBaseLibrary/android/feedback/a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 138
    return-void
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/feedback/b;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 47
    const-string v1, "feedback_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "feedback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;-><init>()V

    .line 50
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/feedback/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/feedback/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    .line 71
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "feedback_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "feedback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->c:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f090218

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    const v1, 0x7f030042

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    const v1, 0x7f0f0102

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0f0103

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v1, 0x7f0f0101

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 119
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->e:Z

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->d()V

    .line 123
    :cond_0
    return-void
.end method

.method public show(Landroid/support/v4/app/w;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "in-app feedback"

    const-string v3, "modal_impression"

    const-string v4, "give feedback modal step 3"

    const-string v5, "1"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 133
    return-void
.end method
