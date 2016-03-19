.class public Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final actionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/NotificationActionButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->actionButtons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNotificationActionButton(Lcom/urbanairship/push/notifications/NotificationActionButton;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->actionButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public build()Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$Builder;->actionButtons:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;-><init>(Ljava/util/List;Lcom/urbanairship/push/notifications/NotificationActionButtonGroup$1;)V

    return-object v0
.end method
