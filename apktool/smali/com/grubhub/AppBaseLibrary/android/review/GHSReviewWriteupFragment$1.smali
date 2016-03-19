.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
