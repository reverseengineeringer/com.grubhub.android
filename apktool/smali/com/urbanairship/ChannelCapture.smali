.class Lcom/urbanairship/ChannelCapture;
.super Lcom/urbanairship/BaseManager;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field static final ACTION_CHANNEL_CAPTURE:Ljava/lang/String; = "com.urbanairship.ACTION_CHANNEL_CAPTURE"

.field private static final CHANNEL_PLACEHOLDER:Ljava/lang/String; = "CHANNEL"

.field static final EXTRA_ACTIONS:Ljava/lang/String; = "com.urbanairship.EXTRA_ACTIONS"

.field static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.urbanairship.EXTRA_NOTIFICATION_ID"

.field private static final GO_URL:Ljava/lang/String; = "https://go.urbanairship.com/"

.field private static final NOTIFICATION_ID:I = 0xbb8


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private clipboard:Lcom/urbanairship/ChannelCapture$Clipboard;

.field private final configOptions:Lcom/urbanairship/AirshipConfigOptions;

.field private final context:Landroid/content/Context;

.field executor:Ljava/util/concurrent/Executor;

.field private final notificationManager:Landroid/support/v4/app/cj;

.field private final pushManager:Lcom/urbanairship/push/PushManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/v4/app/cj;->a(Landroid/content/Context;)Landroid/support/v4/app/cj;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/ChannelCapture;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;Landroid/support/v4/app/cj;)V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;Landroid/support/v4/app/cj;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 94
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture;->executor:Ljava/util/concurrent/Executor;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 112
    iput-object p3, p0, Lcom/urbanairship/ChannelCapture;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 113
    iput-object p4, p0, Lcom/urbanairship/ChannelCapture;->notificationManager:Landroid/support/v4/app/cj;

    .line 115
    new-instance v0, Lcom/urbanairship/ChannelCapture$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/ChannelCapture$1;-><init>(Lcom/urbanairship/ChannelCapture;)V

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/ChannelCapture;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/urbanairship/ChannelCapture;->checkClipboard()V

    return-void
.end method

.method static synthetic access$102(Lcom/urbanairship/ChannelCapture;Lcom/urbanairship/ChannelCapture$Clipboard;)Lcom/urbanairship/ChannelCapture$Clipboard;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/urbanairship/ChannelCapture;->clipboard:Lcom/urbanairship/ChannelCapture$Clipboard;

    return-object p1
.end method

.method static synthetic access$200(Lcom/urbanairship/ChannelCapture;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/ChannelCapture;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 198
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    const-string v2, "ClipBoardMagic - Unsupported encoding."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 202
    :catch_1
    move-exception v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipBoardMagic - Failed to decode string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkClipboard()V
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->clipboard:Lcom/urbanairship/ChannelCapture$Clipboard;

    invoke-interface {v0}, Lcom/urbanairship/ChannelCapture$Clipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/urbanairship/ChannelCapture;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-direct {p0}, Lcom/urbanairship/ChannelCapture;->generateToken()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 175
    const-string v0, "https://go.urbanairship.com/"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CHANNEL"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/ChannelCapture;->clipboard:Lcom/urbanairship/ChannelCapture$Clipboard;

    invoke-interface {v2}, Lcom/urbanairship/ChannelCapture$Clipboard;->clear()V

    .line 181
    invoke-direct {p0, v1, v0}, Lcom/urbanairship/ChannelCapture;->displayNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createCopyChannelPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/16 v4, 0xbb8

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    const-string v1, "text"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "label"

    const-string v2, "Urban Airship Channel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 277
    const-string v2, "clipboard_action"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const-class v3, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.urbanairship.EXTRA_ACTIONS"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createOpenUrlPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/16 v4, 0xbb8

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    const-string v1, "open_external_url_action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const-class v3, Lcom/urbanairship/CoreActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.ACTION_CHANNEL_CAPTURE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.urbanairship.EXTRA_NOTIFICATION_ID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.urbanairship.EXTRA_ACTIONS"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-direct {p0, p1}, Lcom/urbanairship/ChannelCapture;->createCopyChannelPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 216
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v3, Landroid/support/v4/app/bf;

    iget-object v4, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/bf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/app/bf;->a(Z)Landroid/support/v4/app/bf;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/bf;->b(Z)Landroid/support/v4/app/bf;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/bf;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/bf;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v1

    sget v3, Lcom/urbanairship/R$drawable;->ic_urbanairship_notification:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bf;->a(I)Landroid/support/v4/app/bf;

    move-result-object v1

    iget-object v3, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/urbanairship/R$color;->urban_airship_blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bf;->d(I)Landroid/support/v4/app/bf;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bf;->b(I)Landroid/support/v4/app/bf;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bf;->c(I)Landroid/support/v4/app/bf;

    move-result-object v1

    iget-object v3, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v4, Lcom/urbanairship/R$string;->ua_channel_notification_ticker:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bf;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/bf;

    move-result-object v3

    if-nez v0, :cond_2

    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v4/app/bf;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/bf;

    move-result-object v1

    new-instance v3, Landroid/support/v4/app/ba;

    sget v4, Lcom/urbanairship/R$drawable;->ic_notification_button_copy:I

    iget-object v5, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v6, Lcom/urbanairship/R$string;->ua_notification_button_copy:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/support/v4/app/ba;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v3}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/ba;)Landroid/support/v4/app/bf;

    move-result-object v1

    .line 234
    if-eqz v0, :cond_0

    .line 235
    new-instance v2, Landroid/support/v4/app/ba;

    sget v3, Lcom/urbanairship/R$drawable;->ic_notification_button_open_browser:I

    iget-object v4, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    sget v5, Lcom/urbanairship/R$string;->ua_notification_button_save:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Landroid/support/v4/app/ba;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/ba;)Landroid/support/v4/app/bf;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->notificationManager:Landroid/support/v4/app/cj;

    const/16 v2, 0xbb8

    invoke-virtual {v1}, Landroid/support/v4/app/bf;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/cj;->a(ILandroid/app/Notification;)V

    .line 242
    return-void

    .line 216
    :cond_1
    invoke-direct {p0, p2}, Lcom/urbanairship/ChannelCapture;->createOpenUrlPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v1, v0

    .line 219
    goto :goto_1
.end method

.method private generateToken()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 252
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 256
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 257
    aget-byte v5, v2, v0

    array-length v6, v3

    rem-int v6, v0, v6

    aget-byte v6, v3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    .line 258
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected init()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->channelCaptureEnabled:Z

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/ChannelCapture$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/ChannelCapture$2;-><init>(Lcom/urbanairship/ChannelCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected tearDown()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/ChannelCapture;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 153
    return-void
.end method
