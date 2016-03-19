.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressWrapperDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$39;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$39;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressWrapperDTO;)V
    .locals 2

    .prologue
    .line 1421
    const/4 v0, 0x0

    .line 1422
    if-eqz p1, :cond_0

    .line 1423
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressWrapperDTO;->getAddressList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$39;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    if-eqz v1, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$39;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;->onResponse(Ljava/lang/Object;)V

    .line 1429
    :cond_1
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1417
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressWrapperDTO;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$39;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2SavedAddressWrapperDTO;)V

    return-void
.end method
