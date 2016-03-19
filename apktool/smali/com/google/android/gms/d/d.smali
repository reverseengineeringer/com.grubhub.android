.class public final Lcom/google/android/gms/d/d;
.super Lcom/google/android/gms/d/ee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ee",
        "<",
        "Lcom/google/android/gms/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/ee;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/d/d;->a()Lcom/google/android/gms/d/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/d;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/d/d;->a:I

    iput v1, p0, Lcom/google/android/gms/d/d;->b:I

    iput v1, p0, Lcom/google/android/gms/d/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/d/d;->r:Lcom/google/android/gms/d/eg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/d/d;->s:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/d;
    .locals 1
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/d/d;->a(Lcom/google/android/gms/d/eb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/d/d;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/d/d;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/d/d;->c:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/android/gms/d/ec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/d/d;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/d/d;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/d/ec;->a(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/d/d;->b:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/d/d;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/d/d;->c:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/d/d;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/d/ee;->a(Lcom/google/android/gms/d/ec;)V

    return-void
.end method

.method protected b()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/d/ee;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/d/d;->a:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/d/d;->a:I

    invoke-static {v2, v1}, Lcom/google/android/gms/d/ec;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/d/d;->b:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/d/d;->b:I

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/d/d;->c:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/d/d;->c:I

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/d;->a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/d;

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
    instance-of v1, p1, Lcom/google/android/gms/d/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/d/d;

    iget v1, p0, Lcom/google/android/gms/d/d;->a:I

    iget v2, p1, Lcom/google/android/gms/d/d;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/d/d;->b:I

    iget v2, p1, Lcom/google/android/gms/d/d;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/d/d;->c:I

    iget v2, p1, Lcom/google/android/gms/d/d;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/d;->a(Lcom/google/android/gms/d/ee;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/d/d;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/d/d;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/d/d;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/d/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
