.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bg;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:I

.field protected l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bg;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bg;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bg$1;)V

    return-object v0
.end method

.method public b(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;->k:I

    .line 88
    return-object p0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;
    .locals 0

    .prologue
    .line 103
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;->j:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bh;->l:Ljava/lang/String;

    .line 93
    return-object p0
.end method
