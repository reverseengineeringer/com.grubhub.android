.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bw;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bw;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bw;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bw$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;
    .locals 0

    .prologue
    .line 141
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bx;->j:Ljava/lang/String;

    .line 131
    return-object p0
.end method
