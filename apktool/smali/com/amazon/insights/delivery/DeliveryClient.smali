.class public interface abstract Lcom/amazon/insights/delivery/DeliveryClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/event/EventObserver;


# virtual methods
.method public abstract attemptDelivery()V
.end method

.method public abstract batchedEvents()[Ljava/lang/String;
.end method

.method public abstract enqueueEventForDelivery(Lcom/amazon/insights/event/InternalEvent;)V
.end method
