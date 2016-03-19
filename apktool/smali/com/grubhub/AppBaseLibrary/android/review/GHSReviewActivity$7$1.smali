.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/e;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/utils/e;)V
    .locals 2

    .prologue
    .line 441
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->c:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 443
    const-string v0, "DinerId"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v0, "OrderId"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->c:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v0, "Platform"

    const-string v1, "android-mobile"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v0, "AppVersion"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v0, "SurveyVersion"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v0, "QuestionId"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/utils/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v0, "DateTime"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$7$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-void
.end method
