.class public final Lcom/google/android/gms/d/bk;
.super Lcom/google/android/gms/d/ee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/d/ee",
        "<",
        "Lcom/google/android/gms/d/bk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lcom/google/android/gms/d/bk;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/d/bm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/ee;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/d/bk;->c()Lcom/google/android/gms/d/bk;

    return-void
.end method

.method public static a()[Lcom/google/android/gms/d/bk;
    .locals 2

    sget-object v0, Lcom/google/android/gms/d/bk;->c:[Lcom/google/android/gms/d/bk;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/d/ei;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/d/bk;->c:[Lcom/google/android/gms/d/bk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/d/bk;

    sput-object v0, Lcom/google/android/gms/d/bk;->c:[Lcom/google/android/gms/d/bk;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/d/bk;->c:[Lcom/google/android/gms/d/bk;

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
.method public a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/bk;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/d/bk;->a(Lcom/google/android/gms/d/eb;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/d/eb;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/d/bm;

    invoke-direct {v0}, Lcom/google/android/gms/d/bm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/d/eb;->a(Lcom/google/android/gms/d/ek;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/d/ec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/d/ec;->a(ILcom/google/android/gms/d/ek;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/d/ee;->a(Lcom/google/android/gms/d/ec;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/d/ee;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/d/ec;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/bk;->a(Lcom/google/android/gms/d/eb;)Lcom/google/android/gms/d/bk;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/d/bk;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    iput-object v1, p0, Lcom/google/android/gms/d/bk;->r:Lcom/google/android/gms/d/eg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/d/bk;->s:I

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
    instance-of v1, p1, Lcom/google/android/gms/d/bk;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/d/bk;

    iget-object v1, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/d/bk;->a(Lcom/google/android/gms/d/ee;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    iget-object v2, p1, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/d/bm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/d/bk;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/d/bk;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/d/bk;->b:Lcom/google/android/gms/d/bm;

    invoke-virtual {v1}, Lcom/google/android/gms/d/bm;->hashCode()I

    move-result v1

    goto :goto_1
.end method