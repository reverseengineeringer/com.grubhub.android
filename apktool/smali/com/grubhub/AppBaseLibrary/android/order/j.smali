.class public Lcom/grubhub/AppBaseLibrary/android/order/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()I
    .locals 3

    .prologue
    const/16 v0, 0x12c

    .line 468
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 469
    if-le v1, v0, :cond_0

    .line 472
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 112
    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 114
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 115
    invoke-static {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_1
    return v1

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1
.end method

.method public static a(ILjava/util/Date;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/k;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;)",
            "Lcom/grubhub/AppBaseLibrary/android/order/k;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/k;

    invoke-direct {v4}, Lcom/grubhub/AppBaseLibrary/android/order/k;-><init>()V

    .line 236
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 237
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm aa"

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->i()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;

    .line 243
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getDayOfWeek()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getTimeRanges()Ljava/util/ArrayList;

    move-result-object v7

    .line 246
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 248
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    const v3, 0x7f0804c6

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 252
    const/4 v3, 0x0

    .line 253
    const/4 v2, 0x0

    .line 254
    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 255
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 257
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 263
    :goto_1
    add-int/lit8 v8, v8, 0x1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v3

    .line 269
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 277
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 279
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 287
    :cond_1
    :goto_3
    const/4 v3, 0x0

    .line 288
    const/4 v2, 0x0

    .line 290
    :try_start_3
    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    .line 296
    :goto_4
    :try_start_4
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    .line 304
    :goto_5
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-ltz v9, :cond_2

    .line 305
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 310
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 311
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-ltz v9, :cond_4

    .line 312
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gtz v9, :cond_4

    .line 314
    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/grubhub/AppBaseLibrary/android/order/k;->a:Z

    .line 315
    iput-object v3, v4, Lcom/grubhub/AppBaseLibrary/android/order/k;->b:Ljava/util/Date;

    .line 316
    iput-object v8, v4, Lcom/grubhub/AppBaseLibrary/android/order/k;->c:Ljava/lang/String;

    .line 317
    iput-object v2, v4, Lcom/grubhub/AppBaseLibrary/android/order/k;->d:Ljava/util/Date;

    .line 318
    iput-object v0, v4, Lcom/grubhub/AppBaseLibrary/android/order/k;->e:Ljava/lang/String;

    .line 330
    :cond_3
    return-object v4

    .line 258
    :catch_0
    move-exception v9

    .line 259
    sget-object v10, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    :catch_1
    move-exception v0

    .line 265
    sget-object v8, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    .line 280
    :catch_2
    move-exception v2

    .line 281
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 291
    :catch_3
    move-exception v9

    .line 292
    sget-object v10, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 297
    :catch_4
    move-exception v9

    .line 298
    sget-object v10, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 247
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_2
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const-string v0, ""

    .line 55
    if-eqz p0, :cond_7

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 68
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_3
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 80
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 87
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 89
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_5
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 94
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_7
    return-object v0

    .line 81
    :cond_8
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 82
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 175
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm aa"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->i()Ljava/util/TimeZone;

    move-result-object v8

    .line 177
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 179
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    const/4 v2, 0x0

    .line 181
    const/4 v1, 0x0

    .line 184
    :try_start_0
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 186
    if-ltz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v3, :cond_0

    .line 187
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 188
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 190
    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 191
    :try_start_1
    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 194
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-ltz v1, :cond_4

    .line 195
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 204
    :cond_0
    :goto_1
    const v3, 0x7f0804c6

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const v0, 0x7f0804c6

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :catch_0
    move-exception v3

    .line 199
    :goto_2
    sget-object v10, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :catch_1
    move-exception v3

    .line 201
    :goto_3
    sget-object v10, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 209
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->d()Ljava/util/Date;

    move-result-object v0

    .line 210
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 211
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 213
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v8, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->i()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 219
    :cond_2
    const v0, 0x7f0804ca

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 222
    :cond_3
    return-object v5

    .line 200
    :catch_2
    move-exception v2

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v14, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v14

    goto :goto_3

    .line 198
    :catch_4
    move-exception v2

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v14, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v14

    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/Date;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 380
    .line 382
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 383
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->g()I

    move-result v2

    .line 385
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm aa"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->i()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 389
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;

    .line 391
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getDayOfWeek()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 392
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;->getTimeRanges()Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v6

    const v7, 0x7f0804c6

    invoke-virtual {v6, v7}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 400
    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 401
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 403
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 411
    :cond_2
    :goto_0
    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->e()Ljava/util/Date;

    move-result-object v6

    .line 423
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 429
    :goto_1
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 442
    :goto_2
    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    sget-object v6, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 406
    goto :goto_0

    .line 424
    :catch_1
    move-exception v0

    .line 425
    sget-object v7, Lcom/grubhub/AppBaseLibrary/android/order/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 131
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 136
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 137
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    .line 138
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 139
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    .line 140
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCrossStreet()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCrossStreet()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    .line 141
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    .line 143
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 154
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 155
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;IZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 343
    if-eqz p2, :cond_1

    .line 344
    const/4 v0, 0x1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->g()I

    move-result v0

    .line 350
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->e()Ljava/util/Date;

    move-result-object v3

    .line 352
    invoke-static {v0, v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(ILjava/util/Date;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/k;

    move-result-object v1

    .line 353
    iget-boolean v0, v1, Lcom/grubhub/AppBaseLibrary/android/order/k;->a:Z

    .line 357
    if-nez v0, :cond_3

    .line 358
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->h()I

    move-result v0

    .line 359
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 360
    invoke-static {v0, v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(ILjava/util/Date;Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/order/k;

    move-result-object v1

    .line 361
    iget-boolean v0, v1, Lcom/grubhub/AppBaseLibrary/android/order/k;->a:Z

    .line 365
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/grubhub/AppBaseLibrary/android/order/k;->d:Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 366
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const v4, 0xea60

    mul-int/2addr v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/k;->d:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 367
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method public static b()I
    .locals 3

    .prologue
    const/16 v0, 0x12c

    .line 479
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 480
    if-le v1, v0, :cond_0

    .line 483
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel$GHSIDateTime;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 454
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Ljava/util/ArrayList;)Ljava/util/Date;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_0

    .line 456
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm aa"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->i()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 458
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_0
    return-object v0
.end method
