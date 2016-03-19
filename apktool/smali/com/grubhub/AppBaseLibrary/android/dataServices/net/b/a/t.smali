.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/s;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSIAutoCompleteDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:[Ljava/lang/String;

.field protected l:Ljava/lang/Double;

.field protected m:Ljava/lang/Double;

.field protected n:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field protected o:Ljava/lang/Long;

.field protected p:Lcom/grubhub/AppBaseLibrary/android/order/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 133
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->n:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 157
    return-object p0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/order/l;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->p:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 162
    return-object p0
.end method

.method public a(Ljava/lang/Double;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->l:Ljava/lang/Double;

    .line 147
    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->o:Ljava/lang/Long;

    .line 167
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->k:[Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/s;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/s;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/s$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/Double;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->m:Ljava/lang/Double;

    .line 152
    return-object p0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 177
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/t;->j:Ljava/lang/String;

    .line 137
    return-object p0
.end method
