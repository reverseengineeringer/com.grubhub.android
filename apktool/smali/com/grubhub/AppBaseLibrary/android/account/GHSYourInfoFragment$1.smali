.class Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;)V

    .line 180
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
