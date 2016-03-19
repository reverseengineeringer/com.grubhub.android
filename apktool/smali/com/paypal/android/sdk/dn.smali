.class public abstract Lcom/paypal/android/sdk/dn;
.super Lcom/paypal/android/sdk/dk;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/paypal/android/sdk/ea;

.field protected final b:I

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/dn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/dn;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/paypal/android/sdk/ea;)V
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/dk;-><init>()V

    iput p1, p0, Lcom/paypal/android/sdk/dn;->b:I

    iput-object p2, p0, Lcom/paypal/android/sdk/dn;->a:Lcom/paypal/android/sdk/ea;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/paypal/android/sdk/dn;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/dn;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()I
.end method

.method public final b(Lcom/paypal/android/sdk/dz;)Z
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dn;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/paypal/android/sdk/do;

    invoke-direct {v1, p0, p1}, Lcom/paypal/android/sdk/do;-><init>(Lcom/paypal/android/sdk/dn;Lcom/paypal/android/sdk/dz;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract c(Lcom/paypal/android/sdk/dz;)Z
.end method
