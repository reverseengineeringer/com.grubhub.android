.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cp;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;)J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;->k:J

    return-wide v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;->k:J

    .line 112
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cp;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cp;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cp$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;
    .locals 0

    .prologue
    .line 122
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cq;->j:Ljava/lang/String;

    .line 107
    return-object p0
.end method
