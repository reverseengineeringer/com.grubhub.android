.class Lorg/keyczar/StreamQueue;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/keyczar/interfaces/Stream;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44343a6030309bb8L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-void
.end method
