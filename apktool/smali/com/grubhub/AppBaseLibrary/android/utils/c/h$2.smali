.class Lcom/grubhub/AppBaseLibrary/android/utils/c/h$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 2

    .prologue
    .line 646
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$2;->b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 647
    const-string v1, "futureorderflag"

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "asap"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    return-void

    .line 647
    :cond_0
    const-string v0, "later"

    goto :goto_0
.end method
