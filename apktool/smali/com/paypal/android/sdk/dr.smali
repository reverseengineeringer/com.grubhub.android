.class final Lcom/paypal/android/sdk/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/dp;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dp;

    invoke-static {v0}, Lcom/paypal/android/sdk/dp;->f(Lcom/paypal/android/sdk/dp;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
