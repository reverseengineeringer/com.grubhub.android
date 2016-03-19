.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 209
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    .line 213
    const/4 v0, 0x0

    .line 214
    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 216
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 219
    :cond_0
    if-eqz p2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->g(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    const v4, 0x7f0801aa

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 227
    :goto_0
    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 230
    :cond_1
    return-void

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->g(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    const v4, 0x7f0801b0

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
