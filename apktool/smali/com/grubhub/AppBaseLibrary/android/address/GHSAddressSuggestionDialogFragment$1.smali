.class Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/address/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 79
    :cond_0
    return-void
.end method
