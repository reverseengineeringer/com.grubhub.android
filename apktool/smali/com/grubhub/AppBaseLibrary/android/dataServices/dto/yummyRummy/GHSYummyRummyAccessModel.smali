.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;


# instance fields
.field private metadata:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel$GHSIYummyRummyMetadataModel;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel;->metadata:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;

    return-object v0
.end method

.method public setMetadata(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel$GHSIYummyRummyMetadataModel;)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel$GHSIYummyRummyMetadataModel;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;->setOrderId(Ljava/lang/String;)V

    .line 38
    :cond_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel;->metadata:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;

    .line 39
    return-void
.end method
