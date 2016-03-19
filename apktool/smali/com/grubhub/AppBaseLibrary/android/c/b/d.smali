.class public Lcom/grubhub/AppBaseLibrary/android/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a:Landroid/content/res/Resources;

    .line 40
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/c/b/e;",
            "Lcom/grubhub/AppBaseLibrary/android/c/b/b;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/c/b/e;",
            "IIIZ)V"
        }
    .end annotation

    .prologue
    .line 166
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    if-nez p3, :cond_2

    const-string v2, ""

    .line 172
    :goto_1
    if-nez p4, :cond_3

    const-string v3, ""

    .line 173
    :goto_2
    if-nez p5, :cond_4

    const/4 v4, 0x0

    .line 176
    :goto_3
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/c/b/a;

    move-object v1, p2

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/c/b/e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, p3}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 172
    :cond_3
    invoke-direct {p0, p4}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 173
    :cond_4
    invoke-direct {p0, p5}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/c/b/e;",
            "Lcom/grubhub/AppBaseLibrary/android/c/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 141
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 143
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_FUTURE_ORDERS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803d0

    const v4, 0x7f0803d1

    const v5, 0x7f0201b4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 144
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803d4

    const v4, 0x7f0803d5

    const v5, 0x7f0201b7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 145
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_FAVORITES:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803cc

    const v4, 0x7f0803cd

    const v5, 0x7f0201b2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 146
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_PAST_ORDERS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803d6

    const v4, 0x7f0803d7

    const v5, 0x7f0201b8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 147
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_NEW_ORDER:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803d3

    const v5, 0x7f0201b6

    move-object v0, p0

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 148
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_CONTACT_US:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803ca

    const v4, 0x7f0803cb

    const v5, 0x7f0201b0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 149
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_FEEDBACK:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803ce

    const v4, 0x7f0803cf

    const v5, 0x7f0201b3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 150
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_ABOUT:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    const v3, 0x7f0803c7

    const v4, 0x7f0803c8

    const v5, 0x7f0201ac

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(Ljava/util/Map;Lcom/grubhub/AppBaseLibrary/android/c/b/e;IIIZ)V

    .line 152
    return-object v1
.end method


# virtual methods
.method public a()[Lcom/grubhub/AppBaseLibrary/android/c/b/b;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 48
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 53
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 59
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_PAST_ORDERS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 65
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_FAVORITES:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 66
    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 71
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_FUTURE_ORDERS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 72
    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 76
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 77
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    return-object v0
.end method

.method public b()[Lcom/grubhub/AppBaseLibrary/android/c/b/b;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 89
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_LOG_OUT:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/c/b/c;

    const v3, 0x7f0803d2

    .line 91
    invoke-direct {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->a(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02013c

    invoke-direct {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/c/b/d;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/c/b/c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_NEW_ORDER:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/utils/f/a;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/utils/f/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f/b;->a(Z)V

    .line 102
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 108
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_PAST_ORDERS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 109
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 114
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_FAVORITES:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 115
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 120
    :cond_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_FUTURE_ORDERS:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 121
    if-eqz v0, :cond_4

    .line 122
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 123
    invoke-virtual {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    .line 130
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    .line 131
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/c/b/b;

    return-object v0

    .line 125
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;->a(I)V

    goto :goto_0
.end method
