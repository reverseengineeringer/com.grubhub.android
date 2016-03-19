.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->c(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
