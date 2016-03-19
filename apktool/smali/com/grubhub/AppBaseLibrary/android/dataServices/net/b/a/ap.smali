.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/favorites/GHSIFavoriteListDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aq;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;)V

    .line 23
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aq;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->l:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aq;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/aq;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "diners"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "restaurants"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected c()V
    .locals 7

    .prologue
    .line 39
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 40
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;

    invoke-direct {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;-><init>()V

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2FavoritesDTO;

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->a:I

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/c;-><init>(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 47
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/c;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 48
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    .line 49
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/ap;->l:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
