.class public Lcom/urbanairship/push/iam/InAppMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alert:Ljava/lang/String;

.field private buttonActionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private buttonGroupId:Ljava/lang/String;

.field private clickActionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field

.field private durationMilliseconds:Ljava/lang/Long;

.field private expiryMS:Ljava/lang/Long;

.field private extras:Lcom/urbanairship/json/JsonMap;

.field private id:Ljava/lang/String;

.field private position:I

.field private primaryColor:Ljava/lang/Integer;

.field private secondaryColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 535
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 2

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 543
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    .line 544
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1300(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    .line 545
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1400(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    .line 546
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1500(Lcom/urbanairship/push/iam/InAppMessage;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    .line 547
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1600(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    .line 548
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->position:I
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1700(Lcom/urbanairship/push/iam/InAppMessage;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 549
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1800(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    .line 550
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1900(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 551
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$2000(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    .line 552
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$2100(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    .line 553
    # getter for: Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$2200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    .line 554
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/urbanairship/push/iam/InAppMessage$Builder;)I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    return v0
.end method

.method static synthetic access$900(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 2

    .prologue
    .line 719
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;Lcom/urbanairship/push/iam/InAppMessage$1;)V

    return-object v0
.end method

.method public setAlert(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    .line 650
    return-object p0
.end method

.method public setButtonActionValues(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 621
    if-nez p2, :cond_0

    .line 622
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :goto_0
    return-object p0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setButtonGroupId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    .line 638
    return-object p0
.end method

.method public setClickActionValues(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    .line 609
    :goto_0
    return-object p0

    .line 606
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    goto :goto_0
.end method

.method public setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 4

    .prologue
    .line 662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration must be greater than 0 milliseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    .line 667
    return-object p0
.end method

.method public setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    .line 579
    return-object p0
.end method

.method public setExtras(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    .line 592
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 2

    .prologue
    .line 680
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position must be either InAppMessage.POSITION_BOTTOM or InAppMessage.POSITION_TOP."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    iput p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 685
    return-object p0
.end method

.method public setPrimaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    .line 697
    return-object p0
.end method

.method public setSecondaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    .line 709
    return-object p0
.end method
