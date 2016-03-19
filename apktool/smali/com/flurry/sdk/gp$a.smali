.class public Lcom/flurry/sdk/gp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/iv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/iv",
        "<",
        "Lcom/flurry/sdk/gp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/gp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v2, Lcom/flurry/sdk/gp$a$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/gp$a$2;-><init>(Lcom/flurry/sdk/gp$a;Ljava/io/InputStream;)V

    .line 92
    new-instance v1, Lcom/flurry/sdk/gp;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/gp;-><init>(Lcom/flurry/sdk/gp$1;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/flurry/sdk/gp;->a(J)V

    .line 95
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gp;->a(Z)V

    .line 96
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gp;->a(I)V

    .line 97
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gp;->b(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gp;->c(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/gp;->a:J

    move-object v0, v1

    .line 102
    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/gp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance v0, Lcom/flurry/sdk/gp$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/gp$a$1;-><init>(Lcom/flurry/sdk/gp$a;Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {p2}, Lcom/flurry/sdk/gp;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 69
    invoke-virtual {p2}, Lcom/flurry/sdk/gp;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 70
    invoke-virtual {p2}, Lcom/flurry/sdk/gp;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    invoke-virtual {p2}, Lcom/flurry/sdk/gp;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/flurry/sdk/gp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 74
    iget-wide v2, p2, Lcom/flurry/sdk/gp;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 76
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    check-cast p2, Lcom/flurry/sdk/gp;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gp$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/gp;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gp$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/gp;

    move-result-object v0

    return-object v0
.end method
