.class public Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

.field private c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030e

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->f:I

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;)Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->c:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/c;

    .line 79
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->b:Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/d;

    .line 98
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a:Ljava/util/HashMap;

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->notifyDataSetChanged()V

    .line 128
    return-void

    .line 120
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a:Ljava/util/HashMap;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;

    .line 122
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->e:Z

    .line 89
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->clear()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->c(Ljava/util/List;)V

    .line 138
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->d:Z

    .line 107
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->addAll(Ljava/util/Collection;)V

    .line 147
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 157
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 160
    const/4 v0, 0x0

    .line 161
    if-nez p2, :cond_3

    .line 162
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030096

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 167
    :goto_0
    if-nez v0, :cond_f

    .line 169
    const v0, 0x7f0f01df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0f02ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0f02f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0f02f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0f02f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 174
    const v0, 0x7f0f02f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    .line 175
    const v0, 0x7f0f02f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0f02f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 178
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;Landroid/widget/TextView;Landroid/widget/Button;Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$1;)V

    .line 179
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 182
    :goto_1
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    .line 183
    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v4

    .line 185
    const v1, 0x7f080401

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    const v3, 0x7f080404

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->a(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->b(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v6, v4}, Lcom/grubhub/AppBaseLibrary/android/order/g;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getTimePlacedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :goto_3
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getFoodItemsCommaSeparated()Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->d:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    :cond_0
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->d(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :goto_4
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    .line 209
    :cond_1
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    :goto_5
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->e:Z

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    .line 293
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;

    invoke-direct {v1, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->f:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    :cond_2
    :goto_6
    return-object p2

    .line 164
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;

    goto/16 :goto_0

    :cond_4
    move-object v1, v3

    .line 189
    goto/16 :goto_2

    .line 196
    :cond_5
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->c(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 203
    :cond_6
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->d(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->d(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 212
    :cond_7
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;

    .line 213
    if-eqz v1, :cond_d

    .line 214
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;->getState()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;

    move-result-object v3

    .line 217
    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;->AVAILABLE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;

    if-eq v3, v4, :cond_8

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;->EXPIRED:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;

    if-eq v3, v4, :cond_8

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;->QUIT:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;

    if-ne v3, v4, :cond_9

    .line 220
    :cond_8
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setRatings(I)V

    .line 222
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$1;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 245
    :cond_9
    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;->UNAVAILABLE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;

    if-ne v3, v4, :cond_a

    .line 246
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setRatings(I)V

    .line 250
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setVisibility(I)V

    .line 251
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 255
    :cond_a
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;->getRating()Ljava/lang/Integer;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_b

    .line 260
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setRatings(I)V

    .line 262
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setVisibility(I)V

    .line 263
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 265
    :cond_b
    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;->getString(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 266
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setRatings(I)V

    .line 268
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setVisibility(I)V

    .line 269
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;->getString(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel$GHSOrderReviewState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 272
    :cond_c
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setRatings(I)V

    .line 274
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setVisibility(I)V

    .line 275
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 281
    :cond_d
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->e(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->f(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/Button;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setRatings(I)V

    .line 285
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->g(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setVisibility(I)V

    .line 286
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;->h(Lcom/grubhub/AppBaseLibrary/android/order/pastOrders/e;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 303
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_f
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method
