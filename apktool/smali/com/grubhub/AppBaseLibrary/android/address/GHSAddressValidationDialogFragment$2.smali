.class Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 99
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
