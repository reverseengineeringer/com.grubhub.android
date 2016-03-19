.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(DDLcom/grubhub/AppBaseLibrary/android/order/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V
    .locals 0

    .prologue
    .line 1704
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1709
    if-eqz v1, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f035d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f080378

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$18;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1714
    :cond_0
    return-void
.end method
