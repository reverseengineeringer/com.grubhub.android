.class Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method
