.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO$V2ValidationErrorDTO;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageDTO;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$GHSIValidationError;


# instance fields
.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO$V2ValidationErrorDTO;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppError()Lcom/grubhub/AppBaseLibrary/android/b/a;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 37
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO$V2ValidationErrorDTO;->property:Ljava/lang/String;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO$V2ValidationErrorDTO;->message_key:Ljava/lang/String;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO$V2ValidationErrorDTO;->property:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO$V2ValidationErrorDTO;->message_key:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/b/c;)V

    .line 39
    const-string v1, "GetBill"

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMapper;->mapToAppError(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/b/b;)Z

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v0

    return-object v0
.end method
