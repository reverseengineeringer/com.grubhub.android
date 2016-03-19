.class public final Lcom/google/android/gms/d/h;
.super Lcom/google/android/gms/d/ee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ee",
        "<",
        "Lcom/google/android/gms/d/h;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lcom/google/android/gms/d/h;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/ee;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/d/h;->c()Lcom/google/android/gms/d/h;

    return-void
.end method

.method public static a()[Lcom/google/android/gms/d/h;
    .locals 2

    sget-object v0, Lcom/google/android/gms/d/h;->c:[Lcom/google/android/gms/d/h;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/d/ei;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/d/h;->c:[Lcom/google/android/gms/d/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/d/h;

    sput-object v0, Lcom/google/android/gms/d/h;->c:[Lcom/google/android/gms/d/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/d/h;->c:[Lcom/google/android/gms/d/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/h;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/d/h;->a(Lcom/google/android/gms/d/eb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/d/h;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/d/h;->b:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/d/ec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/d/h;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/d/h;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(II)V

    invoke-super {p0, p1}, Lcom/google/android/gms/d/ee;->a(Lcom/google/android/gms/d/ec;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/d/ee;->b()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/d/h;->a:I

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/d/h;->b:I

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/h;->a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/d/h;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/d/h;->a:I

    iput v0, p0, Lcom/google/android/gms/d/h;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/d/h;->r:Lcom/google/android/gms/d/eg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/d/h;->s:I

    return-object p0
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
    instance-of v1, p1, Lcom/google/android/gms/d/h;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/d/h;

    iget v1, p0, Lcom/google/android/gms/d/h;->a:I

    iget v2, p1, Lcom/google/android/gms/d/h;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/d/h;->b:I

    iget v2, p1, Lcom/google/android/gms/d/h;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/h;->a(Lcom/google/android/gms/d/ee;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/d/h;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/d/h;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/d/h;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
