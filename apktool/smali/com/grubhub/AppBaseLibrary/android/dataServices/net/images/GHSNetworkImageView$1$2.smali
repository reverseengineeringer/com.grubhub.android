.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$2;->a:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$2;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$2;->a:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 217
    return-void
.end method
