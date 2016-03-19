.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$2;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->dismiss()V

    .line 157
    return-void
.end method
