.class public final Lcom/a/a/h;
.super Lcom/a/a/a;
.source "SourceFile"


# instance fields
.field private h:Z

.field private i:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/a/a/c;Lcom/a/d;J)V
    .locals 8

    .prologue
    .line 71
    sget-object v5, Lcom/a/a/b;->WEB:Lcom/a/a/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/a/a/a;-><init>(Landroid/app/Activity;Lcom/a/a/c;Lcom/a/d;Lcom/a/a/b;J)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/a/a/h;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/a/a/h;->i:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/a/a/h;->i:Landroid/webkit/WebView;

    return-object p1
.end method

.method private a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 239
    const-string v0, "onReceivedError(code:%d, desc:%s, url:%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    .line 242
    return-void
.end method

.method private a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 253
    const-string v0, "onReceivedSslError(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    .line 258
    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 259
    :cond_0
    const-string v0, "Ignoring trust chain validation error."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "Halting due to SSL error."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    sget-object v0, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    new-instance v1, Lorg/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSL ERROR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    .line 266
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 186
    const-string v0, "onLoadResource(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logo.htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logo.php"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/h;->h:Z

    .line 193
    iget-object v1, p0, Lcom/a/a/h;->b:Lcom/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v1, "Unexpected URL problem [%s]"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/h;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/h;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/a/a/h;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 292
    const-string v0, "onConsoleMessage(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u25cf\uff5e*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u25cf\uff5e*"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v1, "<head></head><body></body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    sget-object v0, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error response received from Device Collector."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    .line 317
    :cond_0
    :goto_0
    return v4

    .line 305
    :cond_1
    iget-boolean v0, p0, Lcom/a/a/h;->h:Z

    if-nez v0, :cond_2

    .line 306
    sget-object v0, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Never loaded logo.htm."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p0, v5, v5}, Lcom/a/a/h;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/h;Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/a/a/h;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    const-string v0, "onPageFinished(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:console.log("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u25cf\uff5e*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "document.getElementsByTagName(\'html\')[0].innerHTML"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method static synthetic b(Lcom/a/a/h;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/a/a/h;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    const-string v0, "shouldOverrideUrlLoading(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    return v2
.end method

.method static synthetic c(Lcom/a/a/h;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/a/a/h;->c(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/a/a/h;->b:Lcom/a/d;

    invoke-virtual {v1}, Lcom/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h;->b:Lcom/a/d;

    invoke-virtual {v1}, Lcom/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h;->b:Lcom/a/d;

    invoke-virtual {v1}, Lcom/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "Calling URL: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/a/a/h;->a:Landroid/app/Activity;

    new-instance v2, Lcom/a/a/h$1;

    invoke-direct {v2, p0, v0}, Lcom/a/a/h$1;-><init>(Lcom/a/a/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    monitor-enter p0

    .line 153
    :try_start_0
    const-string v0, "Waiting on Collector for %d ms"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/a/h;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lcom/a/a/h;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 156
    const-string v0, "Wait finished"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/a/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/a/a/h;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    return-void

    .line 162
    :cond_0
    :try_start_2
    const-string v0, "Current Host: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/h;->b:Lcom/a/d;

    invoke-virtual {v3}, Lcom/a/d;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/g;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_3
    sget-object v1, Lcom/a/a/g;->SERVICE_UNAVAILABLE:Lcom/a/a/g;

    invoke-virtual {p0, v1, v0}, Lcom/a/a/h;->a(Lcom/a/a/g;Ljava/lang/Exception;)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
