.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;->parseJSONMessages(Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser$1;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
