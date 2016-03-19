.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 102
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    const-string v1, "[$.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const-string v0, "0"

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    .line 126
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;F)F

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;F)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
