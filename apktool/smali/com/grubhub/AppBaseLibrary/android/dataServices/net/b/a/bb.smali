.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ba;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    .line 97
    return-object p0
.end method

.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ba;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ba;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ba;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bb;
    .locals 0

    .prologue
    .line 107
    return-object p0
.end method
