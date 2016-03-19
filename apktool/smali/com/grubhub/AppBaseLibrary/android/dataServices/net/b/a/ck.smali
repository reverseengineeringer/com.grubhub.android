.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cj;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;

    .line 139
    return-object p0
.end method

.method public a(Z)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;->k:Z

    .line 134
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cj;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cj;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cj$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;
    .locals 0

    .prologue
    .line 149
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ck;->j:Ljava/lang/String;

    .line 129
    return-object p0
.end method
