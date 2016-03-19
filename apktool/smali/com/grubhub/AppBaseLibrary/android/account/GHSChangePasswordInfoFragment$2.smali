.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .prologue
    const/16 v7, 0x91

    const/16 v6, 0x81

    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    .line 139
    const/4 v0, 0x0

    .line 140
    if-eqz v1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 142
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 149
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    const v5, 0x7f0801aa

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 151
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 158
    :goto_1
    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    :cond_1
    :goto_2
    return-void

    .line 143
    :cond_2
    if-eqz v2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 145
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/ToggleButton;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    const v5, 0x7f0801b0

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 155
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 160
    :cond_4
    if-eqz v2, :cond_1

    .line 161
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2
.end method
