.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;


# instance fields
.field private applied:Z

.field private available:Z

.field private combinable:Z

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private minimum:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;->minimum:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isApplied()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;->applied:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;->available:Z

    return v0
.end method

.method public isCombinable()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CouponListDTO$V1CouponDTO;->combinable:Z

    return v0
.end method
