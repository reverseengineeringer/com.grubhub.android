.class Lcom/google/android/gms/maps/h$1;
.super Lcom/google/android/gms/maps/internal/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/h;->a(Lcom/google/android/gms/maps/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/e;

.field final synthetic b:Lcom/google/android/gms/maps/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/h;Lcom/google/android/gms/maps/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/h$1;->b:Lcom/google/android/gms/maps/h;

    iput-object p2, p0, Lcom/google/android/gms/maps/h$1;->a:Lcom/google/android/gms/maps/e;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/internal/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/h$1;->a:Lcom/google/android/gms/maps/e;

    new-instance v1, Lcom/google/android/gms/maps/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/c;-><init>(Lcom/google/android/gms/maps/internal/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/e;->a(Lcom/google/android/gms/maps/c;)V

    return-void
.end method
