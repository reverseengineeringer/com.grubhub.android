.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/Long;

.field protected n:Lcom/grubhub/AppBaseLibrary/android/order/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 141
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/order/l;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;->n:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 160
    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;->m:Ljava/lang/Long;

    .line 165
    return-object p0
.end method

.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bc$1;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;
    .locals 0

    .prologue
    .line 175
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;->j:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;->k:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bd;->l:Ljava/lang/String;

    .line 155
    return-object p0
.end method
