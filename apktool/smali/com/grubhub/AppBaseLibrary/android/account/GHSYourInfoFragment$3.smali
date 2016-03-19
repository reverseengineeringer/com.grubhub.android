.class Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->a:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 230
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    .line 235
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
