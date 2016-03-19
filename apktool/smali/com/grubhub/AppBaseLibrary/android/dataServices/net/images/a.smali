.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;


# instance fields
.field private b:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/b;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->b:Lcom/android/volley/toolbox/ImageLoader;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;

    .line 40
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setDefaultImageResId(I)V

    .line 57
    invoke-virtual {p3, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setFallbackImageUrl(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->b:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {p3, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 60
    return-object p3
.end method
