.class Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Lcom/grubhub/AppBaseLibrary/android/GHSApplication;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;Lcom/grubhub/AppBaseLibrary/android/GHSApplication;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Z)V

    .line 54
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushManager;->setUserNotificationsEnabled(Z)V

    .line 56
    new-instance v1, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-direct {v1, v2}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;-><init>(Landroid/content/Context;)V

    .line 58
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 59
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    const v2, 0x7f0d004f

    invoke-static {v0, v2}, Landroid/support/v4/content/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->setColor(I)V

    .line 64
    const v0, 0x7f020186

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->setSmallIconId(I)V

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->setNotificationFactory(Lcom/urbanairship/push/notifications/NotificationFactory;)V

    .line 71
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;->b:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->c()V

    .line 78
    :cond_1
    return-void

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
