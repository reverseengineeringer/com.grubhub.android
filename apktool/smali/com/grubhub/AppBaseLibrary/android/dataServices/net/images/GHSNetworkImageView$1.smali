.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;Z)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setImageResource(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->e(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :cond_1
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .prologue
    .line 212
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->a:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$2;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method
