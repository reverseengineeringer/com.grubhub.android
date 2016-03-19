.class Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 126
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/address/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/address/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/address/b;->d()V

    .line 132
    :cond_0
    return-void
.end method
