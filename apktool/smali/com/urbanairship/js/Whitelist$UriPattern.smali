.class Lcom/urbanairship/js/Whitelist$UriPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final host:Ljava/util/regex/Pattern;

.field private final path:Ljava/util/regex/Pattern;

.field private final scheme:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/urbanairship/js/Whitelist;


# direct methods
.method constructor <init>(Lcom/urbanairship/js/Whitelist;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->this$0:Lcom/urbanairship/js/Whitelist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->scheme:Ljava/util/regex/Pattern;

    .line 247
    iput-object p3, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->host:Ljava/util/regex/Pattern;

    .line 248
    iput-object p4, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->path:Ljava/util/regex/Pattern;

    .line 249
    return-void
.end method


# virtual methods
.method matches(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->scheme:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->scheme:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->host:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->host:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->path:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/js/Whitelist$UriPattern;->path:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
