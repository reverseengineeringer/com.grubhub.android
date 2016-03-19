.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/d;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/d;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/d$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;
    .locals 0

    .prologue
    .line 117
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->j:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->k:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->l:Ljava/lang/String;

    .line 107
    return-object p0
.end method
