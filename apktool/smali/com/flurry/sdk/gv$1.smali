.class Lcom/flurry/sdk/gv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ii$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gv;->a([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ii$a",
        "<[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/gv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/flurry/sdk/gv$1;->c:Lcom/flurry/sdk/gv;

    iput-object p2, p0, Lcom/flurry/sdk/gv$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/gv$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ii;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gv$1;->a(Lcom/flurry/sdk/ii;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ii;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ii",
            "<[B",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 135
    invoke-virtual {p1}, Lcom/flurry/sdk/ii;->f()I

    move-result v0

    .line 136
    if-lez v0, :cond_1

    .line 137
    invoke-static {}, Lcom/flurry/sdk/gv;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics report sent."

    invoke-static {v1, v2}, Lcom/flurry/sdk/ib;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/flurry/sdk/gv;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlurryDataSender: report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gv$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent. HTTP response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/flurry/sdk/ib;->c()I

    move-result v1

    if-gt v1, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/ib;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/gv$1$1;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/gv$1$1;-><init>(Lcom/flurry/sdk/gv$1;I)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/hn;->a(Ljava/lang/Runnable;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gv$1;->c:Lcom/flurry/sdk/gv;

    iget-object v2, p0, Lcom/flurry/sdk/gv$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/gv$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/sdk/gv;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/gv$1;->c:Lcom/flurry/sdk/gv;

    invoke-static {v0}, Lcom/flurry/sdk/gv;->a(Lcom/flurry/sdk/gv;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gv$1;->c:Lcom/flurry/sdk/gv;

    iget-object v1, p0, Lcom/flurry/sdk/gv$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/gv$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/gv;->a(Lcom/flurry/sdk/gv;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
