.class public final Lcom/paypal/android/sdk/eh;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Android"

    sput-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/lang/String;

    const-string v0, "mobile"

    sput-object v0, Lcom/paypal/android/sdk/eh;->b:Ljava/lang/String;

    const-string v0, "mplandroid"

    sput-object v0, Lcom/paypal/android/sdk/eh;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/paypal/android/sdk/eh;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/paypal/android/sdk/eh;->e:Ljava/lang/String;

    return-void
.end method
