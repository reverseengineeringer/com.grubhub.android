.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 427
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Z)Z

    .line 428
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->g(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 431
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->h(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/utils/e;

    move-result-object v1

    .line 432
    iget-boolean v0, v1, Lcom/grubhub/AppBaseLibrary/android/utils/e;->a:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->h(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Ljava/util/ArrayList;)V

    .line 453
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_REVIEW_SURVEY_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 438
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    .line 440
    :goto_1
    const-string v2, "SURVEY_UNSUPPORTED_ERROR"

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/utils/e;)V

    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a(Ljava/util/ArrayList;)V

    return-void
.end method
