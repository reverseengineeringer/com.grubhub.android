.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;->b:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 459
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;->b:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Z)Z

    .line 462
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;->b:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8$1;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 473
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;->b:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->g(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    const v1, 0x7f08036c

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(ILandroid/view/View$OnClickListener;)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$8;->b:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_REVIEW_SURVEY_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    goto :goto_0
.end method
