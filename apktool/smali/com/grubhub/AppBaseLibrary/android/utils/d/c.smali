.class Lcom/grubhub/AppBaseLibrary/android/utils/d/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/utils/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/d/a;Lcom/grubhub/AppBaseLibrary/android/utils/d/a;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;->a:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/d/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 227
    :cond_0
    return-void
.end method
