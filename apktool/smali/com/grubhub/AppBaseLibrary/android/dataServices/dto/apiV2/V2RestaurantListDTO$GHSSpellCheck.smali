.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSSpellCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private original_freq:Ljava/lang/Integer;

.field private original_term:Ljava/lang/String;

.field private spellcheck_suggestion_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO$GHSSpellCheckSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private term_end:Ljava/lang/Integer;

.field private term_start:Ljava/lang/Integer;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
