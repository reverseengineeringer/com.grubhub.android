.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;


# instance fields
.field private field:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private msgCode:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->msgCode:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->field:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->message:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->type:Ljava/lang/String;

    .line 65
    return-void
.end method
