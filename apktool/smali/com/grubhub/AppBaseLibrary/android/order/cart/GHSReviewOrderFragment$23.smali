.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$23;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$23;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method
