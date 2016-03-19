.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSearchFilterFragment;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method
