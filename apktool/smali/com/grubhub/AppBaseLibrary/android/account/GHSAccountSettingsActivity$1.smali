.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const v4, 0x7f040028

    const v3, 0x7f040021

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/support/v4/app/ag;->a(IIII)Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f007e

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/account/r;->SETTINGS:Lcom/grubhub/AppBaseLibrary/android/account/r;

    const/4 v4, 0x0

    .line 97
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v6

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->B()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v0, v6}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/r;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    move-result-object v0

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 99
    return-void
.end method
