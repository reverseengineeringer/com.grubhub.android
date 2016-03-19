.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->d(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 200
    return-void
.end method
