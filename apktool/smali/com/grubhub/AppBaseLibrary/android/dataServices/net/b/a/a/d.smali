.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/d;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/d;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/c;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyStatusModel;",
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
    .line 54
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/c;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/c$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a/d;
    .locals 0

    .prologue
    .line 64
    return-object p0
.end method
