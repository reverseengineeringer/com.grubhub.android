.class Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


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
    .line 177
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Ljava/lang/String;Z)V

    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;Ljava/lang/String;)V

    .line 183
    return-void
.end method
