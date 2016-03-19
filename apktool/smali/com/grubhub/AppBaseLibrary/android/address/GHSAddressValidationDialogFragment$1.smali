.class Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
