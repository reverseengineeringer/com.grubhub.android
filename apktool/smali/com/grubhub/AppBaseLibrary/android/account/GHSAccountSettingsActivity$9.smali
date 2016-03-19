.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZ)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->d:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->b:Z

    iput-boolean p4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 268
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 269
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->d:Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->b:Z

    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity$9;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZ)V

    .line 270
    return-void
.end method
