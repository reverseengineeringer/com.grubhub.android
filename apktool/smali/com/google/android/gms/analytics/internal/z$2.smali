.class Lcom/google/android/gms/analytics/internal/z$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/z;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lcom/google/android/gms/analytics/internal/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/z;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/z$2;->b:Lcom/google/android/gms/analytics/internal/z;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/z$2;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/z$2;->b:Lcom/google/android/gms/analytics/internal/z;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/z;->a:Lcom/google/android/gms/analytics/internal/y;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/z$2;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/y;->a(Lcom/google/android/gms/analytics/internal/y;Landroid/content/ComponentName;)V

    return-void
.end method
