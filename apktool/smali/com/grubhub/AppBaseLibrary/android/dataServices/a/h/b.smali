.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 34
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->b:Ljava/util/ArrayList;

    .line 35
    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->c:Z

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 40
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 42
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->b:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->c:Z

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->f()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Ljava/util/ArrayList;)V

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    invoke-super {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method
