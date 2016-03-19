.class Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 360
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 361
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 364
    :cond_0
    return-void
.end method
