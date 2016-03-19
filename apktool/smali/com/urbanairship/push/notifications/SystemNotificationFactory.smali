.class public Lcom/urbanairship/push/notifications/SystemNotificationFactory;
.super Lcom/urbanairship/push/notifications/DefaultNotificationFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/push/notifications/SystemNotificationFactory;->createNotificationBuilder(Lcom/urbanairship/push/PushMessage;ILandroid/support/v4/app/bs;)Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/bf;->b()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method
