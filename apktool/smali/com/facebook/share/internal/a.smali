.class public Lcom/facebook/share/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/internal/s;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/share/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/facebook/internal/au;

.field private static e:Lcom/facebook/internal/au;

.field private static f:Landroid/os/Handler;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static volatile i:I

.field private static j:Lcom/facebook/AccessTokenTracker;


# instance fields
.field private k:Ljava/lang/String;

.field private l:Lcom/facebook/share/widget/d;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/os/Bundle;

.field private x:Lcom/facebook/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    const-class v0, Lcom/facebook/share/internal/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    new-instance v0, Lcom/facebook/internal/au;

    invoke-direct {v0, v1}, Lcom/facebook/internal/au;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/a;->d:Lcom/facebook/internal/au;

    .line 122
    new-instance v0, Lcom/facebook/internal/au;

    invoke-direct {v0, v1}, Lcom/facebook/internal/au;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/a;->e:Lcom/facebook/internal/au;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/d;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    .line 604
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 62
    sput p0, Lcom/facebook/share/internal/a;->i:I

    return p0
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    .locals 5

    .prologue
    .line 389
    invoke-static {p0}, Lcom/facebook/share/internal/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    sget-object v0, Lcom/facebook/share/internal/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/a;

    .line 392
    if-eqz v0, :cond_0

    .line 394
    sget-object v2, Lcom/facebook/share/internal/a;->d:Lcom/facebook/internal/au;

    new-instance v3, Lcom/facebook/share/internal/k;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/facebook/share/internal/k;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/au;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/av;

    .line 397
    :cond_0
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->e(Ljava/lang/String;)V

    .line 941
    iput-object p1, p0, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;

    .line 944
    invoke-static {p0}, Lcom/facebook/share/internal/a;->l(Lcom/facebook/share/internal/a;)V

    .line 945
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->n()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/a;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Lcom/facebook/share/internal/a;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    invoke-static {p1, v0}, Lcom/facebook/share/internal/aa;->a(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d;)Lcom/facebook/share/widget/d;

    move-result-object v0

    .line 232
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/facebook/h;

    const-string v2, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    .line 239
    invoke-virtual {v5}, Lcom/facebook/share/widget/d;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 240
    invoke-virtual {p1}, Lcom/facebook/share/widget/d;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/facebook/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    invoke-static {p2, v1, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/d;Lcom/facebook/share/internal/a;Lcom/facebook/h;)V

    .line 247
    return-void

    .line 243
    :cond_0
    iput-object v0, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    move-object v0, v1

    move-object v1, p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/j;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Lcom/facebook/j;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/facebook/share/internal/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/facebook/share/internal/d;Lcom/facebook/share/internal/a;Lcom/facebook/h;)V
    .locals 2

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/share/internal/a$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/a$6;-><init>(Lcom/facebook/share/internal/d;Lcom/facebook/share/internal/a;Lcom/facebook/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lcom/facebook/share/internal/n;)V
    .locals 4

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1198
    if-eqz p1, :cond_0

    .line 1199
    invoke-interface {p1}, Lcom/facebook/share/internal/n;->a()V

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    new-instance v0, Lcom/facebook/share/internal/f;

    iget-object v1, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/share/internal/f;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1207
    new-instance v1, Lcom/facebook/share/internal/h;

    iget-object v2, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/share/internal/h;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 1210
    new-instance v2, Lcom/facebook/x;

    invoke-direct {v2}, Lcom/facebook/x;-><init>()V

    .line 1211
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/f;->a(Lcom/facebook/x;)V

    .line 1212
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/h;->a(Lcom/facebook/x;)V

    .line 1214
    new-instance v3, Lcom/facebook/share/internal/a$2;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/share/internal/a$2;-><init>(Lcom/facebook/share/internal/a;Lcom/facebook/share/internal/f;Lcom/facebook/share/internal/h;Lcom/facebook/share/internal/n;)V

    invoke-virtual {v2, v3}, Lcom/facebook/x;->a(Lcom/facebook/y;)V

    .line 1241
    invoke-virtual {v2}, Lcom/facebook/x;->h()Lcom/facebook/w;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1246
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    invoke-virtual {v2}, Lcom/facebook/share/widget/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->l()Lcom/facebook/a/a;

    move-result-object v1

    const-string v2, "fb_like_control_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1251
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/j;)V
    .locals 3

    .prologue
    .line 1254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1255
    if-eqz p2, :cond_0

    .line 1256
    invoke-virtual {p2}, Lcom/facebook/j;->e()Lorg/json/JSONObject;

    move-result-object v1

    .line 1257
    if-eqz v1, :cond_0

    .line 1258
    const-string v2, "error"

    .line 1260
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1264
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/share/internal/a;)V
    .locals 4

    .prologue
    .line 381
    invoke-static {p0}, Lcom/facebook/share/internal/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/facebook/share/internal/a;->d:Lcom/facebook/internal/au;

    new-instance v2, Lcom/facebook/share/internal/k;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/facebook/share/internal/k;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/au;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/av;

    .line 385
    sget-object v1, Lcom/facebook/share/internal/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V
    .locals 2

    .prologue
    .line 210
    sget-boolean v0, Lcom/facebook/share/internal/a;->h:Z

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/facebook/share/internal/a;->j()V

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;)Lcom/facebook/share/internal/a;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 217
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/a;->e:Lcom/facebook/internal/au;

    new-instance v1, Lcom/facebook/share/internal/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/c;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/au;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/av;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/share/internal/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/a;->b(Z)V

    .line 727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Unable to publish the like/unlike action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v1, v0}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 736
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 754
    invoke-static {p2, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-static {p3, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-static {p4, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    invoke-static {p5, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    invoke-static {p6, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 762
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->n:Ljava/lang/String;

    .line 763
    invoke-static {v1, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    .line 766
    invoke-static {v2, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    .line 769
    invoke-static {v3, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    .line 770
    invoke-static {v4, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    .line 773
    invoke-static {v5, v0}, Lcom/facebook/internal/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 775
    :goto_0
    if-nez v0, :cond_2

    .line 789
    :goto_1
    return-void

    .line 773
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 779
    :cond_2
    iput-boolean p1, p0, Lcom/facebook/share/internal/a;->m:Z

    .line 780
    iput-object v1, p0, Lcom/facebook/share/internal/a;->n:Ljava/lang/String;

    .line 781
    iput-object v2, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    .line 782
    iput-object v3, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    .line 783
    iput-object v4, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    .line 784
    iput-object v5, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    .line 786
    invoke-static {p0}, Lcom/facebook/share/internal/a;->l(Lcom/facebook/share/internal/a;)V

    .line 788
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, v0}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/a;->v:Z

    return p1
.end method

.method private a(ZLandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 706
    const/4 v1, 0x0

    .line 707
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    if-eqz p1, :cond_0

    .line 710
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/a;->b(Landroid/os/Bundle;)V

    .line 717
    :goto_0
    return v0

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/a;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 437
    .line 441
    :try_start_0
    invoke-static {p0}, Lcom/facebook/share/internal/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    sget-object v2, Lcom/facebook/share/internal/a;->b:Lcom/facebook/internal/s;

    invoke-virtual {v2, v1}, Lcom/facebook/internal/s;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 443
    if-eqz v2, :cond_0

    .line 444
    :try_start_1
    invoke-static {v2}, Lcom/facebook/internal/al;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    invoke-static {v1}, Lcom/facebook/share/internal/a;->c(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 453
    :cond_0
    if-eqz v2, :cond_1

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    .line 458
    :cond_1
    :goto_0
    return-object v0

    .line 449
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 450
    :goto_1
    :try_start_2
    sget-object v3, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    const-string v4, "Unable to deserialize controller from disk"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    if-eqz v2, :cond_1

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 453
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 449
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 795
    .line 797
    invoke-static {}, Lcom/facebook/share/internal/u;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    const-string v0, "fb_like_control_did_present_dialog"

    .line 813
    :goto_0
    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    .line 815
    invoke-virtual {v0}, Lcom/facebook/share/widget/d;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_1
    new-instance v2, Lcom/facebook/share/internal/t;

    invoke-direct {v2}, Lcom/facebook/share/internal/t;-><init>()V

    iget-object v3, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    .line 818
    invoke-virtual {v2, v3}, Lcom/facebook/share/internal/t;->a(Ljava/lang/String;)Lcom/facebook/share/internal/t;

    move-result-object v2

    .line 819
    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/t;->b(Ljava/lang/String;)Lcom/facebook/share/internal/t;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Lcom/facebook/share/internal/t;->a()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    .line 822
    if-eqz p2, :cond_4

    .line 823
    new-instance v2, Lcom/facebook/share/internal/u;

    invoke-direct {v2, p2}, Lcom/facebook/share/internal/u;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/u;->a(Ljava/lang/Object;)V

    .line 828
    :goto_2
    invoke-direct {p0, p3}, Lcom/facebook/share/internal/a;->a(Landroid/os/Bundle;)V

    .line 830
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->l()Lcom/facebook/a/a;

    move-result-object v0

    const-string v2, "fb_like_control_did_present_dialog"

    invoke-virtual {v0, v2, v1, p3}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 835
    :cond_0
    return-void

    .line 799
    :cond_1
    invoke-static {}, Lcom/facebook/share/internal/u;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    const-string v0, "fb_like_control_did_present_fallback_dialog"

    goto :goto_0

    .line 803
    :cond_2
    const-string v0, "present_dialog"

    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 804
    sget-object v0, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    const-string v2, "Cannot show the Like Dialog on this device."

    invoke-static {v0, v2}, Lcom/facebook/internal/al;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v1, v0}, Lcom/facebook/share/internal/a;->d(Lcom/facebook/share/internal/a;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 815
    :cond_3
    sget-object v0, Lcom/facebook/share/widget/d;->UNKNOWN:Lcom/facebook/share/widget/d;

    .line 816
    invoke-virtual {v0}, Lcom/facebook/share/widget/d;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 825
    :cond_4
    new-instance v2, Lcom/facebook/share/internal/u;

    invoke-direct {v2, p1}, Lcom/facebook/share/internal/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/u;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/a;->v:Z

    .line 979
    new-instance v0, Lcom/facebook/share/internal/a$8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/a$8;-><init>(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/n;)V

    .line 1031
    return-void
.end method

.method private static b(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    if-eqz p0, :cond_1

    .line 584
    if-nez p2, :cond_0

    .line 585
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 588
    :cond_0
    const-string v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p0}, Lcom/facebook/share/internal/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_1
    if-eqz p2, :cond_2

    .line 592
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 594
    :cond_2
    invoke-static {}, Lcom/facebook/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    .line 595
    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 596
    return-void
.end method

.method static synthetic b(Lcom/facebook/share/internal/a;Z)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/a;->a(Z)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/a;->c(Ljava/lang/String;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 421
    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/a;->b:Lcom/facebook/internal/s;

    invoke-virtual {v0, p0}, Lcom/facebook/internal/s;->b(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    :try_start_1
    sget-object v2, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    const-string v3, "Unable to serialize controller to disk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/io/Closeable;)V

    :cond_1
    throw v0
.end method

.method private b(Z)V
    .locals 7

    .prologue
    .line 739
    iget-object v2, p0, Lcom/facebook/share/internal/a;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/share/internal/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 465
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    const-string v0, "com.facebook.share.internal.LikeActionController.version"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 467
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 506
    :goto_0
    return-object v1

    .line 473
    :cond_0
    const-string v0, "object_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    const-string v0, "object_type"

    sget-object v4, Lcom/facebook/share/widget/d;->UNKNOWN:Lcom/facebook/share/widget/d;

    .line 476
    invoke-virtual {v4}, Lcom/facebook/share/widget/d;->getValue()I

    move-result v4

    .line 474
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 478
    new-instance v0, Lcom/facebook/share/internal/a;

    .line 480
    invoke-static {v4}, Lcom/facebook/share/widget/d;->fromInt(I)Lcom/facebook/share/widget/d;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/facebook/share/internal/a;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 484
    const-string v3, "like_count_string_with_like"

    const/4 v4, 0x0

    .line 485
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/a;->n:Ljava/lang/String;

    .line 486
    const-string v3, "like_count_string_without_like"

    const/4 v4, 0x0

    .line 487
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    .line 488
    const-string v3, "social_sentence_with_like"

    const/4 v4, 0x0

    .line 489
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    .line 490
    const-string v3, "social_sentence_without_like"

    const/4 v4, 0x0

    .line 491
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    .line 492
    const-string v3, "is_object_liked"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/share/internal/a;->m:Z

    .line 493
    const-string v3, "unlike_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    .line 495
    const-string v3, "facebook_dialog_analytics_bundle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_1

    .line 499
    invoke-static {v2}, Lcom/facebook/internal/g;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 506
    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    sget-object v2, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    const-string v3, "Unable to deserialize controller from JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 503
    goto :goto_1
.end method

.method static synthetic c(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    return-object p1
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/a;->v:Z

    .line 1037
    new-instance v0, Lcom/facebook/x;

    invoke-direct {v0}, Lcom/facebook/x;-><init>()V

    .line 1038
    new-instance v1, Lcom/facebook/share/internal/m;

    iget-object v2, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/m;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/m;->a(Lcom/facebook/x;)V

    .line 1041
    new-instance v2, Lcom/facebook/share/internal/a$9;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/share/internal/a$9;-><init>(Lcom/facebook/share/internal/a;Lcom/facebook/share/internal/m;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/x;->a(Lcom/facebook/y;)V

    .line 1066
    invoke-virtual {v0}, Lcom/facebook/x;->h()Lcom/facebook/w;

    .line 1067
    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V
    .locals 3

    .prologue
    .line 262
    invoke-static {p0}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;)Lcom/facebook/share/internal/a;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 265
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V

    .line 290
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/a;->b(Ljava/lang/String;)Lcom/facebook/share/internal/a;

    move-result-object v0

    .line 272
    if-nez v0, :cond_1

    .line 273
    new-instance v0, Lcom/facebook/share/internal/a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/a;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/d;)V

    .line 274
    invoke-static {v0}, Lcom/facebook/share/internal/a;->l(Lcom/facebook/share/internal/a;)V

    .line 278
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Lcom/facebook/share/internal/a;)V

    .line 282
    sget-object v1, Lcom/facebook/share/internal/a;->f:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/share/internal/a$4;

    invoke-direct {v2, v0}, Lcom/facebook/share/internal/a$4;-><init>(Lcom/facebook/share/internal/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/d;Lcom/facebook/share/internal/a;Lcom/facebook/h;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/share/internal/a;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/a;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_0
    if-eqz v0, :cond_1

    .line 558
    invoke-static {v0}, Lcom/facebook/internal/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s|%s|com.fb.sdk.like|%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string v5, ""

    .line 564
    invoke-static {v0, v5}, Lcom/facebook/internal/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget v4, Lcom/facebook/share/internal/a;->i:I

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 560
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    iget-boolean v1, p0, Lcom/facebook/share/internal/a;->u:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    .line 1189
    invoke-direct {p0, v0, p1}, Lcom/facebook/share/internal/a;->a(ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/a;->a(Z)V

    .line 1194
    :cond_0
    return-void

    .line 1192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/facebook/share/internal/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    return-void
.end method

.method static synthetic d(Lcom/facebook/share/internal/a;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/a;->t:Z

    return p1
.end method

.method static synthetic e(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 954
    sput-object p0, Lcom/facebook/share/internal/a;->g:Ljava/lang/String;

    .line 955
    invoke-static {}, Lcom/facebook/m;->f()Landroid/content/Context;

    move-result-object v0

    .line 957
    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 958
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PENDING_CONTROLLER_KEY"

    sget-object v2, Lcom/facebook/share/internal/a;->g:Ljava/lang/String;

    .line 959
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 962
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 963
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/facebook/share/internal/a;->i:I

    return v0
.end method

.method static synthetic g(Lcom/facebook/share/internal/a;)Lcom/facebook/a/a;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->l()Lcom/facebook/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic i()Lcom/facebook/internal/s;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/a;->b:Lcom/facebook/internal/s;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/share/internal/a;)Lcom/facebook/share/widget/d;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized j()V
    .locals 4

    .prologue
    .line 293
    const-class v1, Lcom/facebook/share/internal/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/share/internal/a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    monitor-exit v1

    return-void

    .line 297
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/share/internal/a;->f:Landroid/os/Handler;

    .line 299
    invoke-static {}, Lcom/facebook/m;->f()Landroid/content/Context;

    move-result-object v0

    .line 300
    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    const-string v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/share/internal/a;->i:I

    .line 305
    new-instance v0, Lcom/facebook/internal/s;

    sget-object v2, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/v;

    invoke-direct {v3}, Lcom/facebook/internal/v;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/s;-><init>(Ljava/lang/String;Lcom/facebook/internal/v;)V

    sput-object v0, Lcom/facebook/share/internal/a;->b:Lcom/facebook/internal/s;

    .line 307
    invoke-static {}, Lcom/facebook/share/internal/a;->k()V

    .line 309
    sget-object v0, Lcom/facebook/internal/k;->Like:Lcom/facebook/internal/k;

    .line 310
    invoke-virtual {v0}, Lcom/facebook/internal/k;->toRequestCode()I

    move-result v0

    new-instance v2, Lcom/facebook/share/internal/a$5;

    invoke-direct {v2}, Lcom/facebook/share/internal/a$5;-><init>()V

    .line 309
    invoke-static {v0, v2}, Lcom/facebook/internal/i;->a(ILcom/facebook/internal/j;)V

    .line 321
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/share/internal/a;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lcom/facebook/share/internal/a$7;

    invoke-direct {v0}, Lcom/facebook/share/internal/a$7;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/a;->j:Lcom/facebook/AccessTokenTracker;

    .line 376
    return-void
.end method

.method static synthetic k(Lcom/facebook/share/internal/a;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    return v0
.end method

.method private l()Lcom/facebook/a/a;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/facebook/share/internal/a;->x:Lcom/facebook/a/a;

    if-nez v0, :cond_0

    .line 698
    invoke-static {}, Lcom/facebook/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/a;->a(Landroid/content/Context;)Lcom/facebook/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/a;->x:Lcom/facebook/a/a;

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a;->x:Lcom/facebook/a/a;

    return-object v0
.end method

.method private static l(Lcom/facebook/share/internal/a;)V
    .locals 4

    .prologue
    .line 405
    invoke-static {p0}, Lcom/facebook/share/internal/a;->m(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/share/internal/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v0}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/facebook/internal/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    sget-object v2, Lcom/facebook/share/internal/a;->e:Lcom/facebook/internal/au;

    new-instance v3, Lcom/facebook/share/internal/p;

    invoke-direct {v3, v1, v0}, Lcom/facebook/share/internal/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/au;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/av;

    .line 412
    :cond_0
    return-void
.end method

.method private static m(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 512
    :try_start_0
    const-string v1, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    invoke-virtual {v2}, Lcom/facebook/share/widget/d;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 515
    const-string v1, "like_count_string_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v1, "like_count_string_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v1, "is_object_liked"

    iget-boolean v2, p0, Lcom/facebook/share/internal/a;->m:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 528
    const-string v1, "unlike_token"

    iget-object v2, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    iget-object v1, p0, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;

    .line 531
    invoke-static {v1}, Lcom/facebook/internal/g;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_0

    .line 534
    const-string v2, "facebook_dialog_analytics_bundle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    sget-object v1, Lcom/facebook/share/internal/a;->a:Ljava/lang/String;

    const-string v2, "Unable to serialize controller to JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    .prologue
    .line 966
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 969
    iget-boolean v1, p0, Lcom/facebook/share/internal/a;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 1070
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1071
    if-nez v0, :cond_0

    .line 1075
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->o()V

    .line 1126
    :goto_0
    return-void

    .line 1079
    :cond_0
    new-instance v0, Lcom/facebook/share/internal/a$10;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/a$10;-><init>(Lcom/facebook/share/internal/a;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/n;)V

    goto :goto_0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 1129
    new-instance v0, Lcom/facebook/share/internal/y;

    .line 1130
    invoke-static {}, Lcom/facebook/m;->f()Landroid/content/Context;

    move-result-object v1

    .line 1131
    invoke-static {}, Lcom/facebook/m;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0}, Lcom/facebook/share/internal/y;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1137
    :cond_0
    new-instance v1, Lcom/facebook/share/internal/a$1;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/a$1;-><init>(Lcom/facebook/share/internal/a;)V

    .line 1184
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/y;->a(Lcom/facebook/internal/ai;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/facebook/share/internal/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 674
    :goto_0
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 676
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/a;->b(Z)V

    .line 677
    iget-boolean v3, p0, Lcom/facebook/share/internal/a;->v:Z

    if-eqz v3, :cond_2

    .line 681
    invoke-direct {p0}, Lcom/facebook/share/internal/a;->l()Lcom/facebook/a/a;

    move-result-object v0

    const-string v1, "fb_like_control_did_undo_quickly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lcom/facebook/a/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 694
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 672
    goto :goto_0

    .line 685
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/a;->a(ZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 688
    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/facebook/share/internal/a;->b(Z)V

    .line 689
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/a;->b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 688
    goto :goto_2

    .line 692
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/a;->b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->m:Z

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 648
    invoke-static {}, Lcom/facebook/share/internal/u;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/facebook/share/internal/u;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    iget-boolean v2, p0, Lcom/facebook/share/internal/a;->t:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/facebook/share/internal/a;->l:Lcom/facebook/share/widget/d;

    sget-object v3, Lcom/facebook/share/widget/d;->PAGE:Lcom/facebook/share/widget/d;

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 656
    goto :goto_0

    .line 662
    :cond_3
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_4

    .line 664
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 665
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v2

    const-string v3, "publish_actions"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
