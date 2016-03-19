.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# instance fields
.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

.field private q:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field private r:Lcom/grubhub/AppBaseLibrary/android/account/o;

.field private s:Lcom/grubhub/AppBaseLibrary/android/account/m;

.field private t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

.field private u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->m:Z

    .line 789
    return-void
.end method

.method public static a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;-><init>()V

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v2, "selected_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "selectable_payments"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string v2, "payment_type_filter"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "payment_delete"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 332
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const v1, 0x7f0f0272

    .line 246
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/o;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 3

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->o:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(Ljava/lang/String;)V

    .line 294
    :cond_0
    if-eqz p2, :cond_2

    .line 295
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    .line 296
    if-nez v0, :cond_1

    .line 297
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;-><init>()V

    .line 300
    :cond_1
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$5;->a:[I

    invoke-virtual {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    .line 310
    :cond_2
    return-void

    .line 302
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->setSelectedCreditCardId(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->setSelectedPayPalId(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/account/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-ne v0, v2, :cond_1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->G()Ljava/util/ArrayList;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    .line 347
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/k;

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/k;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-ne v0, v2, :cond_3

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->S()Ljava/util/ArrayList;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_3

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;

    .line 357
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/n;

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/n;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    :cond_3
    return-object v1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->m:Z

    return p1
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->n:I

    return v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->j:Z

    return p1
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    return-object v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 264
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(Ljava/util/List;)V

    .line 267
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(Ljava/util/List;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/account/m;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/account/m;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->s:Lcom/grubhub/AppBaseLibrary/android/account/m;

    .line 119
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    .line 93
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->o:Ljava/lang/String;

    .line 96
    const-string v1, "selectable_payments"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->l:Z

    .line 97
    const-string v1, "payment_type_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->p:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 98
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->n:I

    .line 100
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/o;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->o:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/o;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->setHasOptionsMenu(Z)V

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 107
    const v0, 0x7f030074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/o;->notifyDataSetChanged()V

    .line 109
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->s:Lcom/grubhub/AppBaseLibrary/android/account/m;

    .line 125
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 154
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 156
    instance-of v2, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v2, :cond_0

    .line 157
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 166
    :goto_0
    return v0

    .line 160
    :cond_1
    const v2, 0x7f0f036a

    if-ne v0, v2, :cond_3

    .line 161
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->s:Lcom/grubhub/AppBaseLibrary/android/account/m;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->s:Lcom/grubhub/AppBaseLibrary/android/account/m;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/account/m;->i()V

    :cond_2
    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 137
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 141
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 142
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAccountSettingsActivity;

    if-eqz v1, :cond_1

    .line 143
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 174
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->k:Z

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$2;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 191
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 212
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a()V

    .line 218
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "saved payment details"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 221
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->r:Lcom/grubhub/AppBaseLibrary/android/account/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/o;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 227
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->g()V

    .line 229
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;->g()V

    .line 234
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 238
    return-void
.end method
