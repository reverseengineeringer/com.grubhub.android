.class public Lcom/taplytics/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/taplytics/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taplytics/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/taplytics/c;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    iput-object v0, p0, Lcom/taplytics/n;->a:Lcom/taplytics/c;

    .line 41
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    iput-object v0, p0, Lcom/taplytics/n;->b:Lcom/taplytics/c;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taplytics/n;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/taplytics/n;Lcom/taplytics/c;)Lcom/taplytics/c;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/taplytics/n;->a:Lcom/taplytics/c;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/taplytics/n;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 53
    new-instance v1, Lcom/taplytics/n;

    invoke-direct {v1}, Lcom/taplytics/n;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 55
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/taplytics/fy;->a(Z)V

    move-object v0, v1

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/taplytics/n;)V
    .locals 2

    .prologue
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 316
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 319
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 320
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/taplytics/n;)Lcom/taplytics/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taplytics/n;->a:Lcom/taplytics/c;

    return-object v0
.end method

.method static synthetic b(Lcom/taplytics/n;Lcom/taplytics/c;)Lcom/taplytics/c;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/taplytics/n;->b:Lcom/taplytics/c;

    return-object p1
.end method

.method static synthetic c(Lcom/taplytics/n;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taplytics/n;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/taplytics/n;)Lcom/taplytics/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taplytics/n;->b:Lcom/taplytics/c;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/o;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/o;-><init>(Lcom/taplytics/n;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/r;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/r;-><init>(Lcom/taplytics/n;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/s;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/s;-><init>(Lcom/taplytics/n;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/y;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/y;-><init>(Lcom/taplytics/n;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/ak;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/ak;-><init>(Lcom/taplytics/n;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    new-instance v1, Lcom/taplytics/al;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/al;-><init>(Lcom/taplytics/n;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method
