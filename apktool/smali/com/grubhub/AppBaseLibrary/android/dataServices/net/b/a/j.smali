.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected l:Ljava/lang/String;

.field protected m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;)V

    .line 29
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->l:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/k;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    .line 31
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    .line 110
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    .line 111
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    .line 112
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getQuantity()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 133
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;

    .line 129
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 133
    goto :goto_0
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "espresso"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "carts"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "lines"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected c()V
    .locals 8

    .prologue
    .line 47
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 48
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->h()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;-><init>()V

    const-class v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;

    iget v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->a:I

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 57
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 58
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    .line 59
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->l:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->e:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e()Ljava/util/Map;

    move-result-object v1

    .line 72
    const-string v0, "cartId"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->l:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method

.method protected h()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "menu_item_id"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getMenuItemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "special_instructions"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getSpecialInstructions()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "restaurant_id"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getRestaurantId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "quantity"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getQuantity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "options"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getApplyFreeGrub()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "apply_free_grub"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/j;->m:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->getApplyFreeGrub()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    return-object v0
.end method
