.class final Lcom/paypal/android/sdk/ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/paypal/android/sdk/bd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/paypal/android/sdk/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/ci;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/paypal/android/sdk/ci;->b:Lcom/paypal/android/sdk/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/ci;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/a/a;->b(Landroid/content/Context;)Lcom/google/android/gms/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/ci;->b:Lcom/paypal/android/sdk/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/paypal/android/sdk/bd;->W:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/ch;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
