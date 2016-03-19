.class Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/feedback/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/feedback/b;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->c(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->d(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/feedback/a;->b(Lcom/grubhub/AppBaseLibrary/android/feedback/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;Z)Z

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->dismiss()V

    .line 93
    return-void
.end method
