.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Lcom/android/volley/toolbox/ImageLoader;

.field private f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->d:I

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->c:I

    if-eqz v0, :cond_0

    .line 237
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->c:I

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setImageResource(I)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->e:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->c:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->e:Lcom/android/volley/toolbox/ImageLoader;

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Z)V

    .line 106
    return-void
.end method

.method a(Z)V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->getWidth()I

    move-result v5

    .line 141
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->getHeight()I

    move-result v4

    .line 144
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 145
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v6, :cond_1

    move v0, v1

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v6, :cond_2

    move v3, v1

    .line 151
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 152
    :goto_2
    if-nez v5, :cond_4

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    .line 233
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 145
    goto :goto_0

    :cond_2
    move v3, v2

    .line 146
    goto :goto_1

    :cond_3
    move v1, v2

    .line 151
    goto :goto_2

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 163
    :cond_5
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a()V

    goto :goto_3

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 169
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 175
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a()V

    .line 180
    :cond_7
    if-eqz v0, :cond_8

    move v0, v2

    .line 181
    :goto_4
    if-eqz v3, :cond_9

    .line 185
    :goto_5
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->e:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a:Ljava/lang/String;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;Z)V

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_3

    :cond_8
    move v0, v5

    .line 180
    goto :goto_4

    :cond_9
    move v2, v4

    .line 181
    goto :goto_5

    :cond_a
    move v3, v2

    move v0, v2

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 272
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->invalidate()V

    .line 273
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 255
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->f:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->g:Ljava/lang/Runnable;

    .line 266
    :cond_1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 267
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 245
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->a(Z)V

    .line 247
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->c:I

    .line 124
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->d:I

    .line 132
    return-void
.end method

.method public setFallbackImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->b:Ljava/lang/String;

    .line 116
    return-void
.end method
