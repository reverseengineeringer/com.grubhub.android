.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/de;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    .prologue
    .line 72
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/review/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/c;->b(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;->getType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;->RATING_REVIEW:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSSurveyType;

    if-ne v1, v2, :cond_1

    .line 78
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "submit ratings and reviews"

    const-string v4, "provide written review modal_impression"

    const-string v5, ""

    const-string v6, "true"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    .line 88
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->c(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 89
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Z)Z

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;

    .line 96
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;)V

    .line 97
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "submit ratings and reviews"

    const-string v4, "rating question modal_impression"

    const-string v5, ""

    const-string v6, "true"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewSurveyFragment;Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
