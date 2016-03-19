.class Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->dismiss()V

    goto :goto_0
.end method
