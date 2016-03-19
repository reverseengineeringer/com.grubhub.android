.class public Lcom/grubhub/AppBaseLibrary/android/utils/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->b:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->c:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->d:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->e:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->f:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;)Lcom/grubhub/AppBaseLibrary/android/utils/c/g;
    .locals 7

    .prologue
    .line 45
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 46
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemPrice()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "USD"

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    const-string v1, "name"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "sku"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "category"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "price"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "currency"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "quantity"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/g;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object v0
.end method
