.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected l:Ljava/lang/String;

.field protected m:F

.field protected n:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;


# direct methods
.method private constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;)V

    .line 28
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->l:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->m:F

    .line 30
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cm;)V

    return-void
.end method

.method private a(F)I
    .locals 1

    .prologue
    .line 99
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private h()Ljava/util/Map;
    .locals 3
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
    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    const-string v1, "amount"

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->m:F

    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->a(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "type"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "espresso"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "carts"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    const-string v1, "tip"

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected c()V
    .locals 8

    .prologue
    .line 47
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;

    .line 48
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->h()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/k;-><init>()V

    const-class v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;

    iget v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->a:I

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b;Ljava/lang/Class;ILcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 57
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/d;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 58
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->h:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

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

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->l:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->e:Ljava/lang/String;

    .line 65
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

.method protected e()Ljava/util/Map;
    .locals 3
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
    .line 70
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/a;->e()Ljava/util/Map;

    move-result-object v0

    .line 71
    const-string v1, "cartId"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "amount"

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->m:F

    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->a(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/cl;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 74
    return-object v0
.end method
