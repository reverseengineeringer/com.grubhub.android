.class Lcom/google/android/gms/tagmanager/ea;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/tagmanager/eb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/eb",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/ea$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/ea$1;-><init>(Lcom/google/android/gms/tagmanager/ea;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ea;->a:Lcom/google/android/gms/tagmanager/eb;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public a(ILcom/google/android/gms/tagmanager/eb;)Lcom/google/android/gms/tagmanager/dz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/eb",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/tagmanager/dz",
            "<TK;TV;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ea;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/tagmanager/cz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/cz;-><init>(ILcom/google/android/gms/tagmanager/eb;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/at;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/at;-><init>(ILcom/google/android/gms/tagmanager/eb;)V

    goto :goto_0
.end method
