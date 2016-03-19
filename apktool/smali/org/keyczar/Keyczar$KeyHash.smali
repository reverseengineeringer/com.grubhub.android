.class Lorg/keyczar/Keyczar$KeyHash;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field final synthetic this$0:Lorg/keyczar/Keyczar;


# direct methods
.method private constructor <init>(Lorg/keyczar/Keyczar;[B)V
    .locals 2

    .prologue
    .line 55
    iput-object p1, p0, Lorg/keyczar/Keyczar$KeyHash;->this$0:Lorg/keyczar/Keyczar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    array-length v0, p2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p2, p0, Lorg/keyczar/Keyczar$KeyHash;->data:[B

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lorg/keyczar/Keyczar;[BLorg/keyczar/Keyczar$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/keyczar/Keyczar$KeyHash;-><init>(Lorg/keyczar/Keyczar;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 64
    instance-of v0, p1, Lorg/keyczar/Keyczar$KeyHash;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/keyczar/Keyczar$KeyHash;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/keyczar/Keyczar$KeyHash;->data:[B

    invoke-static {v0}, Lorg/keyczar/util/Util;->toInt([B)I

    move-result v0

    return v0
.end method
