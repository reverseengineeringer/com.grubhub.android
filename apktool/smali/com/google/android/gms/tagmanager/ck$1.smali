.class Lcom/google/android/gms/tagmanager/ck$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ck;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ep;Lcom/google/android/gms/tagmanager/cm;Lcom/google/android/gms/tagmanager/cl;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ck$1;->a:Lcom/google/android/gms/tagmanager/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
