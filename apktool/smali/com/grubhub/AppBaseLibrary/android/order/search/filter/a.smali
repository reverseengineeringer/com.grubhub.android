.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 357
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->b:Ljava/util/ArrayList;

    .line 358
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->b:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 372
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0d0051

    const v6, 0x7f0d003f

    const/4 v5, 0x0

    .line 377
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 378
    if-nez p2, :cond_0

    .line 379
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030088

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v3

    .line 383
    const v0, 0x7f0f02cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 384
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const v1, 0x7f0f02cc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 387
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getItemCount()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 388
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setVisibility(I)V

    .line 394
    :goto_0
    const v2, 0x7f0f02cd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 395
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextColor(I)V

    .line 398
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextColor(I)V

    .line 404
    :goto_1
    return-object p2

    .line 390
    :cond_1
    invoke-virtual {v1, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setVisibility(I)V

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getItemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 400
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextColor(I)V

    .line 402
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextColor(I)V

    goto :goto_1
.end method
