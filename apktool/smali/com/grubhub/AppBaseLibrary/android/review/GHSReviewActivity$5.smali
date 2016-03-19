.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->g(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    .line 414
    return-void
.end method
