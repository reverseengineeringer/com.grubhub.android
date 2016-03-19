.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a()V

    .line 750
    return-void
.end method
