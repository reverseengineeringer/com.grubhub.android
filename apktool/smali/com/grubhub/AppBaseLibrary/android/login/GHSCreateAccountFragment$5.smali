.class Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 115
    return-void
.end method
