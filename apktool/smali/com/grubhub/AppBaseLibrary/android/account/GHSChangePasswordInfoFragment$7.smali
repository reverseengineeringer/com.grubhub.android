.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 2

    .prologue
    .line 214
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    const-string v1, "successful"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/account/d;->k()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
