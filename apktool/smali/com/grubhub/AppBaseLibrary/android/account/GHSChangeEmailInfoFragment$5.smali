.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->c()V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 2

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    const-string v1, "successful"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/account/c;->j()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
