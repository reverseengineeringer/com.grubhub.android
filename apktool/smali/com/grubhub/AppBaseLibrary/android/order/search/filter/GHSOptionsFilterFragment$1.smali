.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a(Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;Z)Z

    .line 140
    return-void
.end method
