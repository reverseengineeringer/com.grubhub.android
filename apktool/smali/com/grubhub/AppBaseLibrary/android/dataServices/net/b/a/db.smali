.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/da;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    .line 128
    return-object p0
.end method

.method public a(Z)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->l:Z

    .line 123
    return-object p0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/da;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/da;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/da;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;)V

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;
    .locals 0

    .prologue
    .line 138
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->j:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/db;->k:Ljava/lang/String;

    .line 118
    return-object p0
.end method
