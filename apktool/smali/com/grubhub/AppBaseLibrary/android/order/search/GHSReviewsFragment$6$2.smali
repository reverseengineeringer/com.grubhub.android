.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSReviewsFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->a()V

    .line 380
    return-void
.end method
