.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/p;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/Double;

.field protected l:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Double;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;->k:Ljava/lang/Double;

    .line 147
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/p;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/p;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/p$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/Double;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;->l:Ljava/lang/Double;

    .line 152
    return-object p0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;
    .locals 0

    .prologue
    .line 162
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/r;->j:Ljava/lang/String;

    .line 142
    return-object p0
.end method
