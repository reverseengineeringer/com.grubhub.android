.class public final Lcom/taplytics/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/taplytics/ai;

.field public static final b:Lcom/taplytics/ai;

.field public static final c:Lcom/taplytics/ai;

.field public static final d:Lcom/taplytics/ai;

.field public static final e:Lcom/taplytics/ai;

.field public static final f:Lcom/taplytics/ai;

.field public static final g:Lcom/taplytics/ai;

.field public static final h:Lcom/taplytics/ai;

.field public static final i:Lcom/taplytics/ai;

.field public static final j:Lcom/taplytics/ai;

.field public static final k:Lcom/taplytics/ai;

.field public static final l:Lcom/taplytics/ai;

.field public static final m:Lcom/taplytics/ai;

.field public static final n:Lcom/taplytics/ai;

.field private static final serialVersionUID:J = -0x6bcff2af98b1a2b8L


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Ljava/nio/charset/Charset;

.field private final q:[Lorg/apache/http/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string v0, "application/atom+xml"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->a:Lcom/taplytics/ai;

    .line 63
    const-string v0, "application/x-www-form-urlencoded"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->b:Lcom/taplytics/ai;

    .line 64
    const-string v0, "application/json"

    sget-object v2, Lcom/taplytics/ae;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->c:Lcom/taplytics/ai;

    .line 65
    const-string v2, "application/octet-stream"

    move-object v0, v1

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {v2, v0}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->d:Lcom/taplytics/ai;

    .line 66
    const-string v0, "application/svg+xml"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->e:Lcom/taplytics/ai;

    .line 67
    const-string v0, "application/xhtml+xml"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->f:Lcom/taplytics/ai;

    .line 68
    const-string v0, "application/xml"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->g:Lcom/taplytics/ai;

    .line 69
    const-string v0, "multipart/form-data"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->h:Lcom/taplytics/ai;

    .line 70
    const-string v0, "text/html"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->i:Lcom/taplytics/ai;

    .line 71
    const-string v0, "text/plain"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->j:Lcom/taplytics/ai;

    .line 72
    const-string v0, "text/xml"

    sget-object v2, Lcom/taplytics/ae;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->k:Lcom/taplytics/ai;

    .line 73
    const-string v0, "*/*"

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/taplytics/ai;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;

    move-result-object v0

    sput-object v0, Lcom/taplytics/ai;->l:Lcom/taplytics/ai;

    .line 76
    sget-object v0, Lcom/taplytics/ai;->j:Lcom/taplytics/ai;

    sput-object v0, Lcom/taplytics/ai;->m:Lcom/taplytics/ai;

    .line 77
    sget-object v0, Lcom/taplytics/ai;->d:Lcom/taplytics/ai;

    sput-object v0, Lcom/taplytics/ai;->n:Lcom/taplytics/ai;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/taplytics/ai;->o:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/taplytics/ai;->p:Ljava/nio/charset/Charset;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/ai;->q:[Lorg/apache/http/NameValuePair;

    .line 87
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/taplytics/ai;
    .locals 2

    .prologue
    .line 168
    new-instance v1, Lcom/taplytics/ai;

    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Lcom/taplytics/ai;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/taplytics/ai;
    .locals 3

    .prologue
    .line 155
    const-string v0, "MIME type"

    invoke-static {p0, v0}, Lcom/taplytics/ao;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/taplytics/ai;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MIME type may not contain reserved characters"

    invoke-static {v1, v2}, Lcom/taplytics/ao;->a(ZLjava/lang/String;)V

    .line 157
    new-instance v1, Lcom/taplytics/ai;

    invoke-direct {v1, v0, p1}, Lcom/taplytics/ai;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 139
    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 143
    :cond_0
    :goto_1
    return v1

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/taplytics/ai;->o:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/taplytics/ai;->p:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 125
    iget-object v1, p0, Lcom/taplytics/ai;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/taplytics/ai;->q:[Lorg/apache/http/NameValuePair;

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "; "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 128
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    iget-object v2, p0, Lcom/taplytics/ai;->q:[Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/taplytics/ai;->p:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/taplytics/ai;->p:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method
