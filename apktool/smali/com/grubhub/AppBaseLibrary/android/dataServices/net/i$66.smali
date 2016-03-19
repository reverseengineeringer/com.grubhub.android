.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$66;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$66;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$66;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2330
    return-void
.end method
