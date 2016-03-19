.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/b;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;I",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/b;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 30
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p4, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/b;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 31
    return-void
.end method
