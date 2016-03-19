.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aj;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryLookupDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aj;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aj;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aj$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;
    .locals 0

    .prologue
    .line 82
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ak;->j:Ljava/lang/String;

    .line 72
    return-object p0
.end method
