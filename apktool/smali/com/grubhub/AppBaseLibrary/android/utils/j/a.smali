.class public Lcom/grubhub/AppBaseLibrary/android/utils/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FF)F
    .locals 2

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 50
    mul-float v0, p0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;F)F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 35
    :cond_0
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a:Ljava/lang/String;

    const-string v2, "Total and percentage must be non-negative."

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)F
    .locals 5

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    .line 68
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 69
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getMinimumTipPercent()D

    move-result-wide v2

    .line 70
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getMinimumTip()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;

    move-result-object v4

    .line 66
    invoke-static {v0, v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;FDLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;)F

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, v0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;FF)F

    move-result v0

    return v0
.end method

.method private static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;FF)F
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 151
    cmpg-float v0, p2, v1

    if-gez v0, :cond_2

    move v0, v1

    .line 152
    :goto_0
    cmpg-float v2, p3, v1

    if-gez v2, :cond_0

    move p3, v1

    .line 154
    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCashTipAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, p2

    .line 151
    goto :goto_0

    .line 157
    :cond_3
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 158
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 159
    invoke-static {p1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)F

    move-result v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    .line 161
    goto :goto_1
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/order/g;FDLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;)F
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 83
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 84
    const-wide/16 v2, 0x0

    cmpl-double v1, p2, v2

    if-ltz v1, :cond_2

    double-to-float v1, p2

    div-float/2addr v1, v4

    mul-float/2addr v1, p1

    .line 85
    :goto_0
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 87
    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    .line 88
    mul-float v0, v1, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 93
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v0

    .line 84
    goto :goto_0

    .line 90
    :cond_3
    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_1
.end method

.method public static b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F
    .locals 2

    .prologue
    .line 116
    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;FF)F

    move-result v0

    return v0
.end method

.method public static c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F
    .locals 2

    .prologue
    .line 127
    const v0, 0x3e19999a    # 0.15f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;FF)F

    move-result v0

    return v0
.end method

.method public static d(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F
    .locals 2

    .prologue
    .line 138
    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3e19999a    # 0.15f

    invoke-static {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;FF)F

    move-result v0

    return v0
.end method
