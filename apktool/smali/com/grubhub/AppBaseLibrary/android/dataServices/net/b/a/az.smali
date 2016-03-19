.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ay;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;->k:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;->k:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 107
    return-object p0
.end method

.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ay;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ay;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ay$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;
    .locals 0

    .prologue
    .line 122
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;->j:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/az;->l:Ljava/lang/String;

    .line 112
    return-object p0
.end method
