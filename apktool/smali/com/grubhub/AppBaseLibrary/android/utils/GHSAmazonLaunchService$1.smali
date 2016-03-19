.class Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;
.super Lcom/amazon/insights/InsightsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/insights/InsightsCallback",
        "<",
        "Lcom/amazon/insights/VariationSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-direct {p0}, Lcom/amazon/insights/InsightsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/insights/VariationSet;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V

    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->b(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V

    .line 83
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->c(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V

    .line 84
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->d(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V

    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->e(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->f(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;Lcom/amazon/insights/VariationSet;)V

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;)V

    .line 90
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lcom/amazon/insights/VariationSet;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method

.method public onError(Lcom/amazon/insights/error/InsightsError;)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "AmazonABFailed"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;Lcom/amazon/insights/error/InsightsError;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService$1;->a:Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;->a(Lcom/grubhub/AppBaseLibrary/android/utils/GHSAmazonLaunchService;)V

    .line 102
    return-void
.end method
