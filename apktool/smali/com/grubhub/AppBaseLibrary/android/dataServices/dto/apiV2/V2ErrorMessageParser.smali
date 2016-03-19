.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJSONMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;)V

    .line 30
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ErrorMessageParser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method
