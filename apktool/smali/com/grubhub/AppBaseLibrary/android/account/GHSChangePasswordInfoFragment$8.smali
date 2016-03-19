.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Ljava/lang/String;Z)V

    .line 232
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;Ljava/lang/String;)V

    .line 233
    return-void
.end method
