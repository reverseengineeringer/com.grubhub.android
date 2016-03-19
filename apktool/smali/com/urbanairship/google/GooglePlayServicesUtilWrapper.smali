.class Lcom/urbanairship/google/GooglePlayServicesUtilWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isUserRecoverableError(I)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/android/gms/common/e;->b(I)Z

    move-result v0

    return v0
.end method
