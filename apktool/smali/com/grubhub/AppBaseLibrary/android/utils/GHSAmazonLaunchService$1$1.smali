.class Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->onError(Lcom/amazon/insights/error/InsightsError;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazon/insights/error/InsightsError;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;Lcom/amazon/insights/error/InsightsError;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;->a:Lcom/amazon/insights/error/InsightsError;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v0, "ErrorMsg"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;->a:Lcom/amazon/insights/error/InsightsError;

    invoke-interface {v1}, Lcom/amazon/insights/error/InsightsError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "ErrorType"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;->a:Lcom/amazon/insights/error/InsightsError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method
