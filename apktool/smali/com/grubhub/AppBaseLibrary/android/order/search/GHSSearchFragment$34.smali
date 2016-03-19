.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->clearFocus()V

    .line 518
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->clearFocus()V

    .line 521
    const-wide/16 v0, 0x0

    .line 522
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const-wide/16 v2, 0x15e

    .line 525
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 526
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-wide v0, v2

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;

    invoke-direct {v3, p0, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;Landroid/view/View;I)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    return-void
.end method
