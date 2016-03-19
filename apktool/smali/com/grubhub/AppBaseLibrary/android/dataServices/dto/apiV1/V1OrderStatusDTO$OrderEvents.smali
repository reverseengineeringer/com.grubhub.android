.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private orderEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;->getOrderEvent()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getOrderEvent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvents;->orderEvent:Ljava/util/ArrayList;

    return-object v0
.end method
