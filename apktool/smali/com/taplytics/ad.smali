.class public Lcom/taplytics/ad;
.super Lcom/taplytics/ac;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLcom/taplytics/ai;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p2}, Lcom/taplytics/ac;-><init>(Lcom/taplytics/ai;)V

    .line 77
    const-string v0, "byte[]"

    invoke-static {p1, v0}, Lcom/taplytics/ao;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/taplytics/ad;->a:[B

    .line 79
    iput-object p3, p0, Lcom/taplytics/ad;->b:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcom/taplytics/ad;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-static {p2}, Lcom/taplytics/ai;->a(Ljava/lang/String;)Lcom/taplytics/ai;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/taplytics/ad;-><init>([BLcom/taplytics/ai;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taplytics/ad;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 103
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/taplytics/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "binary"

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/taplytics/ad;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
