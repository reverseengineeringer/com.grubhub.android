.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/a;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 104
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;

    .line 108
    return-object p0
.end method

.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/a;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/a$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/b;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method
