.class public Lcom/grubhub/AppBaseLibrary/android/utils/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
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
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->c:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->d:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->e:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->f:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->g:Ljava/lang/String;

    .line 44
    if-eqz p8, :cond_0

    const-string v0, "asap"

    :goto_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->h:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->i:Ljava/util/List;

    .line 46
    return-void

    .line 44
    :cond_0
    const-string v0, "later"

    goto :goto_0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/utils/c/i;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 86
    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 88
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;)Lcom/grubhub/AppBaseLibrary/android/utils/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v8, 0x1

    .line 93
    :goto_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;

    if-eqz p0, :cond_4

    .line 94
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz p0, :cond_5

    .line 95
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/g;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz p0, :cond_6

    .line 96
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    if-eqz p0, :cond_2

    .line 97
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v6, "USD"

    move-object v1, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object v0

    .line 91
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    move-object v2, v5

    .line 94
    goto :goto_2

    :cond_5
    move-object v3, v5

    .line 95
    goto :goto_3

    :cond_6
    move-object v4, v5

    .line 96
    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->i:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->h:Ljava/lang/String;

    return-object v0
.end method
