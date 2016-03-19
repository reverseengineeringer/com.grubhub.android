.class Lcom/google/android/gms/tagmanager/n$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/n;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/n$3;->a:Lcom/google/android/gms/tagmanager/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/n$3;->a:Lcom/google/android/gms/tagmanager/n;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->b()V

    :cond_0
    return-void
.end method
