.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cf;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;)Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;

    .line 188
    return-object p0
.end method

.method public a(Z)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;->k:Z

    .line 183
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cf;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cf;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cf$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;
    .locals 0

    .prologue
    .line 198
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cg;->j:Ljava/lang/String;

    .line 178
    return-object p0
.end method
