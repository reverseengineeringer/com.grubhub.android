.class public Lcom/braintreepayments/api/dropin/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(F)F
    .locals 8

    .prologue
    .line 30
    .line 32
    const/4 v0, 0x1

    move v1, p1

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 33
    invoke-direct {p0, v1}, Lcom/braintreepayments/api/dropin/a/a;->d(F)F

    move-result v2

    sub-float/2addr v2, p1

    .line 34
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 39
    :cond_0
    return v1

    .line 37
    :cond_1
    invoke-direct {p0, v1}, Lcom/braintreepayments/api/dropin/a/a;->c(F)F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(F)F
    .locals 3

    .prologue
    .line 43
    const v0, 0x3ff7ae14    # 1.935f

    const v1, -0x3f4c7ae2    # -5.6099997f

    const v2, 0x40b3851e    # 5.6099997f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private d(F)F
    .locals 3

    .prologue
    .line 47
    const v0, 0x3ff7ae14    # 1.935f

    const v1, -0x3fcc7ae2    # -2.8049998f

    const v2, 0x3fef5c28    # 1.8699999f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected a(F)F
    .locals 3

    .prologue
    .line 26
    const v0, 0x3e0a3d71    # 0.135f

    const v1, 0x402eb852    # 2.73f

    const v2, -0x401147ae    # -1.865f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/a/a;->b(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/a/a;->a(F)F

    move-result v0

    return v0
.end method
