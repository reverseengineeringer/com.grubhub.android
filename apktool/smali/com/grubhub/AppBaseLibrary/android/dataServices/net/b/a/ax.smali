.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ax;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/av;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/av;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 97
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ax;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/av;

    .line 98
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;-><init>()V

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO;

    iget v4, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/av;->a:I

    iget-object v5, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/av;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    iget-object v6, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/av;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/c;-><init>(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/c;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/android/volley/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "gh-hotpocket-status"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Lcom/android/volley/NetworkResponse;

    const/16 v1, 0x1f4

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    iget-boolean v4, p1, Lcom/android/volley/NetworkResponse;->notModified:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 108
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 109
    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 112
    :cond_0
    return-object v0
.end method
