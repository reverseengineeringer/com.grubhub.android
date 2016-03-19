.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# instance fields
.field final a:I

.field final b:I

.field private c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;->a:I

    .line 12
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;->a:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;->b:I

    .line 15
    new-instance v0, Landroid/util/LruCache;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;->c:Landroid/util/LruCache;

    .line 16
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method
