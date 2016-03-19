.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:F

.field private l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->k:F

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->k:F

    .line 122
    return-object p0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    .line 127
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;
    .locals 0

    .prologue
    .line 137
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->j:Ljava/lang/String;

    .line 117
    return-object p0
.end method
