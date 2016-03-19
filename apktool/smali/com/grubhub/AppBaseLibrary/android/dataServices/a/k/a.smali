.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 28
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 35
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 54
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->i(Ljava/lang/String;)V

    .line 55
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->j(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->o(Z)V

    .line 60
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 61
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;)V
    .locals 2

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->i(Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;->getRulesUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->j(Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;)V

    return-void
.end method
