.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


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
    .line 202
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 206
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 207
    return-void
.end method
