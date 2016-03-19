.class public final enum Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

.field public static final enum FREE_TEXT:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

.field public static final enum MULTI:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

.field public static final enum RANGE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

.field public static final enum UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    const-string v1, "MULTI"

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->MULTI:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    .line 22
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    const-string v1, "RANGE"

    invoke-direct {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->RANGE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    .line 23
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    const-string v1, "FREE_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->FREE_TEXT:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    .line 24
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->MULTI:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->RANGE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->FREE_TEXT:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    return-object v0
.end method

.method public static values()[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->$VALUES:[Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    invoke-virtual {v0}, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewSurveyDataModel$GHSAnswerType;

    return-object v0
.end method
