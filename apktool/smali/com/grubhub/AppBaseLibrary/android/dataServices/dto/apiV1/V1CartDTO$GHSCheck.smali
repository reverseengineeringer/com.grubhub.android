.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lineItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSLineItem;",
            ">;"
        }
    .end annotation
.end field

.field private minimum:Ljava/lang/Float;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSCheck;->lineItem:Ljava/util/ArrayList;

    return-object v0
.end method
