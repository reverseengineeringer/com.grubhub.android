.class final Lcom/paypal/android/sdk/bg;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/bf;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bf;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bf;

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->a(Lcom/paypal/android/sdk/bf;)I

    invoke-static {}, Lcom/paypal/android/sdk/bf;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "****** LogRiskMetadataTask #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bf;

    invoke-static {v2}, Lcom/paypal/android/sdk/bf;->b(Lcom/paypal/android/sdk/bf;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bf;

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->c(Lcom/paypal/android/sdk/bf;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/bf;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No host activity in the last "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bf;

    invoke-static {v2}, Lcom/paypal/android/sdk/bf;->d(Lcom/paypal/android/sdk/bf;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds. Stopping update interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bf;

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->e(Lcom/paypal/android/sdk/bf;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bf;

    invoke-static {v0}, Lcom/paypal/android/sdk/bf;->f(Lcom/paypal/android/sdk/bf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/bf;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in logRiskMetadataTask: "

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
