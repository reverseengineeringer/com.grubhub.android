.class public Lcom/taplytics/an;
.super Lcom/taplytics/ac;
.source "SourceFile"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taplytics/ai;)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p2}, Lcom/taplytics/ac;-><init>(Lcom/taplytics/ai;)V

    .line 152
    const-string v0, "Text"

    invoke-static {p1, v0}, Lcom/taplytics/ao;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p2}, Lcom/taplytics/ai;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/an;->a:[B

    .line 155
    return-void

    .line 154
    :cond_0
    sget-object v0, Lcom/taplytics/ae;->b:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcom/taplytics/ao;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/taplytics/an;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 168
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 169
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 172
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "8bit"

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/taplytics/an;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
