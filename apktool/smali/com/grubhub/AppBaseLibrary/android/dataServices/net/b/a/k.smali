.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;

    .line 155
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;
    .locals 0

    .prologue
    .line 165
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;->j:Ljava/lang/String;

    .line 150
    return-object p0
.end method
