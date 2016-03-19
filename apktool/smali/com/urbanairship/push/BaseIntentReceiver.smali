.class public abstract Lcom/urbanairship/push/BaseIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final RESULT_ACTIVITY_LAUNCHED:I = 0x1

.field public static final RESULT_ACTIVITY_NOT_LAUNCHED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleDismissedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 182
    const-string v0, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 184
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 185
    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/urbanairship/push/BaseIntentReceiver;->onNotificationDismissed(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V

    goto :goto_0
.end method

.method private handlePushOpened(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 133
    const-string v0, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 135
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/push/PushMessage;

    .line 136
    if-nez v2, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v0, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    const-string v0, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/push/BaseIntentReceiver;->onNotificationActionOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;Z)Z

    move-result v0

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/urbanairship/push/BaseIntentReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/BaseIntentReceiver;->getResultCode()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 152
    if-eqz v0, :cond_3

    move v0, v6

    :goto_2
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->setResultCode(I)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Lcom/urbanairship/push/BaseIntentReceiver;->onNotificationOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v7

    .line 152
    goto :goto_2
.end method

.method private handlePushReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 112
    const-string v0, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/PushMessage;

    .line 113
    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseIntentReceiver - Intent is missing push message for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    invoke-virtual {p0, p1, v0, v1}, Lcom/urbanairship/push/BaseIntentReceiver;->onPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->onBackgroundPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;)V

    goto :goto_0
.end method

.method private handleRegistrationIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 163
    const-string v0, "com.urbanairship.push.EXTRA_ERROR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/BaseIntentReceiver;->onChannelRegistrationFailed(Landroid/content/Context;)V

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "com.urbanairship.push.EXTRA_CHANNEL_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-nez v0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseIntentReceiver - Intent is missing channel ID for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/BaseIntentReceiver;->onChannelRegistrationSucceeded(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract onBackgroundPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;)V
.end method

.method protected abstract onChannelRegistrationFailed(Landroid/content/Context;)V
.end method

.method protected abstract onChannelRegistrationSucceeded(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onNotificationActionOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;Z)Z
.end method

.method protected onNotificationDismissed(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method protected abstract onNotificationOpened(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)Z
.end method

.method protected abstract onPushReceived(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;I)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 80
    invoke-static {p1}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 82
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - Received intent with action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 89
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handlePushReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :sswitch_0
    const-string v2, "com.urbanairship.push.RECEIVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.push.OPENED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "com.urbanairship.push.CHANNEL_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "com.urbanairship.push.DISMISSED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 94
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handlePushOpened(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handleRegistrationIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/BaseIntentReceiver;->handleDismissedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x6a14bbb8 -> :sswitch_0
        -0x640c1308 -> :sswitch_2
        -0x24da6b70 -> :sswitch_1
        0x74d3702 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
