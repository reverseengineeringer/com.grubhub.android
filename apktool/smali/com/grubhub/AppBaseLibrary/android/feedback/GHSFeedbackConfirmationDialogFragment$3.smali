.class Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$3;
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
    .line 105
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackConfirmationDialogFragment;->dismiss()V

    .line 109
    return-void
.end method
