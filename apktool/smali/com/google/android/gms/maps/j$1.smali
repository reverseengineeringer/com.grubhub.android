.class Lcom/google/android/gms/maps/j$1;
.super Lcom/google/android/gms/maps/internal/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/j;->a(Lcom/google/android/gms/maps/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/f;

.field final synthetic b:Lcom/google/android/gms/maps/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/j;Lcom/google/android/gms/maps/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/j$1;->b:Lcom/google/android/gms/maps/j;

    iput-object p2, p0, Lcom/google/android/gms/maps/j$1;->a:Lcom/google/android/gms/maps/f;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/internal/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/j$1;->a:Lcom/google/android/gms/maps/f;

    new-instance v1, Lcom/google/android/gms/maps/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/g;-><init>(Lcom/google/android/gms/maps/internal/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/f;->a(Lcom/google/android/gms/maps/g;)V

    return-void
.end method
