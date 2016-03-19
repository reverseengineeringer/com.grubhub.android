.class public Lcom/urbanairship/richpush/RichPushUpdateService;
.super Lcom/urbanairship/BaseIntentService;
.source "SourceFile"


# static fields
.field public static final ACTION_RICH_PUSH_MESSAGES_UPDATE:Ljava/lang/String; = "com.urbanairship.richpush.MESSAGES_UPDATE"

.field public static final ACTION_RICH_PUSH_USER_UPDATE:Ljava/lang/String; = "com.urbanairship.richpush.USER_UPDATE"

.field public static final EXTRA_FORCEFULLY:Ljava/lang/String; = "com.urbanairship.richpush.EXTRA_FORCEFULLY"

.field public static final EXTRA_RICH_PUSH_RESULT_RECEIVER:Ljava/lang/String; = "com.urbanairship.richpush.RESULT_RECEIVER"

.field static final LAST_MESSAGE_REFRESH_TIME:Ljava/lang/String; = "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME"

.field public static final STATUS_RICH_PUSH_UPDATE_ERROR:I = 0x1

.field public static final STATUS_RICH_PUSH_UPDATE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "RichPushUpdateService"

    invoke-direct {p0, v0}, Lcom/urbanairship/BaseIntentService;-><init>(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static varargs getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v1, "Invalid userURL"

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static respond(Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 108
    const-string v0, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    if-eqz p1, :cond_1

    .line 111
    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v1, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected getServiceDelegate(Ljava/lang/String;Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/BaseIntentService$Delegate;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RichPushUpdateService - Service delegate for intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 91
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 91
    :sswitch_0
    const-string v1, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :pswitch_0
    new-instance v0, Lcom/urbanairship/richpush/UserServiceDelegate;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/richpush/UserServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    goto :goto_1

    .line 96
    :pswitch_1
    new-instance v0, Lcom/urbanairship/richpush/InboxServiceDelegate;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/urbanairship/richpush/InboxServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    goto :goto_1

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        -0x494379ae -> :sswitch_0
        0x65472331 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
