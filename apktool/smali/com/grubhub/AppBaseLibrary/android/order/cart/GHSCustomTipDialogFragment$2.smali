.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
