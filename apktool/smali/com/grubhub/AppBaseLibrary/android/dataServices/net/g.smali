.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String;

.field private static j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->c:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->d:Ljava/lang/String;

    .line 97
    const-string v0, "V1"

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->f:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/b/b;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;
    .locals 1

    .prologue
    .line 479
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;

    invoke-direct {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    .line 82
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a()Lcom/grubhub/AppBaseLibrary/android/k;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->a(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b(Ljava/lang/String;)V

    .line 90
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;

    return-object v0
.end method

.method private static b(Lcom/grubhub/AppBaseLibrary/android/b/b;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/b/b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;

    .line 616
    if-eqz v0, :cond_0

    .line 617
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/c;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/grubhub/AppBaseLibrary/android/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/b/c;)V

    goto :goto_0

    .line 621
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(DDLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(DDLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;",
            "II",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSReorderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public a(Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public a(Ljava/lang/String;FLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;FLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public a(Ljava/lang/String;JLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;JLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/order/g;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/order/l;",
            "Ljava/lang/Long;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGetPaymentsModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public a(Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lcom/grubhub/AppBaseLibrary/android/order/g;",
            "Lcom/grubhub/AppBaseLibrary/android/order/l;",
            "Ljava/lang/Long;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSIAutoCompleteDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Lcom/grubhub/AppBaseLibrary/android/order/g;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public a(Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;",
            ">;Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Ljava/util/ArrayList;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserCartsDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public b(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public b(Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Ljava/lang/String;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->c(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->d(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->d(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->d()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->e(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICheckoutResponse;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->e(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public f(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->f(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->f(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public g(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->g(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->g(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public h(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyStatusModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->h(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;>;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->h(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public i(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryLookupDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->i(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->d:Ljava/lang/String;

    .line 382
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->c:Ljava/lang/String;

    .line 383
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->c(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->g:I

    .line 384
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    .line 385
    invoke-virtual {v0, p5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->b(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    .line 386
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    move-result-object v0

    .line 387
    invoke-virtual {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->f(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->e:Ljava/lang/String;

    .line 388
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->g(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    .line 390
    invoke-direct {p0, p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;)V

    .line 391
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;

    .line 398
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/e;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/d;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/d;->a()Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->j(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->k(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    .line 415
    return-void
.end method
