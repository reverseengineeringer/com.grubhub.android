.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceDetailsDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private result:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceDetailsDataModel;->result:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceResultDataModel;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceDetailsDataModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hasZeroResults()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceDetailsDataModel;->status:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceDetailsDataModel;->status:Ljava/lang/String;

    const-string v1, "ZERO_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusOk()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceDetailsDataModel;->status:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceDetailsDataModel;->status:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
