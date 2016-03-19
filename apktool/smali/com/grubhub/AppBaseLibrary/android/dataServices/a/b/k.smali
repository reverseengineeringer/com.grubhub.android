.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/k;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/l;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;)V
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_1

    .line 31
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSCartState;->CHECKOUT_COMPLETE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSCartState;

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;->retainCarts(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSCartState;)V

    .line 34
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;->getUserCarts()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;->getUserCarts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 38
    :cond_1
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/l;->onResponse(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/k;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;)V

    return-void
.end method
