.class public Lcom/taplytics/jk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FFFF)F
    .locals 2

    .prologue
    .line 1222
    sub-float v0, p0, p2

    .line 1223
    sub-float v1, p1, p3

    .line 1224
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1225
    invoke-static {v0}, Lcom/taplytics/jk;->b(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x17ccbc3b

    return v0
.end method

.method public static a(F)I
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 1086
    const/4 v0, 0x0

    .line 1087
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1088
    if-lez v1, :cond_0

    .line 1089
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1091
    :cond_0
    return v0
.end method

.method private static a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1314
    move-object v0, p1

    move v2, v1

    .line 1318
    :cond_0
    :goto_0
    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_2

    .line 1321
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1322
    :catch_0
    move-exception v3

    .line 1323
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1324
    instance-of v3, p1, Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/RecyclerView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_0

    :cond_1
    move v0, v1

    .line 1332
    :goto_1
    return v0

    .line 1329
    :catch_1
    move-exception v0

    move v0, v1

    .line 1330
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1332
    goto :goto_1
.end method

.method private static a(Landroid/widget/AbsListView;Landroid/view/View;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1250
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1252
    if-ne v1, v0, :cond_0

    .line 1253
    :try_start_0
    invoke-static {p1}, Lcom/taplytics/jk;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taplytics/jk;->a(Landroid/widget/AbsListView;Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1258
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1255
    goto :goto_0

    .line 1257
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/support/v7/widget/RecyclerView;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1277
    const/4 v2, 0x0

    .line 1278
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1279
    instance-of v3, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    .line 1280
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1282
    :goto_0
    sub-int v0, p0, v0

    .line 1283
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lt p0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1289
    :goto_1
    return-object v0

    .line 1286
    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1288
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1289
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static a(ILandroid/widget/ListView;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1264
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1265
    sub-int v1, p0, v1

    .line 1266
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-object v0

    .line 1269
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1270
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 6

    .prologue
    .line 1341
    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1343
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1346
    const/4 v2, 0x0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taplytics/jk;->a(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1348
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    invoke-static {}, Lcom/taplytics/jk;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 1350
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1351
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_0
    return-object v1

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    const-string v2, "Problem getting delay load view"

    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Lcom/taplytics/b;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RelativeLayout;
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 1141
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1142
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1143
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1144
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1147
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1153
    sget-object v0, Lcom/taplytics/b;->alligator:Lcom/taplytics/b;

    invoke-virtual {p0, v0}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Experiment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, "loading..."

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Variation: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_2

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string p2, "loading..."

    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    :goto_0
    new-instance v6, Lcom/taplytics/ke;

    invoke-direct {v6}, Lcom/taplytics/ke;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1171
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taplytics/fy;->h()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1172
    const-string v6, "Taplytics SDK\nUpdate Available"

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lcom/taplytics/jk;->a(F)I

    move-result v7

    invoke-static {v6, v9, v9, v7, v9}, Lcom/taplytics/jk;->a(Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v6

    .line 1174
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1175
    const/4 v7, 0x2

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1176
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1177
    const v6, 0x800005

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1180
    :cond_4
    invoke-static {}, Lcom/taplytics/js;->d()I

    move-result v6

    const/4 v7, -0x8

    invoke-static {v1, v6, v7, v9, v9}, Lcom/taplytics/jk;->a(Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v1

    .line 1181
    invoke-static {}, Lcom/taplytics/js;->c()I

    move-result v6

    invoke-static {v0, v6, v9, v9, v9}, Lcom/taplytics/jk;->a(Ljava/lang/String;IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 1183
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1184
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1187
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1189
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1190
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1197
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1198
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1200
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {v6}, Lcom/taplytics/jk;->a(F)I

    move-result v6

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1206
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1207
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1209
    return-object v2

    .line 1159
    :cond_5
    invoke-static {p0}, Lcom/taplytics/js;->a(Lcom/taplytics/b;)Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-static {p0}, Lcom/taplytics/js;->b(Lcom/taplytics/b;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;IIII)Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 103
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 110
    const/16 v2, 0x31

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-object v0
.end method

.method public static a(Lcom/taplytics/b;)Lcom/taplytics/jo;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1098
    new-instance v1, Lcom/taplytics/jo;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/taplytics/jo;-><init>(Landroid/content/Context;)V

    .line 1100
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1104
    const/4 v2, 0x0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taplytics/jk;->a(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1107
    new-instance v2, Lcom/taplytics/js;

    invoke-static {p0}, Lcom/taplytics/jq;->a(Lcom/taplytics/b;)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v2, v3, v4}, Lcom/taplytics/js;-><init>(IF)V

    invoke-virtual {v1, v2}, Lcom/taplytics/jo;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1111
    :goto_0
    invoke-virtual {v1, v0}, Lcom/taplytics/jo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    invoke-static {}, Lcom/taplytics/js;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taplytics/jo;->setId(I)V

    .line 1113
    invoke-virtual {p0}, Lcom/taplytics/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taplytics/jo;->setTag(Ljava/lang/Object;)V

    .line 1117
    :goto_1
    return-object v1

    .line 1109
    :cond_0
    new-instance v2, Lcom/taplytics/js;

    invoke-static {p0}, Lcom/taplytics/jq;->a(Lcom/taplytics/b;)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v2, v3, v4}, Lcom/taplytics/js;-><init>(IF)V

    invoke-virtual {v1, v2}, Lcom/taplytics/jo;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    const-string v2, "border"

    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    invoke-static {}, Lcom/taplytics/gm;->a()Lcom/taplytics/gm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gm;->d()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    :goto_0
    return-object p0

    .line 581
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Object"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/jk;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    move-object p0, v0

    .line 584
    goto :goto_0
.end method

.method public static a(FFLandroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 996
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 997
    invoke-static {p2}, Lcom/taplytics/jk;->b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v1

    .line 998
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 1000
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1002
    :try_start_0
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1004
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1007
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1008
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1009
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 1010
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 1013
    int-to-float v4, v3

    cmpl-float v4, p0, v4

    if-lez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1014
    instance-of v2, v1, Landroid/widget/AbsListView;

    if-eqz v2, :cond_2

    .line 1016
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 1018
    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    move v4, v5

    .line 1019
    :goto_1
    if-ge v4, v9, :cond_2

    .line 1020
    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView;

    move-object v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1021
    new-instance v10, Landroid/view/View;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1023
    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1024
    const/4 v2, 0x0

    aget v2, v8, v2

    .line 1025
    const/4 v11, 0x1

    aget v11, v8, v11

    .line 1026
    int-to-float v12, v2

    cmpl-float v12, p0, v12

    if-lez v12, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v2, v12

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_3

    int-to-float v2, v11

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v11

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    .line 1027
    instance-of v2, v3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1028
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-static {v2}, Lcom/taplytics/jk;->b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1029
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1030
    invoke-static {}, Lcom/taplytics/jk;->a()I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 1031
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1032
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1033
    invoke-interface {v7, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 1049
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1036
    :cond_1
    invoke-interface {v7, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1044
    :cond_2
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1045
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1019
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    .line 1053
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1054
    return-object v6
.end method

.method public static a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 403
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 406
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    :try_start_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 413
    :goto_0
    :try_start_2
    const-string v2, "identifier"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/jk;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 417
    const-string v3, "baseClass"

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const-string v0, "class"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    :cond_0
    const-string v0, "subClasses"

    invoke-static {p0}, Lcom/taplytics/jk;->b(Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    const-string v0, "activity"

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    :cond_1
    const-string v0, "methodInfo"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/taplytics/kh;->a(Ljava/lang/Class;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v0, "position"

    invoke-static {p0}, Lcom/taplytics/jk;->e(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    invoke-static {p0}, Lcom/taplytics/jy;->a(Landroid/view/View;)I

    move-result v0

    .line 433
    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    .line 434
    const-string v2, "fragId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 435
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 436
    const-string v2, "fragIdentifier"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 440
    :try_start_3
    const-string v2, "_viewpager_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 442
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 443
    array-length v3, v0

    if-lez v3, :cond_2

    .line 444
    const-string v3, "position"

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v0, "cellInfo"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 455
    :cond_2
    :goto_1
    :try_start_4
    invoke-static {p0}, Lcom/taplytics/jk;->f(Landroid/view/View;)Landroid/widget/AbsListView;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_3

    .line 457
    const-string v2, "isInListView"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 458
    invoke-static {v0, p0}, Lcom/taplytics/jk;->a(Landroid/widget/AbsListView;Landroid/view/View;)I

    move-result v2

    .line 459
    if-eq v2, v5, :cond_3

    .line 460
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 461
    const-string v3, "position"

    invoke-static {v0, p0}, Lcom/taplytics/jk;->a(Landroid/widget/AbsListView;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    const-string v0, "cellInfo"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 467
    :cond_3
    :try_start_5
    invoke-static {p0}, Lcom/taplytics/jk;->g(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_4

    .line 469
    const-string v2, "isInRecycler"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 470
    invoke-static {v0, p0}, Lcom/taplytics/jk;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I

    move-result v2

    .line 471
    if-eq v2, v5, :cond_4

    .line 472
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 473
    const-string v3, "position"

    invoke-static {v0, p0}, Lcom/taplytics/jk;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 474
    const-string v0, "cellInfo"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 483
    :cond_4
    :goto_2
    :try_start_6
    invoke-static {p0}, Lcom/taplytics/ax;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 484
    const-string v2, "imgFileName"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_5

    .line 488
    const-string v0, "hasOnClick"

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    move-object v0, v1

    .line 494
    :goto_3
    return-object v0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    const-string v0, "error setting viewpager fragment id"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 491
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 492
    goto :goto_3

    .line 477
    :catch_2
    move-exception v0

    .line 479
    const-string v2, "recview err"

    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Exception;

    :goto_4
    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 410
    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic a(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Lcom/taplytics/jk;->d(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    return-void
.end method

.method public static a(Landroid/app/AlertDialog;I)V
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 164
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 165
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 1506
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/eo;->k()Lorg/json/JSONArray;

    move-result-object v3

    .line 1507
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    .line 1510
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1511
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "initProperties"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "anID"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1516
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1517
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "anProperties"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1518
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1519
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1521
    :cond_0
    return-void

    .line 1510
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 7

    .prologue
    .line 1464
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1465
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1466
    check-cast v1, Ljava/lang/String;

    .line 1467
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1468
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 1469
    check-cast v0, Ljava/util/HashMap;

    .line 1470
    const-string v2, "parameterType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1471
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1472
    check-cast v3, Ljava/lang/String;

    .line 1473
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/taplytics/kh;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1478
    :cond_1
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1479
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;ILjava/lang/String;Lorg/json/JSONObject;IZ)V
    .locals 4

    .prologue
    .line 878
    if-eqz p2, :cond_1

    :try_start_0
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_viewpager_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    instance-of v1, p0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_4

    .line 883
    move-object v0, p0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v1, v0

    .line 893
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bi;

    move-result-object v1

    .line 895
    const-string v2, "_"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 897
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 898
    invoke-static {v1, v2}, Lcom/taplytics/jy;->a(Landroid/support/v4/view/bi;I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 900
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 901
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 911
    :cond_1
    :goto_1
    if-eqz p0, :cond_3

    .line 912
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_3

    .line 917
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found View: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 921
    :cond_2
    const/4 v2, 0x0

    invoke-static {p3, v1, p5, v2}, Lcom/taplytics/jk;->a(Lorg/json/JSONObject;Landroid/view/View;ZZ)V

    .line 925
    :cond_3
    :goto_2
    return-void

    .line 884
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_5

    .line 885
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    goto/16 :goto_0

    .line 887
    :cond_5
    invoke-static {p0}, Lcom/taplytics/jk;->e(Landroid/view/ViewGroup;)Landroid/support/v4/view/ViewPager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 888
    if-nez v1, :cond_0

    goto :goto_2

    .line 907
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3}, Lcom/taplytics/jk;->b(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 209
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 212
    invoke-static {p0}, Lcom/taplytics/jk;->d(Landroid/view/View;)V

    .line 215
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    move v8, v4

    move v3, p1

    :goto_1
    if-ge v8, v9, :cond_0

    .line 217
    :try_start_1
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 218
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/taplytics/js;->a()I

    move-result v6

    if-eq v1, v6, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/taplytics/js;->b()I

    move-result v6

    if-eq v1, v6, :cond_5

    .line 220
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-static {v1, v3, p2}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v5

    .line 223
    :cond_3
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 224
    invoke-static {v2}, Lcom/taplytics/jk;->d(Landroid/view/View;)V

    .line 226
    :cond_4
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-static {v1, v3, p2}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 228
    :cond_5
    instance-of v1, v2, Landroid/widget/AbsListView;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/taplytics/kb;->bat:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 230
    check-cast v2, Landroid/widget/AbsListView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 235
    :goto_2
    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "View"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "AbsListView"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 236
    :cond_6
    if-nez v6, :cond_7

    .line 237
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    .line 239
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    .line 243
    :cond_8
    const-string v1, "mOnScrollListener"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 247
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 250
    instance-of v11, v1, Lcom/taplytics/ex;

    if-nez v11, :cond_9

    .line 252
    new-instance v11, Lcom/taplytics/ex;

    invoke-direct {v11, v1}, Lcom/taplytics/ex;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v10, v2, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    :cond_9
    const-string v1, "mRecycler"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 262
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 266
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v10, "mRecyclerListener"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 270
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$RecyclerListener;

    .line 271
    instance-of v11, v1, Lcom/taplytics/et;

    if-nez v11, :cond_a

    .line 272
    new-instance v11, Lcom/taplytics/et;

    invoke-direct {v11, v1}, Lcom/taplytics/et;-><init>(Landroid/widget/AbsListView$RecyclerListener;)V

    invoke-virtual {v10, v6, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    :cond_a
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->t()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 279
    if-nez v1, :cond_c

    .line 280
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 281
    const-string v6, "hasDataSetObserver"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taplytics/gq;->t()I

    move-result v6

    invoke-virtual {v2, v6, v1}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    move v1, v4

    .line 298
    :goto_3
    if-nez v1, :cond_b

    .line 299
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    new-instance v6, Lcom/taplytics/eu;

    invoke-direct {v6, v2}, Lcom/taplytics/eu;-><init>(Landroid/widget/AbsListView;)V

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    :goto_4
    move v1, v3

    .line 215
    :goto_5
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v3, v1

    goto/16 :goto_1

    .line 284
    :cond_c
    instance-of v6, v1, Ljava/util/HashMap;

    if-eqz v6, :cond_16

    .line 285
    check-cast v1, Ljava/util/HashMap;

    .line 286
    const-string v6, "hasDataSetObserver"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 287
    const-string v6, "hasDataSetObserver"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taplytics/gq;->t()I

    move-result v6

    invoke-virtual {v2, v6, v1}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    move v1, v4

    .line 289
    goto :goto_3

    .line 291
    :cond_d
    const-string v6, "hasDataSetObserver"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_3

    .line 301
    :catch_0
    move-exception v1

    .line 302
    :try_start_3
    const-string v2, "Problem getting OnScrollListener for ListView"

    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 377
    :catch_1
    move-exception v1

    move-object v2, v1

    move v1, v3

    .line 378
    :try_start_4
    const-string v3, "Attaching listeners:"

    invoke-static {v3, v2}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 382
    :catch_2
    move-exception v1

    .line 383
    const-string v2, "Attaching listeners:"

    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 307
    :cond_e
    :try_start_5
    instance-of v1, v2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/taplytics/kb;->bear:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 308
    check-cast v2, Landroid/support/v7/widget/RecyclerView;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .line 313
    :goto_6
    if-eqz v6, :cond_f

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "View"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "RecyclerView"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 314
    :cond_f
    if-nez v6, :cond_10

    .line 315
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    goto :goto_6

    .line 317
    :cond_10
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    goto :goto_6

    .line 322
    :cond_11
    const-string v1, "mScrollListener"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 324
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 326
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 330
    instance-of v11, v1, Lcom/taplytics/ew;

    if-nez v11, :cond_12

    .line 332
    new-instance v11, Lcom/taplytics/ew;

    invoke-direct {v11, v1}, Lcom/taplytics/ew;-><init>(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {v10, v2, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    :cond_12
    const-string v1, "mRecyclerListener"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 338
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 340
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 342
    instance-of v10, v1, Lcom/taplytics/ez;

    if-nez v10, :cond_13

    .line 343
    new-instance v10, Lcom/taplytics/ez;

    invoke-direct {v10, v1}, Lcom/taplytics/ez;-><init>(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    invoke-virtual {v6, v2, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    :cond_13
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->t()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 349
    if-nez v1, :cond_14

    .line 350
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 351
    const-string v6, "hasDatasetObserver"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taplytics/gq;->t()I

    move-result v6

    invoke-virtual {v2, v6, v1}, Landroid/support/v7/widget/RecyclerView;->setTag(ILjava/lang/Object;)V

    move v1, v4

    .line 365
    :goto_7
    if-nez v1, :cond_b

    .line 366
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    new-instance v6, Lcom/taplytics/fa;

    invoke-direct {v6, v2}, Lcom/taplytics/fa;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_4

    .line 368
    :catch_3
    move-exception v1

    .line 369
    :try_start_7
    const-string v2, "Problem getting OnScrollListener for RecyclerView"

    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 373
    :catch_4
    move-exception v1

    goto/16 :goto_4

    .line 354
    :cond_14
    :try_start_8
    instance-of v6, v1, Ljava/util/HashMap;

    if-eqz v6, :cond_15

    .line 355
    check-cast v1, Ljava/util/HashMap;

    .line 356
    const-string v6, "hasDatasetObserver"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 357
    const-string v6, "hasDatasetObserver"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taplytics/gq;->t()I

    move-result v6

    invoke-virtual {v2, v6, v1}, Landroid/support/v7/widget/RecyclerView;->setTag(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    move v1, v4

    .line 359
    goto :goto_7

    :cond_15
    move v1, v5

    goto :goto_7

    :cond_16
    move v1, v5

    goto/16 :goto_3
.end method

.method private static a(Lorg/json/JSONObject;Landroid/view/View;ZZ)V
    .locals 8

    .prologue
    .line 820
    :try_start_0
    const-string v0, "anProperties"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 821
    if-eqz v6, :cond_1

    .line 822
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 825
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 828
    :try_start_1
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 830
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 831
    const-string v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    .line 832
    invoke-static/range {v0 .. v5}, Lcom/taplytics/kh;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ZZ)V

    .line 833
    if-eqz p2, :cond_0

    .line 834
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->c()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "initProperties"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "anID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    goto :goto_0

    .line 842
    :catch_1
    move-exception v0

    .line 843
    const-string v1, "Problem applying methods"

    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Exception;

    :goto_1
    invoke-static {v1, v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 845
    :cond_1
    return-void

    .line 843
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    goto :goto_1
.end method

.method public static a(Landroid/app/AlertDialog;)Z
    .locals 1

    .prologue
    .line 173
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 151
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/taplytics/js;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x17ccbc3b

    return v0
.end method

.method public static b(F)I
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 142
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static b(FFLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 1066
    invoke-static {p2}, Lcom/taplytics/jk;->b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1067
    instance-of v2, v0, Landroid/widget/Button;

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1069
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1070
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 1071
    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-long v4, v2

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->u()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1074
    int-to-float v2, v3

    cmpl-float v2, p0, v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    long-to-float v2, v4

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v4

    long-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1079
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 189
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {}, Lcom/taplytics/js;->a()I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {}, Lcom/taplytics/js;->b()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 191
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/taplytics/jk;->b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_2
    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/view/ViewStub;

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {}, Lcom/taplytics/js;->a()I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {}, Lcom/taplytics/js;->b()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 194
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "Finding all views: "

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 201
    :cond_3
    return-object v2
.end method

.method public static b(Landroid/view/View;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 558
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 560
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 561
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "View"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 563
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_0
    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_1
    :goto_1
    return-object v1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    const-string v2, "Class hierarchy: "

    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic b(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Lcom/taplytics/jk;->c(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    return-void
.end method

.method private static b(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 5

    .prologue
    .line 766
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 767
    sget-object v0, Lcom/taplytics/kb;->bat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    :cond_0
    return-void

    .line 772
    :cond_1
    :try_start_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 773
    sget-object v0, Lcom/taplytics/kb;->bear:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_0

    .line 781
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 786
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 787
    if-eqz v2, :cond_3

    .line 790
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_4

    instance-of v3, v0, Ljava/util/HashMap;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/util/HashMap;

    .line 792
    :goto_2
    const-string v3, "shouldReset"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/gq;->t()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 795
    const/4 v0, 0x1

    invoke-static {p2, v2, p3, v0}, Lcom/taplytics/jk;->a(Lorg/json/JSONObject;Landroid/view/View;ZZ)V

    .line 796
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    goto :goto_1

    .line 799
    :catch_0
    move-exception v0

    goto :goto_1

    .line 791
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 804
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 806
    :try_start_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 807
    :catch_1
    move-exception v0

    goto :goto_3

    .line 777
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1213
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static c()Lcom/taplytics/jw;
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1121
    new-instance v0, Lcom/taplytics/jw;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taplytics/jw;-><init>(Landroid/content/Context;)V

    .line 1122
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1126
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taplytics/jk;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1128
    invoke-virtual {v0, v1}, Lcom/taplytics/jw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    invoke-static {}, Lcom/taplytics/js;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taplytics/jw;->setId(I)V

    .line 1131
    return-object v0
.end method

.method private static c(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 713
    :try_start_0
    sget-object v0, Lcom/taplytics/kb;->bat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_0

    .line 717
    invoke-static {v0}, Lcom/taplytics/jk;->f(Landroid/view/View;)Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 718
    if-eqz v0, :cond_0

    .line 719
    invoke-static {p0, v0}, Lcom/taplytics/jk;->a(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    .line 720
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_0

    .line 723
    const/4 v1, 0x1

    invoke-static {p3, v0, p4, v1}, Lcom/taplytics/jk;->a(Lorg/json/JSONObject;Landroid/view/View;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/view/ViewGroup;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 592
    :try_start_0
    sget-object v2, Lcom/taplytics/kb;->beaver:Lcom/taplytics/kb;

    invoke-static {v2}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting properties to view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 601
    :cond_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/eo;->k()Lorg/json/JSONArray;

    move-result-object v16

    .line 602
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/eo;->a()Ljava/util/HashMap;

    move-result-object v17

    .line 604
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 605
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/gq;->c()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    :catch_0
    move-exception v2

    .line 706
    const-string v3, "Critical: SetProps didn\'t work"

    invoke-static {v3, v2}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 709
    :cond_1
    return-void

    .line 608
    :cond_2
    if-eqz v16, :cond_1

    .line 610
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v15, v2

    :goto_1
    if-ltz v15, :cond_1

    .line 611
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 615
    :try_start_2
    const-string v2, "initProperties"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 619
    :try_start_3
    const-string v2, "_view"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    const-string v3, "fragId"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 621
    const-string v3, "fragIdentifier"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 629
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v13, :cond_4

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fq;->d()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 638
    :cond_4
    const-string v2, "anID"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 639
    const-string v2, "isInListView"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    .line 640
    const-string v3, "isInRecycler"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    .line 641
    const-string v5, "cellElement"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 642
    const-string v8, "cellInfo"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 643
    const-string v8, "reset"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v8

    .line 650
    if-nez v2, :cond_5

    if-eqz v3, :cond_9

    :cond_5
    if-eqz v5, :cond_9

    .line 651
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/taplytics/jk;->f(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 652
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/taplytics/jn;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/taplytics/jn;-><init>(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    if-nez v13, :cond_8

    const-wide/16 v2, 0xa

    :goto_2
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8}, Lcom/taplytics/jk;->b(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    .line 610
    :cond_7
    :goto_3
    add-int/lit8 v2, v15, -0x1

    move v15, v2

    goto/16 :goto_1

    .line 652
    :cond_8
    const-wide/16 v2, 0x11d

    goto :goto_2

    .line 660
    :cond_9
    if-nez v2, :cond_a

    if-eqz v3, :cond_10

    :cond_a
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 661
    const-string v2, "position"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 662
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 663
    if-eqz v5, :cond_b

    .line 664
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->t()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 665
    if-eqz v2, :cond_d

    instance-of v9, v2, Ljava/util/HashMap;

    if-eqz v9, :cond_d

    check-cast v2, Ljava/util/HashMap;

    .line 666
    :goto_4
    const-string v9, "shouldReset"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taplytics/gq;->t()I

    move-result v9

    invoke-virtual {v5, v9, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 670
    :cond_b
    const/4 v2, -0x1

    if-eq v4, v2, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/taplytics/jk;->f(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 671
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/taplytics/kd;

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/taplytics/kd;-><init>(ZILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    if-nez v13, :cond_e

    const-wide/16 v10, 0xa

    :goto_5
    invoke-virtual {v9, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    :cond_c
    if-eqz v3, :cond_f

    .line 685
    move-object/from16 v0, p0

    invoke-static {v4, v0, v6, v7, v8}, Lcom/taplytics/jk;->d(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 694
    :catch_1
    move-exception v2

    .line 695
    :try_start_5
    const-string v3, "Some issues with lists or something"

    invoke-static {v3, v2}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 665
    :cond_d
    :try_start_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_4

    .line 671
    :cond_e
    const-wide/16 v10, 0x11d

    goto :goto_5

    .line 687
    :cond_f
    move-object/from16 v0, p0

    invoke-static {v4, v0, v6, v7, v8}, Lcom/taplytics/jk;->c(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    goto/16 :goto_3

    .line 689
    :cond_10
    if-eqz v11, :cond_11

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v9, p0

    move v10, v6

    move-object v12, v7

    move v14, v8

    .line 690
    invoke-static/range {v9 .. v14}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;ILjava/lang/String;Lorg/json/JSONObject;IZ)V

    goto/16 :goto_3

    .line 692
    :cond_11
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 616
    :catch_2
    move-exception v2

    goto/16 :goto_3
.end method

.method private static c(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 3

    .prologue
    .line 849
    if-eqz p0, :cond_1

    .line 851
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_1

    .line 855
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 858
    :cond_0
    const/4 v1, 0x0

    invoke-static {p2, v0, p3, v1}, Lcom/taplytics/jk;->a(Lorg/json/JSONObject;Landroid/view/View;ZZ)V

    .line 862
    :cond_1
    return-void
.end method

.method private static d(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 735
    :try_start_0
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const-string v0, "Applying to recycler cell"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 738
    :cond_0
    sget-object v0, Lcom/taplytics/kb;->bear:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_1

    .line 742
    invoke-static {v0}, Lcom/taplytics/jk;->g(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_1

    .line 744
    invoke-static {p0, v0}, Lcom/taplytics/jk;->a(ILandroid/support/v7/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_1

    .line 748
    const/4 v1, 0x1

    invoke-static {p3, v0, p4, v1}, Lcom/taplytics/jk;->a(Lorg/json/JSONObject;Landroid/view/View;ZZ)V

    .line 749
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const-string v0, "made it! applying methods to recycler cell"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taplytics/gq;->c(Z)V

    .line 397
    :cond_0
    return-void
.end method

.method public static d(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    .line 1448
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1449
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1450
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1451
    if-eqz v1, :cond_1

    instance-of v0, v1, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1452
    check-cast v0, Ljava/util/HashMap;

    const-string v4, "shouldReset"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1453
    if-eqz v0, :cond_0

    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1454
    :cond_0
    check-cast v1, Ljava/util/HashMap;

    invoke-static {v2, v1}, Lcom/taplytics/jk;->a(Landroid/view/View;Ljava/util/HashMap;)V

    .line 1457
    :cond_1
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 1458
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/taplytics/jk;->d(Landroid/view/ViewGroup;)V

    .line 1448
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1461
    :cond_3
    return-void
.end method

.method private static e(Landroid/view/ViewGroup;)Landroid/support/v4/view/ViewPager;
    .locals 4

    .prologue
    .line 971
    const/4 v1, 0x0

    .line 973
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 974
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 975
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 976
    instance-of v3, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 977
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 974
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 978
    :cond_0
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 979
    invoke-static {p0}, Lcom/taplytics/jk;->e(Landroid/view/ViewGroup;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    goto :goto_1

    .line 983
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static e(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 502
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 503
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 505
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 506
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 507
    const-string v2, "startX"

    aget v5, v1, v0

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    const-string v2, "startY"

    aget v5, v1, v7

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    const-string v2, "endX"

    aget v5, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    const-string v2, "endY"

    aget v1, v1, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 513
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 514
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 515
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 516
    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 522
    :try_start_0
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :try_start_1
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v2, v1

    move v1, v0

    .line 527
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v0, v6, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_0

    .line 529
    :try_start_2
    const-class v0, Landroid/view/Display;

    const-string v6, "getRawWidth"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 530
    const-class v0, Landroid/view/Display;

    const-string v6, "getRawHeight"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 536
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_1

    .line 538
    :try_start_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 539
    const-class v6, Landroid/view/Display;

    const-string v7, "getRealSize"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/graphics/Point;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 541
    iget v1, v0, Landroid/graphics/Point;->y:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 544
    :cond_1
    :goto_2
    const-string v0, "width"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 545
    const-string v0, "height"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    :cond_2
    const-string v0, "screenDimensions"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 551
    :cond_3
    return-object v3

    .line 524
    :catch_0
    move-exception v1

    move v1, v0

    :goto_3
    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 531
    :catch_1
    move-exception v0

    .line 532
    const-string v6, "getting screen dimensions, but probably fine to ignore"

    invoke-static {v6, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 542
    :catch_2
    move-exception v0

    goto :goto_2

    .line 524
    :catch_3
    move-exception v2

    goto :goto_3
.end method

.method private static f(Landroid/view/View;)Landroid/widget/AbsListView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1236
    :try_start_0
    invoke-static {p0}, Lcom/taplytics/jk;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1237
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v2

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_0

    .line 1238
    check-cast v0, Landroid/widget/AbsListView;

    .line 1245
    :goto_0
    return-object v0

    .line 1239
    :cond_0
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v2

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1240
    invoke-static {v0}, Lcom/taplytics/jk;->f(Landroid/view/View;)Landroid/widget/AbsListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1242
    goto :goto_0

    .line 1244
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1245
    goto :goto_0
.end method

.method private static f(Landroid/view/ViewGroup;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1484
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1485
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 1486
    check-cast v0, Ljava/util/HashMap;

    .line 1487
    const-string v1, "listOrFragmentFirstTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1488
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1489
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1501
    :goto_0
    return v0

    .line 1493
    :cond_0
    const-string v1, "listOrFragmentFirstTime"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->t()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1501
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1497
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1498
    const-string v1, "listOrFragmentFirstTime"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->t()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static g(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1300
    :try_start_0
    invoke-static {p0}, Lcom/taplytics/jk;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1301
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v2

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 1302
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1309
    :goto_0
    return-object v0

    .line 1303
    :cond_0
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v2

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1304
    invoke-static {v0}, Lcom/taplytics/jk;->g(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1306
    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1309
    goto :goto_0
.end method
