.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 29
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->c:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 35
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a()V

    .line 37
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->f()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->onResponse(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
