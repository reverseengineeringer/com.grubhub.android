.class Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    .line 134
    const/4 v0, 0x0

    .line 135
    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 137
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 140
    :cond_0
    if-eqz p2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    const v4, 0x7f0801aa

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 148
    :goto_0
    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 151
    :cond_1
    return-void

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    const v4, 0x7f0801b0

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
