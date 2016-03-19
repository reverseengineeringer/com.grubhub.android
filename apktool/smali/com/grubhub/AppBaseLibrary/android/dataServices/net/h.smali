.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 501
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/NetworkResponse;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/android/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 510
    if-eqz p2, :cond_0

    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;-><init>()V

    .line 513
    invoke-virtual {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->parseJSONMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 517
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    .line 520
    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;-><init>()V

    .line 524
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->parseXMLErrors(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 529
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_1
    invoke-static {p2, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_2
    if-eqz p3, :cond_3

    .line 545
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    :goto_1
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 551
    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2, p4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 552
    :catch_1
    move-exception v0

    .line 556
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/h;->a:Ljava/lang/String;

    const-string v2, "Parse network response error."

    invoke-static {v1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/android/volley/VolleyError;Lcom/android/volley/Request;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/VolleyError;",
            "Lcom/android/volley/Request",
            "<TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {v1, p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/android/volley/VolleyError;)V

    .line 567
    iget-object v0, v1, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/grubhub/AppBaseLibrary/android/b/b;->a:Lcom/android/volley/NetworkResponse;

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_3

    .line 573
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 574
    if-eqz v2, :cond_1

    .line 575
    new-instance v0, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 581
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;-><init>()V

    .line 585
    invoke-virtual {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->parseJSONMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 586
    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;Ljava/util/ArrayList;)V

    .line 594
    :cond_0
    :goto_1
    invoke-interface {p3, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 604
    :goto_2
    return-void

    .line 577
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-interface {p3, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_2

    .line 587
    :cond_2
    if-eqz v0, :cond_0

    :try_start_1
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;-><init>()V

    .line 590
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->parseXMLErrors(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;)Ljava/util/ArrayList;

    move-result-object v0

    .line 591
    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 602
    :cond_3
    invoke-interface {p3, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_2
.end method
