.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 33
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 39
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 41
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v1

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->f()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 45
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p1, :cond_2

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setIsSavedAddress(Z)V

    .line 51
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(Ljava/util/ArrayList;)V

    .line 61
    :cond_2
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/d;->a(Ljava/util/ArrayList;)V

    return-void
.end method
