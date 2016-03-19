.class public final Lcom/google/android/gms/d/bm;
.super Lcom/google/android/gms/d/ee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ee",
        "<",
        "Lcom/google/android/gms/d/bm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:J

.field public d:D

.field public e:Lcom/google/android/gms/d/bl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/ee;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/d/bm;->a()Lcom/google/android/gms/d/bm;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/bm;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/d/bm;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/d/bm;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/d/bm;->d:D

    iput-object v2, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    iput-object v2, p0, Lcom/google/android/gms/d/bm;->r:Lcom/google/android/gms/d/eg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/d/bm;->s:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/bm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/d/bm;->a(Lcom/google/android/gms/d/eb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/d/bm;->a:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/d/bm;->c:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/d/bm;->d:D

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/d/bl;

    invoke-direct {v0}, Lcom/google/android/gms/d/bl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x21 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/d/ec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/d/bm;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/d/bm;->a:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/d/bm;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/d/ec;->a(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/d/bm;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->d:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/d/ec;->a(ID)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(ILcom/google/android/gms/d/ek;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/d/ee;->a(Lcom/google/android/gms/d/ec;)V

    return-void
.end method

.method protected b()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/d/ee;->b()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/d/bm;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/d/bm;->a:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/d/ec;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->d:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/d/ec;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->c(ILcom/google/android/gms/d/ek;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/bm;->a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/bm;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/d/bm;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/d/bm;

    iget-boolean v1, p0, Lcom/google/android/gms/d/bm;->a:Z

    iget-boolean v2, p1, Lcom/google/android/gms/d/bm;->a:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/d/bm;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/d/bm;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/bm;->a(Lcom/google/android/gms/d/ee;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    iget-object v2, p1, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/d/bl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/d/bm;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/d/bm;->c:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/d/bm;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/d/bm;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/d/bm;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/d/bm;->e:Lcom/google/android/gms/d/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/d/bl;->hashCode()I

    move-result v1

    goto :goto_2
.end method
