.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$3;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a()V

    .line 887
    return-void
.end method
