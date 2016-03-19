.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private selection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSItemOptionSelection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;->selection:Ljava/util/ArrayList;

    return-object v0
.end method
