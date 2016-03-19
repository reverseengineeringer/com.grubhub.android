.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;->j:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;)",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;"
        }
    .end annotation

    .prologue
    .line 165
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;->j:Ljava/util/ArrayList;

    .line 166
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cx$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cy;
    .locals 0

    .prologue
    .line 176
    return-object p0
.end method
