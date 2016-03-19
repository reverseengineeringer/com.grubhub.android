.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 177
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 181
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v1, 0x7f08007f

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    .line 182
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08037b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    .line 183
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08037d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 182
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
