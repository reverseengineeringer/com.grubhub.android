.class Lcom/grubhub/AppBaseLibrary/android/views/c$1;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/c;->getFilter()Landroid/widget/Filter;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/c;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/c;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1414
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a(Lcom/grubhub/AppBaseLibrary/android/views/c;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1415
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1416
    if-eqz p1, :cond_2

    .line 1422
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/views/c;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->n(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Landroid/location/Location;

    move-result-object v1

    .line 1423
    if-eqz v1, :cond_4

    .line 1424
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1425
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1431
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-static {v6}, Lcom/grubhub/AppBaseLibrary/android/views/c;->b(Lcom/grubhub/AppBaseLibrary/android/views/c;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v6

    invoke-virtual {v6, v4, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a(Lcom/grubhub/AppBaseLibrary/android/views/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1432
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->c(Lcom/grubhub/AppBaseLibrary/android/views/c;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->c(Lcom/grubhub/AppBaseLibrary/android/views/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->c(Lcom/grubhub/AppBaseLibrary/android/views/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->c(Lcom/grubhub/AppBaseLibrary/android/views/c;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1438
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->c(Lcom/grubhub/AppBaseLibrary/android/views/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    :cond_2
    move-object v0, v3

    .line 1445
    :goto_1
    return-object v0

    .line 1444
    :cond_3
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a(Lcom/grubhub/AppBaseLibrary/android/views/c;Z)Z

    goto :goto_1

    :cond_4
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .prologue
    .line 1451
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->notifyDataSetChanged()V

    .line 1456
    :goto_0
    return-void

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
