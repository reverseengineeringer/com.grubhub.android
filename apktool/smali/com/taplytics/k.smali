.class public Lcom/taplytics/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/taplytics/l;

.field private final c:Lcom/taplytics/af;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taplytics/af;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/taplytics/ao;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    const-string v0, "Body"

    invoke-static {p2, v0}, Lcom/taplytics/ao;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/taplytics/k;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/taplytics/k;->c:Lcom/taplytics/af;

    .line 55
    new-instance v0, Lcom/taplytics/l;

    invoke-direct {v0}, Lcom/taplytics/l;-><init>()V

    iput-object v0, p0, Lcom/taplytics/k;->b:Lcom/taplytics/l;

    .line 57
    invoke-virtual {p0, p2}, Lcom/taplytics/k;->a(Lcom/taplytics/af;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/taplytics/k;->b(Lcom/taplytics/af;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/taplytics/k;->c(Lcom/taplytics/af;)V

    .line 60
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/taplytics/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/taplytics/af;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/taplytics/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p1}, Lcom/taplytics/af;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p1}, Lcom/taplytics/af;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taplytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcom/taplytics/ao;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/taplytics/k;->b:Lcom/taplytics/l;

    new-instance v1, Lcom/taplytics/x;

    invoke-direct {v1, p1, p2}, Lcom/taplytics/x;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/l;->a(Lcom/taplytics/x;)V

    .line 77
    return-void
.end method

.method public b()Lcom/taplytics/af;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/taplytics/k;->c:Lcom/taplytics/af;

    return-object v0
.end method

.method protected b(Lcom/taplytics/af;)V
    .locals 2

    .prologue
    .line 94
    instance-of v0, p1, Lcom/taplytics/ac;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/taplytics/ac;

    invoke-virtual {v0}, Lcom/taplytics/ac;->a()Lcom/taplytics/ai;

    move-result-object v0

    .line 99
    :goto_0
    if-eqz v0, :cond_1

    .line 100
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/taplytics/ai;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taplytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-interface {p1}, Lcom/taplytics/af;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {p1}, Lcom/taplytics/af;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 105
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p1}, Lcom/taplytics/af;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_2
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taplytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c()Lcom/taplytics/l;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/k;->b:Lcom/taplytics/l;

    return-object v0
.end method

.method protected c(Lcom/taplytics/af;)V
    .locals 2

    .prologue
    .line 113
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lcom/taplytics/af;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taplytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
