.class Lcom/taplytics/p;
.super Lcom/taplytics/j;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taplytics/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taplytics/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/taplytics/j;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 51
    iput-object p4, p0, Lcom/taplytics/p;->b:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taplytics/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taplytics/p;->b:Ljava/util/List;

    return-object v0
.end method

.method protected a(Lcom/taplytics/k;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/taplytics/k;->c()Lcom/taplytics/l;

    move-result-object v0

    .line 69
    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lcom/taplytics/l;->a(Ljava/lang/String;)Lcom/taplytics/x;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/taplytics/p;->a:Ljava/nio/charset/Charset;

    invoke-static {v1, v2, p2}, Lcom/taplytics/p;->a(Lcom/taplytics/x;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {p1}, Lcom/taplytics/k;->b()Lcom/taplytics/af;

    move-result-object v1

    invoke-interface {v1}, Lcom/taplytics/af;->d()Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/taplytics/l;->a(Ljava/lang/String;)Lcom/taplytics/x;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/taplytics/p;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, p2}, Lcom/taplytics/p;->a(Lcom/taplytics/x;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 77
    :cond_0
    return-void
.end method
