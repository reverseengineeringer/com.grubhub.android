.class final Lcom/flurry/sdk/jt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jt;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/jt;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flurry/sdk/jt$a;->a:Lcom/flurry/sdk/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/jt;Lcom/flurry/sdk/jt$1;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/sdk/jt$a;-><init>(Lcom/flurry/sdk/jt;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/jt$a;->a:Lcom/flurry/sdk/jt;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/jt;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/jt$a;->a:Lcom/flurry/sdk/jt;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/jt;->b(Lcom/flurry/sdk/jt;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method
