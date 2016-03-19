.class Lcom/grubhub/AppBaseLibrary/android/views/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1327
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->b:Landroid/content/Context;

    .line 1328
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->d:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/c;)Z
    .locals 1

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/views/c;Z)Z
    .locals 0

    .prologue
    .line 1317
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/views/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/views/c;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1345
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->c:Z

    .line 1336
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1411
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/views/c$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/c$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/c;)V

    .line 1459
    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1317
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1354
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1387
    const/4 v0, 0x0

    .line 1389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1359
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1360
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->getItemViewType(I)I

    move-result v1

    .line 1362
    if-nez v1, :cond_3

    .line 1363
    if-nez p2, :cond_0

    .line 1364
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1370
    const v0, 0x7f0f00a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1371
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/c;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->m(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    const v0, 0x7f0f00aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1374
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_1
    :goto_1
    return-object p2

    .line 1371
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1376
    :cond_3
    if-nez p2, :cond_1

    .line 1377
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/c;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
