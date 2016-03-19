.class public final Lcom/google/android/gms/d/cn;
.super Lcom/google/android/gms/d/ee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ee",
        "<",
        "Lcom/google/android/gms/d/cn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/google/android/gms/d/i;

.field public c:Lcom/google/android/gms/d/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/ee;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/d/cn;->a()Lcom/google/android/gms/d/cn;

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/d/cn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/d/ej;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/d/cn;

    invoke-direct {v0}, Lcom/google/android/gms/d/cn;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/d/ek;->a(Lcom/google/android/gms/d/ek;[B)Lcom/google/android/gms/d/ek;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cn;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/cn;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/d/cn;->a:J

    iput-object v2, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    iput-object v2, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    iput-object v2, p0, Lcom/google/android/gms/d/cn;->r:Lcom/google/android/gms/d/eg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/d/cn;->s:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/cn;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/d/cn;->a(Lcom/google/android/gms/d/eb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/d/cn;->a:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/d/i;

    invoke-direct {v0}, Lcom/google/android/gms/d/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/d/m;

    invoke-direct {v0}, Lcom/google/android/gms/d/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/d/ec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/d/cn;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/d/ec;->a(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(ILcom/google/android/gms/d/ek;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(ILcom/google/android/gms/d/ek;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/d/ee;->a(Lcom/google/android/gms/d/ec;)V

    return-void
.end method

.method protected b()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/d/ee;->b()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/d/cn;->a:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/d/ec;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->c(ILcom/google/android/gms/d/ek;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->c(ILcom/google/android/gms/d/ek;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/cn;->a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/cn;

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
    instance-of v1, p1, Lcom/google/android/gms/d/cn;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/d/cn;

    iget-wide v2, p0, Lcom/google/android/gms/d/cn;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/d/cn;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/cn;->a(Lcom/google/android/gms/d/ee;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    iget-object v2, p1, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/d/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    iget-object v2, p1, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/d/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/d/cn;->a:J

    iget-wide v4, p0, Lcom/google/android/gms/d/cn;->a:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/d/cn;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/d/cn;->b:Lcom/google/android/gms/d/i;

    invoke-virtual {v0}, Lcom/google/android/gms/d/i;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/d/cn;->c:Lcom/google/android/gms/d/m;

    invoke-virtual {v1}, Lcom/google/android/gms/d/m;->hashCode()I

    move-result v1

    goto :goto_1
.end method
