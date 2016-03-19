.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/reflect/Type;

.field private final f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$1;

    invoke-direct {v0, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 66
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;

    .line 67
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->h:Ljava/lang/Class;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->e:Ljava/lang/reflect/Type;

    .line 69
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    .line 70
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
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
    .line 110
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$3;

    invoke-direct {v0, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$3;-><init>(Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 116
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->h:Ljava/lang/Class;

    .line 118
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->e:Ljava/lang/reflect/Type;

    .line 120
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$4;

    invoke-direct {v0, p0, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/Response$Listener;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    .line 129
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$5;

    invoke-direct {v0, p0, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    .line 138
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/reflect/Type;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<TT;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$2;

    invoke-direct {v0, p6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 91
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->h:Ljava/lang/Class;

    .line 93
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->e:Ljava/lang/reflect/Type;

    .line 94
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    .line 95
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    .line 96
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->b:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->d:Ljava/lang/String;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->c:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v0, p1, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;->a(Lcom/android/volley/VolleyError;Lcom/android/volley/Request;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 201
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 202
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-direct {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/android/volley/VolleyError;)V

    .line 199
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;->onResponse(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "application/json"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    const-string v1, "Vary"

    const-string v2, "Accept-Encoding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "Content-Type"

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "ETag"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    return-object v0
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0

    .prologue
    .line 255
    return-object p1
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 210
    const-string v0, "Content-Encoding"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Content-Encoding"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 215
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {v1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x4000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 219
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    :goto_2
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;

    if-eqz v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->h:Ljava/lang/Class;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->e:Ljava/lang/reflect/Type;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;->a(Lcom/android/volley/NetworkResponse;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/android/volley/Response;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 249
    :goto_3
    return-object v0

    .line 222
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 223
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 224
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    .line 247
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a(Ljava/lang/Exception;)V

    .line 249
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_3

    .line 231
    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/String;

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_2

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->h:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 240
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_3

    .line 242
    :cond_3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->e:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_3
.end method
