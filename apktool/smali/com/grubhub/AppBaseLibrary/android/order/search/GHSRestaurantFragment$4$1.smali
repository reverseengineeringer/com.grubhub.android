.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a()V

    .line 901
    return-void
.end method
