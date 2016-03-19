.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cb;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cb;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cb;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cb$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;
    .locals 0

    .prologue
    .line 91
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;->j:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cc;->k:Ljava/lang/String;

    .line 81
    return-object p0
.end method
