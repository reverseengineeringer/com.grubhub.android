.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->d(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 161
    return-void
.end method
