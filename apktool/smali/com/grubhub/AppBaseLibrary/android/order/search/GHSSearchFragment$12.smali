.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->y()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V
    .locals 7

    .prologue
    .line 1324
    if-nez p1, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1329
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 1332
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->appliesToVersion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    .line 1333
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;

    invoke-direct {v6, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1321
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V

    return-void
.end method
