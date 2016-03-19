.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;)V
    .locals 0

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<",
            "Ljava/lang/Void;",
            ">;I)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 1828
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)V

    .line 1867
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    const-string v2, "createOrderReview"

    invoke-static {v1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
