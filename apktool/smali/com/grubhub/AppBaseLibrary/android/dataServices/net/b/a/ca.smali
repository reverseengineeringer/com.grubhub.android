.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bz;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bz;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bz;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bz$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;->j:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ca;->k:Ljava/lang/String;

    .line 108
    return-object p0
.end method
