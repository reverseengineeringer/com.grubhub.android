.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/al;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/al;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/al;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/al;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/al$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/am;->j:Ljava/lang/String;

    .line 80
    return-object p0
.end method
