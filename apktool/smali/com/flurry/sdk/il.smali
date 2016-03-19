.class public abstract Lcom/flurry/sdk/il;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/flurry/sdk/il;->c:I

    .line 46
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/flurry/sdk/il;->a:J

    .line 38
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/flurry/sdk/il;->d:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/flurry/sdk/il;->b:Z

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/sdk/il;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/flurry/sdk/il;->a:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/flurry/sdk/il;->b:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/flurry/sdk/il;->c:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/sdk/il;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/flurry/sdk/il;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/il;->c:I

    .line 50
    return-void
.end method
