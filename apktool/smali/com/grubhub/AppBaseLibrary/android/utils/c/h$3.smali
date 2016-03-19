.class Lcom/grubhub/AppBaseLibrary/android/utils/c/h$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->c(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 3

    .prologue
    .line 791
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 792
    const-string v1, "futureorderflag"

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 793
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v0

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-eq v0, v2, :cond_0

    const-string v0, "asap"

    .line 792
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    return-void

    .line 793
    :cond_0
    const-string v0, "later"

    goto :goto_0
.end method
