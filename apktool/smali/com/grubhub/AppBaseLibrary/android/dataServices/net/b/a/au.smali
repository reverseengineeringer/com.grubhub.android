.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/at;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;",
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
    .line 85
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/at;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/at;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/at;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/at$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;
    .locals 0

    .prologue
    .line 105
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;->j:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/au;->k:Ljava/lang/String;

    .line 95
    return-object p0
.end method
