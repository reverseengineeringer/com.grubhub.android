.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$Prediction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private matched_substrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$MatchedSubstring;",
            ">;"
        }
    .end annotation
.end field

.field private place_id:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private terms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$Term;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$Prediction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$Prediction;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$Prediction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$Prediction;->place_id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GooglePlaceAutoCompleteDataModel$Prediction;->place_id:Ljava/lang/String;

    return-object v0
.end method
