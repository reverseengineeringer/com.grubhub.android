.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$17;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$17;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;Z)V

    .line 874
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$17;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    .line 875
    return-void
.end method
