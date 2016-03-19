.class public Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buttonId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private extenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/bc;",
            ">;"
        }
    .end annotation
.end field

.field private iconId:I

.field private isForegroundAction:Z

.field private labelId:I

.field private remoteInputs:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->labelId:I

    .line 189
    iput v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->iconId:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->isForegroundAction:Z

    .line 201
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->buttonId:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public addRemoteInput(Lcom/urbanairship/push/notifications/LocalizableRemoteInput;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-object p0
.end method

.method public build()Lcom/urbanairship/push/notifications/NotificationActionButton;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 291
    new-instance v1, Landroid/support/v4/app/bb;

    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->iconId:I

    invoke-direct {v1, v0, v8, v8}, Landroid/support/v4/app/bb;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 292
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bc;

    .line 294
    invoke-virtual {v1, v0}, Landroid/support/v4/app/bb;->a(Landroid/support/v4/app/bc;)Landroid/support/v4/app/bb;

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/bb;->a()Landroid/support/v4/app/ba;

    move-result-object v5

    .line 300
    new-instance v0, Lcom/urbanairship/push/notifications/NotificationActionButton;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->buttonId:Ljava/lang/String;

    iget v2, v5, Landroid/support/v4/app/ba;->a:I

    iget v3, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->labelId:I

    iget-object v4, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->description:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/support/v4/app/ba;->d()Landroid/os/Bundle;

    move-result-object v5

    iget-boolean v6, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->isForegroundAction:Z

    iget-object v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->remoteInputs:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Lcom/urbanairship/push/notifications/NotificationActionButton;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;Lcom/urbanairship/push/notifications/NotificationActionButton$1;)V

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/bc;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->extenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->description:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setIcon(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->iconId:I

    .line 239
    return-object p0
.end method

.method public setLabel(I)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->labelId:I

    .line 213
    return-object p0
.end method

.method public setPerformsInForeground(Z)Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;->isForegroundAction:Z

    .line 251
    return-object p0
.end method
