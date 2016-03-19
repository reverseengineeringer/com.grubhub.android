.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44$1;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44$1;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V

    .line 475
    return-void
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 479
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 480
    return-void
.end method
