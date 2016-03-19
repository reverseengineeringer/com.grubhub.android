.class public final Lcom/google/android/gms/d/g;
.super Lcom/google/android/gms/d/ee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ee",
        "<",
        "Lcom/google/android/gms/d/g;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lcom/google/android/gms/d/o;

.field public b:[Lcom/google/android/gms/d/o;

.field public c:[Lcom/google/android/gms/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/ee;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/d/g;->a()Lcom/google/android/gms/d/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/g;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/d/o;->a()[Lcom/google/android/gms/d/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    invoke-static {}, Lcom/google/android/gms/d/o;->a()[Lcom/google/android/gms/d/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    invoke-static {}, Lcom/google/android/gms/d/f;->a()[Lcom/google/android/gms/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/d/g;->r:Lcom/google/android/gms/d/eg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/d/g;->s:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/d/g;->a(Lcom/google/android/gms/d/eb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/d/en;->a(Lcom/google/android/gms/d/eb;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/d/o;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/d/o;

    invoke-direct {v3}, Lcom/google/android/gms/d/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/d/o;

    invoke-direct {v3}, Lcom/google/android/gms/d/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    iput-object v2, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/d/en;->a(Lcom/google/android/gms/d/eb;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/d/o;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/d/o;

    invoke-direct {v3}, Lcom/google/android/gms/d/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/d/o;

    invoke-direct {v3}, Lcom/google/android/gms/d/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    iput-object v2, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/d/en;->a(Lcom/google/android/gms/d/eb;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/d/f;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/d/f;

    invoke-direct {v3}, Lcom/google/android/gms/d/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/d/f;

    invoke-direct {v3}, Lcom/google/android/gms/d/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    iput-object v2, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/d/ec;->a(ILcom/google/android/gms/d/ek;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/d/ec;->a(ILcom/google/android/gms/d/ek;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/d/ec;->a(ILcom/google/android/gms/d/ek;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/d/ee;->a(Lcom/google/android/gms/d/ec;)V

    return-void
.end method

.method protected b()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/d/ee;->b()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/d/ec;->c(ILcom/google/android/gms/d/ek;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/d/ec;->c(ILcom/google/android/gms/d/ek;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    array-length v2, v2

    if-lez v2, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/d/ec;->c(ILcom/google/android/gms/d/ek;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/g;->a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/g;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/d/g;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/d/g;

    iget-object v1, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    iget-object v2, p1, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ei;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    iget-object v2, p1, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ei;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    iget-object v2, p1, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ei;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/g;->a(Lcom/google/android/gms/d/ee;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:[Lcom/google/android/gms/d/o;

    invoke-static {v0}, Lcom/google/android/gms/d/ei;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/d/g;->b:[Lcom/google/android/gms/d/o;

    invoke-static {v1}, Lcom/google/android/gms/d/ei;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/d/g;->c:[Lcom/google/android/gms/d/f;

    invoke-static {v1}, Lcom/google/android/gms/d/ei;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/d/g;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
