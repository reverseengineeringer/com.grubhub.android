.class public Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 137
    return-void
.end method

.method public static createInstance(I)Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;

    invoke-direct {v0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;-><init>()V

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string v2, "dialog_error"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 153
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 170
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->finish()V

    .line 171
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/e;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
