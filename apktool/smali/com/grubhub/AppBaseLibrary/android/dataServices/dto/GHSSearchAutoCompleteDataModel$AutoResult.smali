.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel$AutoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field completion_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;"
        }
    .end annotation
.end field

.field count:I

.field result_type:Ljava/lang/String;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel$AutoResult;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel$AutoResult;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel$AutoResult;->getCompletionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getCompletionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel$AutoResult;->completion_list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getResultType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoCompleteDataModel$AutoResult;->result_type:Ljava/lang/String;

    return-object v0
.end method
