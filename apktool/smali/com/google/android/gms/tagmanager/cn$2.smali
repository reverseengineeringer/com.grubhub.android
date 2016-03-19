.class Lcom/google/android/gms/tagmanager/cn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cn;->a(Lcom/google/android/gms/d/cn;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/d/cn;

.field final synthetic b:Lcom/google/android/gms/tagmanager/cn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cn;Lcom/google/android/gms/d/cn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn$2;->b:Lcom/google/android/gms/tagmanager/cn;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cn$2;->a:Lcom/google/android/gms/d/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn$2;->b:Lcom/google/android/gms/tagmanager/cn;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn$2;->a:Lcom/google/android/gms/d/cn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cn;->b(Lcom/google/android/gms/d/cn;)Z

    return-void
.end method
