.class final Lcom/facebook/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/internal/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/facebook/internal/w;->a:Ljava/io/File;

    .line 647
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/w;->b:J

    .line 648
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/w;)I
    .locals 4

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/facebook/internal/w;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/internal/w;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 661
    const/4 v0, -0x1

    .line 665
    :goto_0
    return v0

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/w;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/internal/w;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 663
    const/4 v0, 0x1

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/w;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/internal/w;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method a()Ljava/io/File;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/facebook/internal/w;->a:Ljava/io/File;

    return-object v0
.end method

.method b()J
    .locals 2

    .prologue
    .line 655
    iget-wide v0, p0, Lcom/facebook/internal/w;->b:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 638
    check-cast p1, Lcom/facebook/internal/w;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/w;->a(Lcom/facebook/internal/w;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 671
    instance-of v0, p1, Lcom/facebook/internal/w;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/internal/w;

    .line 673
    invoke-virtual {p0, p1}, Lcom/facebook/internal/w;->a(Lcom/facebook/internal/w;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 678
    .line 680
    iget-object v0, p0, Lcom/facebook/internal/w;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x431

    .line 681
    mul-int/lit8 v0, v0, 0x25

    iget-wide v2, p0, Lcom/facebook/internal/w;->b:J

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 683
    return v0
.end method
