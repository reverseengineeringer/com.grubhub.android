.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)I

    move-result v0

    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)I

    .line 342
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_0
    return-void
.end method
