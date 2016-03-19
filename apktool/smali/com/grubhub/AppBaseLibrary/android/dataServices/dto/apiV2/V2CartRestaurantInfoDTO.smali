.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartRestaurantInfoDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected id:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartRestaurantInfoDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartRestaurantInfoDTO;->name:Ljava/lang/String;

    return-object v0
.end method
