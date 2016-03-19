.class Lcom/urbanairship/push/notifications/NotificationFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/notifications/NotificationFactory;->createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/bh;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/notifications/NotificationFactory;

.field final synthetic val$androidActions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/notifications/NotificationFactory;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationFactory$1;->this$0:Lcom/urbanairship/push/notifications/NotificationFactory;

    iput-object p2, p0, Lcom/urbanairship/push/notifications/NotificationFactory$1;->val$androidActions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extend(Landroid/support/v4/app/bf;)Landroid/support/v4/app/bf;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationFactory$1;->val$androidActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ba;

    .line 149
    invoke-virtual {p1, v0}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/ba;)Landroid/support/v4/app/bf;

    goto :goto_0

    .line 152
    :cond_0
    return-object p1
.end method
