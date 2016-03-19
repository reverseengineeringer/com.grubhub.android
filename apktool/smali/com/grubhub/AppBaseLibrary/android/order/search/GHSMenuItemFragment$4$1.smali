.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a()V

    .line 736
    return-void
.end method
