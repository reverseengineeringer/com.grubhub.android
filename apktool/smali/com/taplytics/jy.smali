.class public Lcom/taplytics/jy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taplytics/jy;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 444
    :try_start_0
    invoke-static {p0}, Lcom/taplytics/jk;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 445
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 446
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    invoke-static {v1}, Lcom/taplytics/jy;->a(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/view/bi;I)Landroid/support/v4/app/Fragment;
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 510
    .line 514
    :try_start_0
    instance-of v0, p0, Landroid/support/v4/app/ac;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/support/v4/app/ad;

    if-eqz v0, :cond_b

    .line 515
    :cond_0
    instance-of v0, p0, Landroid/support/v4/app/ac;

    if-eqz v0, :cond_1

    const-class v0, Landroid/support/v4/app/ac;

    move-object v4, v0

    .line 519
    :goto_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/taplytics/fq;->a(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 520
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/taplytics/fq;->a(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 521
    invoke-static {v1, p0}, Lcom/taplytics/jy;->a(Ljava/lang/reflect/Field;Landroid/support/v4/view/bi;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_a

    .line 583
    :goto_1
    return-object v0

    .line 515
    :cond_1
    const-class v0, Landroid/support/v4/app/ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v0

    goto :goto_0

    .line 527
    :cond_2
    :try_start_1
    const-string v0, "mCurrentPrimaryItem"

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v2

    .line 543
    :goto_2
    if-eqz v0, :cond_3

    .line 544
    :try_start_2
    invoke-static {v0, p0}, Lcom/taplytics/jy;->a(Ljava/lang/reflect/Field;Landroid/support/v4/view/bi;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 545
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/taplytics/fq;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 548
    :cond_3
    :goto_3
    if-nez v1, :cond_8

    .line 554
    :try_start_3
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_8

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_4
    if-ge v4, v6, :cond_7

    aget-object v7, v5, v4

    .line 556
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v8, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v12, :cond_6

    .line 558
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    move v0, v3

    :goto_5
    if-ge v0, v9, :cond_6

    aget-object v10, v8, v0

    .line 559
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 560
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/taplytics/fq;->a(Ljava/lang/reflect/Method;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 558
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 529
    :catch_0
    move-exception v0

    .line 532
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v1, v3

    :goto_6
    if-ge v1, v6, :cond_9

    aget-object v0, v5, v1

    .line 533
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Landroid/support/v4/app/Fragment;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-ne v7, v8, :cond_5

    move-object v1, v2

    .line 535
    goto :goto_2

    .line 532
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 555
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 568
    :cond_7
    :try_start_5
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 569
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 573
    :catch_1
    move-exception v0

    .line 575
    :try_start_6
    const-string v3, "problem getting viewpager"

    invoke-static {v3, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v2

    .line 576
    goto/16 :goto_1

    .line 580
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 581
    :goto_7
    const-string v2, "problem getting viewpager"

    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 580
    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_7

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_2

    :cond_a
    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_b
    move-object v1, v2

    goto/16 :goto_3
.end method

.method private static a(Ljava/lang/reflect/Field;Landroid/support/v4/view/bi;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 588
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 589
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 590
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/taplytics/jy;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(I)V
    .locals 5

    .prologue
    .line 317
    :try_start_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 319
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 321
    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 323
    const-string v2, "fragment"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    sget-object v1, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v2

    const-string v3, "viewDisappeared"

    invoke-static {}, Lcom/taplytics/cc;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/taplytics/cc;->b(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 332
    invoke-static {p0}, Lcom/taplytics/cc;->a(I)V

    .line 335
    :cond_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fq;->d()Ljava/util/HashSet;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v1, "VP remove:"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/taplytics/jy;->b(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static a(ILjava/lang/Object;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unchecked"
        }
    .end annotation

    .prologue
    .line 349
    :try_start_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    :cond_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_4

    const-string v0, ""

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 360
    const-string v1, "fragment"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    sget-object v1, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v1

    const-string v2, "viewAppeared"

    invoke-virtual {v1, v2, p2, v0}, Lcom/taplytics/cc;->b(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 366
    :cond_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->v()V

    .line 372
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 373
    const/4 v0, 0x0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {p3, v0, v1}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 385
    :cond_2
    :goto_1
    invoke-static {}, Lcom/taplytics/cc;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_3
    :goto_2
    return-void

    .line 352
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 375
    :cond_5
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 376
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 377
    check-cast v0, Ljava/util/HashMap;

    .line 378
    const-string v1, "fragmentChecked"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    const/4 v0, 0x0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {p3, v0, v1}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    const-string v1, "adding f: "

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private static a(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    .line 152
    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    const-string v1, "fragmentChecked"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->t()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 162
    :cond_0
    return-void

    .line 154
    :cond_1
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 155
    check-cast v0, Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 200
    sget-object v0, Lcom/taplytics/jy;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/taplytics/jy;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sget-object v0, Lcom/taplytics/jy;->a:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/taplytics/jz;

    invoke-direct {v1, p1, p3}, Lcom/taplytics/jz;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/taplytics/jy;->a(IZ)Z

    .line 223
    invoke-static {p2, p3, p4, p0}, Lcom/taplytics/jy;->a(ILjava/lang/Object;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 224
    sget-object v0, Lcom/taplytics/jy;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    if-eqz p5, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 230
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/taplytics/jy;->a(IZ)Z

    .line 232
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z

    goto :goto_0

    .line 233
    :cond_4
    if-eqz p6, :cond_0

    if-nez p5, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taplytics/jy;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p2, p3, p4, p0}, Lcom/taplytics/jy;->a(ILjava/lang/Object;Ljava/lang/String;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->b()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 435
    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/taplytics/jy;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(IZ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    :try_start_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    invoke-static {}, Lcom/taplytics/cc;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 286
    const-string v3, "fragment"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    sget-object v0, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v3

    const-string v4, "viewDisappeared"

    invoke-static {}, Lcom/taplytics/cc;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/taplytics/cc;->b(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 296
    invoke-static {p0}, Lcom/taplytics/cc;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 306
    :goto_0
    return v0

    :cond_2
    move v0, v2

    .line 301
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string v1, "fragment removal:"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v2

    .line 306
    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 47
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/taplytics/jy;->b(Landroid/view/ViewGroup;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_0

    sget-object v1, Lcom/taplytics/kb;->bobcat:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fq;->e()Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 54
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fq;->e()Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 55
    invoke-static {p0}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;)V

    .line 56
    invoke-static {p0}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;)V

    move v1, v3

    .line 136
    :goto_0
    return v1

    .line 59
    :cond_0
    sget-object v1, Lcom/taplytics/kb;->bluejay:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/taplytics/kb;->boar:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.support.v4.view.ViewPager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    move-object v0, p0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v1, v0

    .line 61
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bi;

    move-result-object v4

    .line 63
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->t()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 66
    const-string v5, "hasGlobalLayoutListener"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taplytics/gq;->t()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/support/v4/view/ViewPager;->setTag(ILjava/lang/Object;)V

    .line 79
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v5, Lcom/taplytics/ka;

    invoke-direct {v5, v1, p0, v4}, Lcom/taplytics/ka;-><init>(Landroid/support/v4/view/ViewPager;Landroid/view/ViewGroup;Landroid/support/v4/view/bi;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 80
    invoke-static {p0}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;)V

    move v1, v3

    .line 81
    goto :goto_0

    .line 68
    :cond_2
    instance-of v5, v2, Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 69
    check-cast v2, Ljava/util/HashMap;

    .line 70
    const-string v5, "hasGlobalLayoutListener"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const-string v5, "hasGlobalLayoutListener"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taplytics/gq;->t()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/support/v4/view/ViewPager;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v1

    .line 132
    const-string v2, "fragstuff"

    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    move v1, v3

    .line 134
    goto/16 :goto_0

    .line 86
    :cond_5
    if-nez p1, :cond_4

    :try_start_1
    sget-object v1, Lcom/taplytics/kb;->boar:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_4

    .line 92
    :try_start_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getSupportFragmentManager"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/w;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    if-eqz v1, :cond_7

    .line 98
    :try_start_3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_6

    .line 99
    invoke-virtual {v1}, Landroid/support/v4/app/w;->b()Z

    .line 100
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 106
    :cond_6
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fq;->f()Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 111
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fq;->f()Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112
    invoke-static {p0}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;)V

    .line 113
    invoke-static {p0}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v3

    .line 114
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 117
    goto/16 :goto_0

    .line 119
    :catch_1
    move-exception v1

    move v1, v2

    .line 120
    goto/16 :goto_0

    .line 123
    :catch_2
    move-exception v1

    .line 124
    :try_start_5
    const-string v2, "F sup: "

    instance-of v4, v1, Ljava/lang/Exception;

    if-eqz v4, :cond_8

    check-cast v1, Ljava/lang/Exception;

    :goto_3
    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v3

    .line 125
    goto/16 :goto_0

    .line 124
    :cond_8
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_9
    move v1, v3

    .line 136
    goto/16 :goto_0

    .line 102
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method private static b(Landroid/view/ViewGroup;)I
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7fffffff

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 260
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/taplytics/jv;

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 261
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 266
    :cond_2
    return v0
.end method

.method private static b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unchecked"
        }
    .end annotation

    .prologue
    .line 399
    :try_start_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    :cond_0
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 406
    const-string v1, "fragment"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    sget-object v1, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v1

    const-string v2, "viewAppeared"

    invoke-virtual {v1, v2, p2, v0}, Lcom/taplytics/cc;->b(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 412
    :cond_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->v()V

    .line 414
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->d()Ljava/util/HashSet;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-static {}, Lcom/taplytics/cc;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_2
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    const-string v1, "adding vp: "

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    move-object v0, p0

    .line 171
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 174
    check-cast v0, Landroid/view/ViewGroup;

    .line 176
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fq;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    invoke-static {v0, p1}, Lcom/taplytics/jy;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 180
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/taplytics/jk;->c(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_1
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_1
.end method
