.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;I)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;

    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment$1;->a:I

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;I)V

    .line 80
    return-void
.end method
