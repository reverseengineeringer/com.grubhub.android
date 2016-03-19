.class Lcom/google/android/gms/tagmanager/at$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/at;-><init>(ILcom/google/android/gms/tagmanager/eb;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eb;

.field final synthetic b:Lcom/google/android/gms/tagmanager/at;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/at;ILcom/google/android/gms/tagmanager/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/at$1;->b:Lcom/google/android/gms/tagmanager/at;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/at$1;->a:Lcom/google/android/gms/tagmanager/eb;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/at$1;->a:Lcom/google/android/gms/tagmanager/eb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/eb;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
