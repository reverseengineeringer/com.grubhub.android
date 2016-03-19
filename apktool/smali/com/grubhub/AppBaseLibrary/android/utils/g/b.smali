.class public Lcom/grubhub/AppBaseLibrary/android/utils/g/b;
.super Lcom/grubhub/AppBaseLibrary/android/utils/g/e;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/utils/g/f;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-direct {p0, p1, v0, p8}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;-><init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    .line 53
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->e:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->f:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->g:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->h:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->i:Ljava/lang/String;

    .line 58
    iput-boolean p7, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->j:Z

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;-><init>()V

    .line 187
    invoke-virtual {v1, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->setId(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->setExpired(Z)V

    .line 189
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->setCreateDate(Ljava/lang/Long;)V

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->setExpirationYear(Ljava/lang/Integer;)V

    .line 191
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->setExpirationMonth(Ljava/lang/Integer;)V

    .line 192
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->setCreditCardList4(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->setIsSingleUse(Z)V

    .line 196
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 197
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->G()Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    :cond_0
    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    invoke-interface {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/util/ArrayList;)V

    .line 203
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->j:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->f()V

    .line 67
    return-void
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 107
    const-string v0, "Unable to retrieve the client token."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
    .locals 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->j:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 166
    :cond_1
    return-void
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->g:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->j:Z

    iget-object v9, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->b:Landroid/app/Activity;

    move-object v10, v2

    move-object v11, v2

    invoke-direct/range {v0 .. v11}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;->a()V

    .line 103
    return-void
.end method

.method protected b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 170
    const-string v0, "Vaulting the payment failed."

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 147
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/b;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 153
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a()V

    .line 154
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public h_()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;->h_()V

    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;->g()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/e;

    .line 80
    :cond_0
    return-void
.end method
