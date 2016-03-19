.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;I",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 35
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 36
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->b:Ljava/util/Map;

    .line 37
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 40
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p5, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "I",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 44
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 45
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->b:Ljava/util/Map;

    .line 46
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 49
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p5, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 53
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;-><init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 54
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->b:Ljava/util/Map;

    .line 55
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 56
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
