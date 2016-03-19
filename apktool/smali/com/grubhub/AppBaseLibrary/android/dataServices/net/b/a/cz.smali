.class public abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cz;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;>;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation
.end method

.method public synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cz;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
