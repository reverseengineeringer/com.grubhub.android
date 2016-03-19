.class Lcom/amazon/insights/impl/DisabledAmazonInsights$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/EventClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights;->getEventClient()Lcom/amazon/insights/EventClient;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2;->this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public addGlobalMetric(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public addGlobalMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;
    .locals 3

    .prologue
    .line 51
    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 53
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    new-instance v2, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights$2;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method public recordEvent(Lcom/amazon/insights/Event;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public removeGlobalAttribute(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public removeGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public removeGlobalMetric(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public removeGlobalMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public submitEvents()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
