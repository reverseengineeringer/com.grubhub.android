.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p4, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 30
    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->b:Z

    .line 31
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 36
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->a()V

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->b:Z

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->f()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/d;->onResponse(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
