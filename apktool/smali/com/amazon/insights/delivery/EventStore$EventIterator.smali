.class public interface abstract Lcom/amazon/insights/delivery/EventStore$EventIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract peek()Ljava/lang/String;
.end method

.method public abstract removeReadEvents()V
.end method
