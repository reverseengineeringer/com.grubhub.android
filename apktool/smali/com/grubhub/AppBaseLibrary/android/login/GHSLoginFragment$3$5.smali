.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 376
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v0

    .line 377
    invoke-static {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 379
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v6, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->b:Landroid/app/Activity;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5$1;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;)V

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    .line 391
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->m(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;->a()V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->h(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)[Z

    move-result-object v0

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 394
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->i(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$3$5;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V

    return-void
.end method
