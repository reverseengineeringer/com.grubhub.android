.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 161
    return-void
.end method
