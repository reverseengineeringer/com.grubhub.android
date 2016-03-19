.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;->messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageContainer;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO;->messages:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageContainer;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageContainer;->message:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageContainer;->access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageContainer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
