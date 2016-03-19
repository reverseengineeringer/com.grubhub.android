.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0f028e

    const/4 v6, 0x0

    const v5, 0x7f08051d

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 57
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 59
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 60
    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a(Ljava/lang/Float;)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    move-result-object v0

    .line 63
    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    const v2, 0x7f08039f

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080522

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v8, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {v2, v3, v6, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f028a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCashTipAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;F)F

    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;Z)Z

    .line 82
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    const v1, 0x7f08051e

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;I)V

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)V

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)V

    goto/16 :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v7, :cond_2

    .line 78
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;F)F

    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;

    invoke-static {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;Z)Z

    goto :goto_1
.end method
