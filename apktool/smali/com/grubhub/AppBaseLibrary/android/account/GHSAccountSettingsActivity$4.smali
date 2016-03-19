.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$4;
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
    .line 102
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f040028

    const v2, 0x7f040021

    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/support/v4/app/ag;->a(IIII)Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007e

    .line 109
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b()Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 111
    return-void
.end method
