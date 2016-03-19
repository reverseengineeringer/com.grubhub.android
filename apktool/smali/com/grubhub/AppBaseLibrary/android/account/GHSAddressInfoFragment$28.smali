.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d_()V

    .line 1149
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d()V

    .line 1151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->E(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->F(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 1159
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->G(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    .line 1157
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$28;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v1, "incomplete fields required"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
