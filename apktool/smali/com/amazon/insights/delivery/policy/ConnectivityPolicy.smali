.class public Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/delivery/policy/DeliveryPolicy;


# static fields
.field private static final ALLOW_WAN_DEFAULT:Z = true

.field private static final ALLOW_WAN_KEY:Ljava/lang/String; = "allowWANEventDelivery"


# instance fields
.field private final connectivity:Lcom/amazon/insights/core/system/Connectivity;

.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private final isWanAllowed:Z


# direct methods
.method public constructor <init>(Lcom/amazon/insights/core/InsightsContext;Z)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 21
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getConnectivity()Lcom/amazon/insights/core/system/Connectivity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    .line 22
    iput-boolean p2, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->isWanAllowed:Z

    .line 23
    return-void
.end method


# virtual methods
.method public handleDeliveryAttempt(Z)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public isAllowed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    .line 30
    iget-object v0, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v0

    const-string v3, "allowWANEventDelivery"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazon/insights/core/configuration/Configuration;->optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->isWanAllowed:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 32
    :goto_0
    iget-object v3, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v3}, Lcom/amazon/insights/core/system/Connectivity;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    iget-object v3, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v3}, Lcom/amazon/insights/core/system/Connectivity;->hasWifi()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v3}, Lcom/amazon/insights/core/system/Connectivity;->hasWired()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/amazon/insights/delivery/policy/ConnectivityPolicy;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v3}, Lcom/amazon/insights/core/system/Connectivity;->hasWAN()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 35
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 30
    goto :goto_0
.end method
