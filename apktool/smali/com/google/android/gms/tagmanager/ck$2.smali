.class Lcom/google/android/gms/tagmanager/ck$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ck;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ep;Lcom/google/android/gms/tagmanager/cm;Lcom/google/android/gms/tagmanager/cl;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ck$2;->a:Lcom/google/android/gms/tagmanager/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/ep;)Lcom/google/android/gms/tagmanager/cj;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/cj;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ck$2;->a:Lcom/google/android/gms/tagmanager/ck;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ck;->a(Lcom/google/android/gms/tagmanager/ck;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ck$2;->a:Lcom/google/android/gms/tagmanager/ck;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/ck;->b(Lcom/google/android/gms/tagmanager/ck;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/cj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ep;)V

    return-object v0
.end method
