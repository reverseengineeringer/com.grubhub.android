.class Lio/card/payment/DetectionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottomEdge:Z

.field public complete:Z

.field public detectedCard:Lio/card/payment/CreditCard;

.field public expiry_month:I

.field public expiry_year:I

.field public focusScore:F

.field public leftEdge:Z

.field public prediction:[I

.field public rightEdge:Z

.field public topEdge:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lio/card/payment/DetectionInfo;->complete:Z

    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    .line 28
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    aput v2, v0, v1

    .line 29
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 31
    new-instance v0, Lio/card/payment/CreditCard;

    invoke-direct {v0}, Lio/card/payment/CreditCard;-><init>()V

    iput-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    .line 32
    return-void
.end method


# virtual methods
.method creditCard()Lio/card/payment/CreditCard;
    .locals 4

    .prologue
    .line 50
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 51
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v2, v2, v0

    if-ltz v2, :cond_0

    iget-object v2, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v2, v2, v0

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iput-object v1, v0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iget v1, p0, Lio/card/payment/DetectionInfo;->expiry_month:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 58
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iget v1, p0, Lio/card/payment/DetectionInfo;->expiry_year:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 60
    iget-object v0, p0, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    return-object v0
.end method

.method detected()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->topEdge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method numVisibleEdges()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->topEdge:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    add-int/2addr v3, v0

    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    iget-boolean v3, p0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method predicted()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lio/card/payment/DetectionInfo;->complete:Z

    return v0
.end method

.method sameEdgesAs(Lio/card/payment/DetectionInfo;)Z
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p1, Lio/card/payment/DetectionInfo;->topEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->topEdge:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->bottomEdge:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lio/card/payment/DetectionInfo;->leftEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->leftEdge:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lio/card/payment/DetectionInfo;->rightEdge:Z

    iget-boolean v1, p0, Lio/card/payment/DetectionInfo;->rightEdge:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
