.class public Lcom/grubhub/AppBaseLibrary/android/views/m;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private D:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/grubhub/AppBaseLibrary/android/views/q;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Lcom/grubhub/AppBaseLibrary/android/views/p;

.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/m;)Lcom/grubhub/AppBaseLibrary/android/views/p;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->L:Lcom/grubhub/AppBaseLibrary/android/views/p;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 130
    const v1, 0x7f0300b5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->K:I

    .line 135
    const v0, 0x7f0f0327

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->a:Landroid/view/View;

    .line 136
    const v0, 0x7f0f0347

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->b:Landroid/view/View;

    .line 138
    const v0, 0x7f0f032a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    .line 139
    const v0, 0x7f0f032b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/m$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/m$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/m;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0f032e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    .line 150
    const v0, 0x7f0f0330

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->g:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0f033b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->h:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0f032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->i:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0f033c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->j:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0f0338

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->k:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0f033a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->l:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0f032d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->m:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0f0332

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->z:Landroid/view/View;

    .line 158
    const v0, 0x7f0f0343

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0f0342

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0f033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->o:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0f0331

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->s:Landroid/view/View;

    .line 164
    const v0, 0x7f0f0339

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->t:Landroid/view/View;

    .line 165
    const v0, 0x7f0f0335

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->u:Landroid/view/View;

    .line 166
    const v0, 0x7f0f033f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->v:Landroid/view/View;

    .line 167
    const v0, 0x7f0f0341

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->w:Landroid/view/View;

    .line 170
    const v0, 0x7f0f0334

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0f0336

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0f0340

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0f0348

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/m$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/m$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/m;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->z:Landroid/view/View;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/m$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/m$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/m;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f0f0349

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->B:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->B:Landroid/widget/TextView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/views/m$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/views/m$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/m;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f0f0344

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->c:Landroid/view/View;

    .line 205
    const v0, 0x7f0f0345

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->x:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0f0346

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->y:Landroid/widget/TextView;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setBackgroundColor(I)V

    .line 209
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->w:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    .line 598
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :cond_1
    :goto_1
    return-void

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->I:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDescriptionByMode(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->G:Lcom/grubhub/AppBaseLibrary/android/views/q;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

    if-ne v0, v1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->m:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 476
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setDescription(Ljava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantDescriptionCondensed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setDescription(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->m:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method

.method private setMatchingItems(I)V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->x:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->D:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->D:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->E:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/j;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(ZLjava/lang/String;)V

    .line 288
    :cond_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;Lcom/grubhub/AppBaseLibrary/android/views/o;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 503
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 504
    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 506
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v2, 0x7f080456

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 509
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->a:[I

    invoke-virtual {p2}, Lcom/grubhub/AppBaseLibrary/android/views/o;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 518
    const v2, 0x7f0804ba

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    :goto_1
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->d()V

    .line 530
    :cond_0
    return-void

    .line 511
    :pswitch_0
    const v2, 0x7f0804bc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 514
    :pswitch_1
    const v2, 0x7f0804bb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 217
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 218
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 219
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->D:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 221
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/r;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/views/r;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setStyle(Lcom/grubhub/AppBaseLibrary/android/views/r;)V

    .line 223
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantMediaImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setFavoriteIcon(Ljava/lang/String;)V

    .line 227
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setName(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setDescriptionByMode(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 230
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getStarRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setRatings(I)V

    .line 231
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRatingCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setRatingsCount(I)V

    .line 232
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->hasCoupons()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setHasCoupons(Z)V

    .line 233
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isNew()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setIsNewRestaurant(Z)V

    .line 234
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRatingCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setReviewCount(I)V

    .line 236
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isPhoneOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setIsPhoneOnly(Z)V

    .line 237
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isAcceptingCash()Z

    move-result v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isAcceptingCredit()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(ZZ)V

    .line 239
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantPriceRating()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setPriceRange(I)V

    .line 240
    const-string v0, "%.1f"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDistanceFromDinerLocationMiles()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setDistance(Ljava/lang/String;)V

    .line 241
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/m;->b(ZZ)V

    .line 243
    invoke-interface {p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getHoursOfOperation(Lcom/grubhub/AppBaseLibrary/android/order/g;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->E:Ljava/util/ArrayList;

    .line 245
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p2, v0, :cond_7

    .line 247
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getEstimatedDeliveryTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setTime(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;)V

    .line 248
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setMinimum(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;)V

    .line 252
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeExact()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 253
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeExact()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 254
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeExact()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/views/o;->EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;Lcom/grubhub/AppBaseLibrary/android/views/o;Z)V

    .line 276
    :goto_1
    invoke-interface {p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->E:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/j;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(ZLjava/lang/String;)V

    .line 277
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getMenuItemMatchingCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setMatchingItems(I)V

    .line 279
    :cond_0
    return-void

    .line 221
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/r;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/views/r;

    goto/16 :goto_0

    .line 256
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/o;->EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v3

    invoke-virtual {p0, v6, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;Lcom/grubhub/AppBaseLibrary/android/views/o;Z)V

    goto :goto_1

    .line 258
    :cond_3
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 259
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    .line 261
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/views/o;->EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;Lcom/grubhub/AppBaseLibrary/android/views/o;Z)V

    goto :goto_1

    .line 262
    :cond_4
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    .line 263
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/views/o;->MIN:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;Lcom/grubhub/AppBaseLibrary/android/views/o;Z)V

    goto/16 :goto_1

    .line 264
    :cond_5
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getDeliveryFeeMaximum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    .line 265
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/views/o;->MIN:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;Lcom/grubhub/AppBaseLibrary/android/views/o;Z)V

    goto/16 :goto_1

    .line 268
    :cond_6
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/o;->EXACT:Lcom/grubhub/AppBaseLibrary/android/views/o;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersDelivery()Z

    move-result v3

    invoke-virtual {p0, v6, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;Lcom/grubhub/AppBaseLibrary/android/views/o;Z)V

    goto/16 :goto_1

    .line 272
    :cond_7
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getEstimatedPickupReadyTime()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setTime(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;)V

    .line 273
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getPickupMinimum()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setMinimum(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;)V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 276
    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    const v2, 0x7f0201a2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    .line 309
    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 578
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->G:Lcom/grubhub/AppBaseLibrary/android/views/q;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/q;->FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

    if-ne v0, v1, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 580
    if-eqz p2, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v2, 0x7f0804b7

    .line 581
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    :cond_0
    :goto_1
    return-void

    .line 581
    :cond_1
    const v1, 0x7f0804b6

    .line 582
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(ZLjava/util/LinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->J:Z

    .line 319
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->F:Ljava/util/LinkedHashSet;

    .line 320
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 555
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 556
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 557
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    :goto_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->b()V

    .line 567
    :cond_0
    return-void

    .line 559
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 560
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 646
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    const v1, 0x7f0804bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 647
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->b()V

    .line 657
    :goto_0
    return-void

    .line 649
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 650
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    const v1, 0x7f0804c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 651
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->b()V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCouponsVisible(Z)V
    .locals 0

    .prologue
    .line 802
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->I:Z

    .line 803
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->e()V

    .line 804
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_0
    return-void
.end method

.method public setDisplayMode(Lcom/grubhub/AppBaseLibrary/android/views/q;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 666
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->b:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/views/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 682
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 685
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->CONDENSED:Lcom/grubhub/AppBaseLibrary/android/views/q;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->G:Lcom/grubhub/AppBaseLibrary/android/views/q;

    .line 688
    :goto_0
    return-void

    .line 668
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 672
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->FULL:Lcom/grubhub/AppBaseLibrary/android/views/q;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->G:Lcom/grubhub/AppBaseLibrary/android/views/q;

    goto :goto_0

    .line 675
    :pswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/q;->MATCHING_ITEMS:Lcom/grubhub/AppBaseLibrary/android/views/q;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->G:Lcom/grubhub/AppBaseLibrary/android/views/q;

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->c()V

    .line 425
    :cond_0
    return-void
.end method

.method public setFavoriteIcon(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->J:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->F:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->F:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 330
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/n;->TRUE:Lcom/grubhub/AppBaseLibrary/android/views/n;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->e:Landroid/widget/ImageView;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/views/n;->FALSE:Lcom/grubhub/AppBaseLibrary/android/views/n;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setHasCoupons(Z)V
    .locals 0

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->H:Z

    .line 775
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->e()V

    .line 776
    return-void
.end method

.method public setIsNewRestaurant(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 366
    if-eqz p1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->H:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIsPhoneOnly(Z)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 539
    if-eqz p1, :cond_1

    .line 540
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    :goto_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->b()V

    .line 546
    :cond_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMatchingItemsAltColorEnabled(Z)V
    .locals 2

    .prologue
    .line 722
    if-eqz p1, :cond_0

    .line 723
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->c:Landroid/view/View;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 724
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->x:Landroid/widget/TextView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->c:Landroid/view/View;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 727
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->x:Landroid/widget/TextView;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setMinimum(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;)V
    .locals 7

    .prologue
    .line 461
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080456

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->d()V

    .line 465
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_0
    return-void
.end method

.method public setPriceRange(I)V
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v1, 0x0

    const/4 v0, 0x5

    .line 396
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->j:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    if-le p1, v0, :cond_2

    move p1, v0

    .line 405
    :cond_0
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "$$$$$"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 407
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 409
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2, v5, v1, p1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 410
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2, v1, p1, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 411
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_1
    return-void

    .line 401
    :cond_2
    if-gez p1, :cond_0

    move p1, v1

    .line 402
    goto :goto_0
.end method

.method public setRatings(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->setRatings(I)V

    .line 347
    :cond_0
    return-void
.end method

.method public setRatingsCount(I)V
    .locals 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100001

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    return-void
.end method

.method public setRestaurantHeaderViewListener(Lcom/grubhub/AppBaseLibrary/android/views/p;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->L:Lcom/grubhub/AppBaseLibrary/android/views/p;

    .line 297
    return-void
.end method

.method public setReviewCount(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 785
    if-lez p1, :cond_0

    .line 786
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->K:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 787
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 788
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 794
    :goto_0
    return-void

    .line 790
    :cond_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 791
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 792
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStyle(Lcom/grubhub/AppBaseLibrary/android/views/r;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 696
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/views/m$5;->c:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/views/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 710
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    :goto_0
    return-void

    .line 698
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTime(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;)V
    .locals 3

    .prologue
    .line 440
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;->getLowIntValue()I

    move-result v0

    .line 441
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;->getHighIntValue()I

    move-result v1

    .line 443
    if-lez v0, :cond_1

    if-le v1, v0, :cond_1

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setTime(Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    if-gt v1, v0, :cond_2

    .line 448
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setTime(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    if-lez v1, :cond_0

    .line 451
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->setTime(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->c()V

    .line 437
    :cond_0
    return-void
.end method
