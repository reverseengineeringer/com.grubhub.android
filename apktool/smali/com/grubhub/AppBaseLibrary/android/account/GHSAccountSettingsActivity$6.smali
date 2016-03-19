.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$6;
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
    .line 125
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f040028

    const v2, 0x7f040021

    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/support/v4/app/ag;->a(IIII)Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007e

    const/4 v2, 0x0

    .line 131
    invoke-static {v4, v2, v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 133
    return-void
.end method
