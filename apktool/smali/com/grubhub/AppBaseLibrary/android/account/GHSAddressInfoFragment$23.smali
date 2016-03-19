.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->a:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$23;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    .line 210
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method
