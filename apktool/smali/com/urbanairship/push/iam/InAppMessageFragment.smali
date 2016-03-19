.class public Lcom/urbanairship/push/iam/InAppMessageFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x3a98L

.field private static final DISMISSED:Ljava/lang/String; = "dismissed"

.field private static final DISMISS_ANIMATION:Ljava/lang/String; = "dismiss_animation"

.field private static final DISMISS_ON_RECREATE:Ljava/lang/String; = "dismiss_on_recreate"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static isCardViewAvailable:Ljava/lang/Boolean;


# instance fields
.field private dismissOnRecreate:Z

.field private isDismissed:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private message:Lcom/urbanairship/push/iam/InAppMessage;

.field private timer:Lcom/urbanairship/push/iam/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessageFragment;Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->runActions(Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V

    return-void
.end method

.method private static checkCardViewDependencyAvailable()Z
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 387
    :try_start_0
    const-string v0, "android.support.v7.widget.CardView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 388
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static createArgs(Lcom/urbanairship/push/iam/InAppMessage;I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v1, "dismiss_animation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    return-object v0
.end method

.method private runActions(Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;",
            "Lcom/urbanairship/actions/Situation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    if-nez p1, :cond_1

    .line 414
    :cond_0
    return-void

    .line 408
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/actions/ActionRunRequest;->createRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/ActionRunRequest;->setValue(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/actions/ActionRunRequest;->setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRunRequest;->run()V

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;)V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismiss(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/Timer;->stop()V

    .line 320
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 325
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 326
    invoke-interface {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;->onFinish(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    goto :goto_1

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    .line 332
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "dismiss_animation"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getDismissAnimation()I
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dismiss_animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method public isDismissed()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setRetainInstance(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/InAppMessage;

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    .line 152
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "dismissed"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    .line 159
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/16 v4, 0x3a98

    .line 160
    :goto_2
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;

    invoke-direct {v0, p0, v4, v5}, Lcom/urbanairship/push/iam/InAppMessageFragment$1;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;J)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    .line 173
    if-eqz p1, :cond_0

    const-string v0, "dismiss_on_recreate"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismissOnRecreate:Z

    if-eq v0, v2, :cond_0

    .line 174
    const-string v0, "InAppMessageFragment - Dismissing on recreate."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 157
    goto :goto_1

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->getDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 213
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->getAlert()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0, v5}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    move-object v0, v3

    .line 309
    :goto_0
    return-object v0

    .line 218
    :cond_1
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageFragment;->checkCardViewDependencyAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/urbanairship/R$layout;->ua_fragment_iam_card:I

    .line 220
    :goto_1
    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    .line 223
    invoke-virtual {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getPosition()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/16 v2, 0x30

    :goto_2
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v1, Lcom/urbanairship/push/iam/InAppMessageFragment$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$2;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setListener(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;)V

    .line 250
    sget v1, Lcom/urbanairship/R$id;->in_app_message:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 252
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getClickActionValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 253
    new-instance v2, Lcom/urbanairship/push/iam/InAppMessageFragment$3;

    invoke-direct {v2, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$3;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :goto_3
    check-cast v1, Lcom/urbanairship/push/iam/view/Banner;

    .line 270
    new-instance v2, Lcom/urbanairship/push/iam/InAppMessageFragment$4;

    invoke-direct {v2, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$4;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/Banner;->setOnDismissClickListener(Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;)V

    .line 280
    new-instance v2, Lcom/urbanairship/push/iam/InAppMessageFragment$5;

    invoke-direct {v2, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$5;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/Banner;->setOnActionClickListener(Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;)V

    .line 296
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getPrimaryColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getPrimaryColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/Banner;->setPrimaryColor(I)V

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getSecondaryColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 301
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getSecondaryColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/Banner;->setSecondaryColor(I)V

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getAlert()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/Banner;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v3}, Lcom/urbanairship/push/iam/InAppMessage;->getButtonGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushManager;->getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    .line 307
    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/Banner;->setNotificationActionButtonGroup(Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    sget v0, Lcom/urbanairship/R$layout;->ua_fragment_iam:I

    goto/16 :goto_1

    .line 224
    :cond_5
    const/16 v2, 0x50

    goto/16 :goto_2

    .line 265
    :cond_6
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 266
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 201
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/Timer;->stop()V

    .line 203
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 204
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 205
    invoke-interface {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;->onPause(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/Timer;->start()V

    .line 191
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 192
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 193
    invoke-interface {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;->onResume(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "dismissed"

    iget-boolean v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v0, "dismiss_on_recreate"

    iget-boolean v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismissOnRecreate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-void
.end method

.method public final removeListener(Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;)V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDismissOnRecreate(Z)V
    .locals 0

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismissOnRecreate:Z

    .line 378
    return-void
.end method
