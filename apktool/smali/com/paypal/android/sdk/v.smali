.class public final Lcom/paypal/android/sdk/v;
.super Lcom/paypal/android/sdk/x;


# static fields
.field private static final a:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/w;

    invoke-direct {v0}, Lcom/paypal/android/sdk/w;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/v;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/x;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/v;->a:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 2

    const-string v0, "com.paypal.android.lib.authenticator.activity.v1.TouchActivity"

    const-string v1, "com.paypal.android.lib.authenticator.activity.v1.TouchActivity"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/v;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Z)Z
    .locals 2

    const-string v0, "com.paypal.android.lib.authenticator.activity.v1.TouchActivity"

    const-string v1, "com.paypal.android.lib.authenticator.activity.v1.TouchActivity"

    invoke-virtual {p0, p1, v0, v1}, Lcom/paypal/android/sdk/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/paypal/android/sdk/v;->b(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
