.class Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f08009e

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
