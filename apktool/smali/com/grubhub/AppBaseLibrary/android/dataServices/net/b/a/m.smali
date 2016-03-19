.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/l;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;

    .line 132
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/l;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/l;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/l;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;
    .locals 0

    .prologue
    .line 142
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/m;->j:Ljava/lang/String;

    .line 127
    return-object p0
.end method
