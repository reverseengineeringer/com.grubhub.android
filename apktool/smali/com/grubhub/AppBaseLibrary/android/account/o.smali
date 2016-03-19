.class Lcom/grubhub/AppBaseLibrary/android/account/o;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/account/p;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/account/p;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->b:Ljava/util/List;

    .line 375
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->c:Ljava/lang/String;

    .line 376
    return-void
.end method


# virtual methods
.method public a(I)Lcom/grubhub/AppBaseLibrary/android/account/p;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/p;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->c:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/account/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->b:Ljava/util/List;

    .line 380
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/o;->notifyDataSetChanged()V

    .line 381
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .line 368
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(I)Lcom/grubhub/AppBaseLibrary/android/account/p;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 399
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0f02b5

    const/4 v3, 0x0

    .line 404
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 406
    if-nez p2, :cond_0

    .line 407
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03009c

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 413
    :goto_0
    const v0, 0x7f0f0301

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 414
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 421
    :goto_1
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/q;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/o;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(I)Lcom/grubhub/AppBaseLibrary/android/account/p;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/account/q;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/account/p;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/o$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/o$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/o;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(I)Lcom/grubhub/AppBaseLibrary/android/account/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/account/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(I)Lcom/grubhub/AppBaseLibrary/android/account/p;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/account/p;->a(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 417
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1
.end method
