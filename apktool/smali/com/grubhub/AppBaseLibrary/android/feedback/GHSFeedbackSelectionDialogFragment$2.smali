.class Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 113
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/feedback/GHSFeedbackSelectionDialogFragment;->dismiss()V

    .line 117
    return-void
.end method
