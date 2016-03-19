.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bn;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bn;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bm;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bn;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bn;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bm;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bm;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bn;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bm$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bn;
    .locals 0

    .prologue
    .line 59
    return-object p0
.end method
