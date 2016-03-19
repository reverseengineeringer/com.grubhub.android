.class public Lcom/urbanairship/json/JsonValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL:Lcom/urbanairship/json/JsonValue;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 716
    new-instance v0, Lcom/urbanairship/json/JsonValue$1;

    invoke-direct {v0}, Lcom/urbanairship/json/JsonValue$1;-><init>()V

    sput-object v0, Lcom/urbanairship/json/JsonValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 333
    :goto_0
    return-object v0

    .line 330
    :cond_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 333
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v1, Lcom/urbanairship/json/JsonException;

    const-string v2, "Unable to parse string"

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static wrap(C)Lcom/urbanairship/json/JsonValue;
    .locals 2

    .prologue
    .line 435
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {v0, v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(I)Lcom/urbanairship/json/JsonValue;
    .locals 2

    .prologue
    .line 446
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {v0, v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(J)Lcom/urbanairship/json/JsonValue;
    .locals 2

    .prologue
    .line 457
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {v0, v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonValue;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {p0, v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 518
    if-eqz p0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 519
    :cond_0
    sget-object p0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 580
    :goto_0
    return-object p0

    .line 522
    :cond_1
    instance-of v0, p0, Lcom/urbanairship/json/JsonValue;

    if-eqz v0, :cond_2

    .line 523
    check-cast p0, Lcom/urbanairship/json/JsonValue;

    goto :goto_0

    .line 526
    :cond_2
    instance-of v0, p0, Lcom/urbanairship/json/JsonMap;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/urbanairship/json/JsonList;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 532
    :cond_3
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v0, p0}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 535
    :cond_4
    instance-of v0, p0, Lcom/urbanairship/json/JsonSerializable;

    if-eqz v0, :cond_6

    .line 536
    check-cast p0, Lcom/urbanairship/json/JsonSerializable;

    invoke-interface {p0}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    .line 537
    if-nez v0, :cond_5

    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    :cond_5
    move-object p0, v0

    goto :goto_0

    .line 540
    :cond_6
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 541
    :cond_7
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 544
    :cond_8
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_9

    .line 545
    check-cast p0, Ljava/lang/Character;

    .line 546
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {p0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 549
    :cond_9
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 550
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 553
    :cond_a
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_d

    move-object v0, p0

    .line 554
    check-cast v0, Ljava/lang/Double;

    .line 555
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 556
    :cond_b
    new-instance v1, Lcom/urbanairship/json/JsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Double value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_c
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v0, p0}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto/16 :goto_0

    .line 563
    :cond_d
    :try_start_0
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_e

    .line 564
    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapJSONArray(Lorg/json/JSONArray;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 567
    :cond_e
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_f

    .line 568
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapJSONObject(Lorg/json/JSONObject;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 571
    :cond_f
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_10

    .line 572
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapCollection(Ljava/util/Collection;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 575
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 576
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapArray(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 579
    :cond_11
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 580
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapMap(Ljava/util/Map;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto/16 :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    throw v0

    .line 584
    :catch_1
    move-exception v0

    .line 585
    new-instance v1, Lcom/urbanairship/json/JsonException;

    const-string v2, "Failed to wrap value."

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 588
    :cond_12
    new-instance v0, Lcom/urbanairship/json/JsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;
    .locals 1

    .prologue
    .line 493
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 495
    :goto_0
    return-object p1

    .line 494
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {p0, v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Z)Lcom/urbanairship/json/JsonValue;
    .locals 2

    .prologue
    .line 469
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-static {v0, v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method private static wrapArray(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 603
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 604
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 605
    if-eqz v3, :cond_0

    .line 606
    invoke-static {v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_1
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    new-instance v1, Lcom/urbanairship/json/JsonList;

    invoke-direct {v1, v2}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static wrapCollection(Ljava/util/Collection;)Lcom/urbanairship/json/JsonValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 626
    if-eqz v2, :cond_0

    .line 627
    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_1
    new-instance v1, Lcom/urbanairship/json/JsonValue;

    new-instance v2, Lcom/urbanairship/json/JsonList;

    invoke-direct {v2, v0}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method private static wrapJSONArray(Lorg/json/JSONArray;)Lcom/urbanairship/json/JsonValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 667
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 670
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 671
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_1
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    new-instance v2, Lcom/urbanairship/json/JsonList;

    invoke-direct {v2, v1}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static wrapJSONObject(Lorg/json/JSONObject;)Lcom/urbanairship/json/JsonValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 688
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 690
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 691
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 695
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 700
    :cond_1
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    new-instance v2, Lcom/urbanairship/json/JsonMap;

    invoke-direct {v2, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v2}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static wrapMap(Ljava/util/Map;)Lcom/urbanairship/json/JsonValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/urbanairship/json/JsonValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 643
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 645
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 646
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 647
    new-instance v0, Lcom/urbanairship/json/JsonException;

    const-string v1, "Only string map keys are accepted."

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 651
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 655
    :cond_2
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    new-instance v1, Lcom/urbanairship/json/JsonMap;

    invoke-direct {v1, v2}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 341
    instance-of v0, p1, Lcom/urbanairship/json/JsonValue;

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    .line 345
    :cond_0
    check-cast p1, Lcom/urbanairship/json/JsonValue;

    .line 347
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoolean(Z)Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return p1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method

.method public getDouble(D)D
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-wide p1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return p1

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isInteger()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public getList()Lcom/urbanairship/json/JsonList;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonList;

    goto :goto_0
.end method

.method public getLong(J)J
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-wide p1

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isLong()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public getMap()Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isJsonMap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonMap;

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNumber()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 110
    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 356
    const/16 v0, 0x11

    .line 357
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 360
    :cond_0
    return v0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isDouble()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    return v0
.end method

.method public isInteger()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    return v0
.end method

.method public isJsonList()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonList;

    return v0
.end method

.method public isJsonMap()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonMap;

    return v0
.end method

.method public isLong()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "null"

    .line 391
    :goto_0
    return-object v0

    .line 375
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonMap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonList;

    if-eqz v0, :cond_4

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    const-string v1, "JsonValue - Failed to create JSON String."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    const-string v0, ""

    goto :goto_0
.end method

.method write(Lorg/json/JSONStringer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 414
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonList;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonList;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonList;->write(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonMap;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonMap;->write(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 711
    return-void
.end method
