.class public Lcom/amazon/insights/impl/DefaultInsightsCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/InsightsCredentials;


# instance fields
.field final applicationKey:Ljava/lang/String;

.field final privateKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->applicationKey:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->privateKey:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    instance-of v2, p1, Lcom/amazon/insights/InsightsCredentials;

    if-eqz v2, :cond_0

    .line 45
    check-cast p1, Lcom/amazon/insights/InsightsCredentials;

    .line 47
    invoke-virtual {p0}, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->getPrivateKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/insights/InsightsCredentials;->getPrivateKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getApplicationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->applicationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->privateKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/insights/impl/DefaultInsightsCredentials;->getPrivateKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
