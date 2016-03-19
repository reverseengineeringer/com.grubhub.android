.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/Double;

.field protected k:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 125
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;->j:Ljava/lang/Double;

    .line 129
    return-object p0
.end method

.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bq$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/Double;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;->k:Ljava/lang/Double;

    .line 134
    return-object p0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/br;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method
