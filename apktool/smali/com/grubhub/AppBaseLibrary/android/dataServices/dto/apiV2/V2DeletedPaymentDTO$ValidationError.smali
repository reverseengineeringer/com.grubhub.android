.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO$ValidationError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel$GHSIValidationError;


# instance fields
.field private message_key:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO$ValidationError;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO$ValidationError;->message_key:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2DeletedPaymentDTO$ValidationError;->property:Ljava/lang/String;

    return-object v0
.end method
