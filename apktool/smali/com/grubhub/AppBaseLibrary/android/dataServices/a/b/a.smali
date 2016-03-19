.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 20
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->c:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 26
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a()V

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->f()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 2

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 41
    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 42
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->g(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->onResponse(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
