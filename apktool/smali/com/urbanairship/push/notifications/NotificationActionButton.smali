.class public Lcom/urbanairship/push/notifications/NotificationActionButton;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final description:Ljava/lang/String;

.field private final extras:Landroid/os/Bundle;

.field private final iconId:I

.field private final id:Ljava/lang/String;

.field private final isForegroundAction:Z

.field private final labelId:I

.field private final remoteInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/LocalizableRemoteInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/LocalizableRemoteInput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->id:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    .line 62
    iput p2, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->iconId:I

    .line 63
    iput-object p5, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->extras:Landroid/os/Bundle;

    .line 64
    iput-object p4, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    .line 65
    iput-boolean p6, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    .line 66
    iput-object p7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;Lcom/urbanairship/push/notifications/NotificationActionButton$1;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lcom/urbanairship/push/notifications/NotificationActionButton;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method createAndroidNotificationAction(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/ba;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 154
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    iget-object v4, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    iget-boolean v4, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 163
    iget-boolean v2, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    if-eqz v2, :cond_2

    .line 164
    const-class v2, Lcom/urbanairship/CoreActivity;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 171
    :goto_2
    new-instance v2, Landroid/support/v4/app/bb;

    iget v3, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->iconId:I

    invoke-direct {v2, v3, v0, v1}, Landroid/support/v4/app/bb;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/bb;->a(Landroid/os/Bundle;)Landroid/support/v4/app/bb;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;

    .line 176
    invoke-virtual {v0, p1}, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->createRemoteInput(Landroid/content/Context;)Landroid/support/v4/app/cv;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bb;->a(Landroid/support/v4/app/cv;)Landroid/support/v4/app/bb;

    goto :goto_3

    .line 149
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    goto :goto_1

    .line 167
    :cond_2
    const-class v2, Lcom/urbanairship/CoreReceiver;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/bb;->a()Landroid/support/v4/app/ba;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->iconId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    return v0
.end method

.method public getRemoteInputs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/LocalizableRemoteInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public isForegroundAction()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    return v0
.end method
