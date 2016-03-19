.class Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 3

    .prologue
    .line 86
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v0, "DistanceRadius"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getDistanceRadius()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "SearchTerm"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSearchTerm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "Address"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddressString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "SortOption"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCurrentSortOption()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "OrderType"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method
