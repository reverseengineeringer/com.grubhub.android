.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBaseDataModel;


# instance fields
.field private dataModelVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;->dataModelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDataModelVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSBaseDataModel;->dataModelVersion:Ljava/lang/String;

    .line 22
    return-void
.end method
