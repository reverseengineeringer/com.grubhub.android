.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;",
        ">;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p6, p7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 36
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->b:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->c:I

    .line 38
    iput p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->d:I

    .line 39
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->e:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 44
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->c:I

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->d:I

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->f()Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V
    .locals 6

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->C()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;

    move-result-object v1

    .line 53
    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->d:I

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;->getReviews()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;

    move-result-object v2

    .line 56
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;->getRatingCount()I

    move-result v3

    .line 58
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;->getReviews()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;

    move-result-object v4

    .line 59
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;->getReviewList()Ljava/util/ArrayList;

    move-result-object v5

    .line 60
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;->getRatingCount()I

    move-result v4

    .line 62
    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;->updateRatingCount(I)V

    .line 63
    invoke-interface {v2, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel$GHSIReviews;->addToReviewList(Ljava/util/ArrayList;)V

    .line 65
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V

    .line 66
    invoke-super {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V

    .line 70
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V

    return-void
.end method
