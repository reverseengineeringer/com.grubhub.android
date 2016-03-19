.class Lcom/grubhub/AppBaseLibrary/android/order/cart/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1770
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->b:Landroid/content/Context;

    .line 1771
    return-void
.end method


# virtual methods
.method public a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1765
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1785
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0f02b5

    .line 1791
    if-nez p2, :cond_0

    .line 1792
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->b:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Landroid/content/Context;)V

    .line 1793
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1794
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->t(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1795
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/e$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/e;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1809
    :goto_0
    const v0, 0x7f0f02b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/g;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1810
    const v0, 0x7f0f02b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 1811
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;)V

    .line 1813
    return-object v1

    .line 1807
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    move-object v1, p2

    goto :goto_0
.end method
