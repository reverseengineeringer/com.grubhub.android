.class public Lcom/taplytics/fy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/fd;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final a:Lcom/taplytics/ep;

.field private static final b:Lcom/taplytics/fy;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/taplytics/c;

.field private D:Lcom/taplytics/eo;

.field private E:Landroid/content/Context;

.field private F:Landroid/app/Activity;

.field private G:Ljava/lang/String;

.field private H:Ljava/util/concurrent/Executor;

.field private I:Lcom/taplytics/n;

.field private J:Lcom/taplytics/fb;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/app/AlertDialog;

.field private c:Lcom/taplytics/hn;

.field private d:Lcom/taplytics/el;

.field private e:Lcom/taplytics/cc;

.field private f:Lcom/taplytics/gn;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/util/Date;

.field private u:Ljava/lang/Integer;

.field private v:Z

.field private final w:Z

.field private x:Z

.field private y:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

.field private z:Lcom/taplytics/sdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/taplytics/fy;

    invoke-direct {v0}, Lcom/taplytics/fy;-><init>()V

    sput-object v0, Lcom/taplytics/fy;->b:Lcom/taplytics/fy;

    .line 78
    new-instance v0, Lcom/taplytics/ep;

    const-string v1, "1.7.8"

    invoke-direct {v0, v1}, Lcom/taplytics/ep;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taplytics/fy;->a:Lcom/taplytics/ep;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/taplytics/fy;->c:Lcom/taplytics/hn;

    .line 90
    iput-object v1, p0, Lcom/taplytics/fy;->d:Lcom/taplytics/el;

    .line 95
    iput-object v1, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    .line 100
    iput-object v1, p0, Lcom/taplytics/fy;->f:Lcom/taplytics/gn;

    .line 105
    iput-object v1, p0, Lcom/taplytics/fy;->g:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/taplytics/fy;->h:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Lcom/taplytics/fy;->i:Z

    .line 122
    iput-boolean v2, p0, Lcom/taplytics/fy;->j:Z

    .line 127
    iput-boolean v2, p0, Lcom/taplytics/fy;->k:Z

    .line 132
    iput-boolean v3, p0, Lcom/taplytics/fy;->l:Z

    .line 138
    iput-boolean v2, p0, Lcom/taplytics/fy;->m:Z

    .line 145
    iput-boolean v2, p0, Lcom/taplytics/fy;->n:Z

    .line 150
    iput-boolean v2, p0, Lcom/taplytics/fy;->o:Z

    .line 155
    iput-boolean v2, p0, Lcom/taplytics/fy;->p:Z

    .line 160
    iput-boolean v2, p0, Lcom/taplytics/fy;->q:Z

    .line 165
    iput-boolean v2, p0, Lcom/taplytics/fy;->r:Z

    .line 170
    iput-boolean v2, p0, Lcom/taplytics/fy;->s:Z

    .line 175
    iput-object v1, p0, Lcom/taplytics/fy;->t:Ljava/util/Date;

    .line 180
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/fy;->u:Ljava/lang/Integer;

    .line 185
    iput-boolean v2, p0, Lcom/taplytics/fy;->v:Z

    .line 191
    invoke-static {}, Lcom/taplytics/fy;->C()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taplytics/fy;->w:Z

    .line 197
    iput-boolean v2, p0, Lcom/taplytics/fy;->x:Z

    .line 203
    iput-object v1, p0, Lcom/taplytics/fy;->y:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    .line 208
    iput-object v1, p0, Lcom/taplytics/fy;->z:Lcom/taplytics/sdk/a;

    .line 218
    iput-boolean v2, p0, Lcom/taplytics/fy;->A:Z

    .line 227
    iput-boolean v3, p0, Lcom/taplytics/fy;->B:Z

    .line 233
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fy;->C:Lcom/taplytics/c;

    .line 247
    iput-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    .line 252
    iput-object v1, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    .line 257
    iput-object v1, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    .line 263
    iput-object v1, p0, Lcom/taplytics/fy;->G:Ljava/lang/String;

    .line 283
    iput-object v1, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fy;->K:Ljava/util/List;

    .line 1525
    iput-object v1, p0, Lcom/taplytics/fy;->M:Landroid/app/AlertDialog;

    .line 520
    new-instance v0, Lcom/taplytics/gl;

    invoke-direct {v0, v1}, Lcom/taplytics/gl;-><init>(Lcom/taplytics/fz;)V

    iput-object v0, p0, Lcom/taplytics/fy;->H:Ljava/util/concurrent/Executor;

    .line 521
    return-void
.end method

.method public static C()Z
    .locals 1

    .prologue
    .line 1684
    :try_start_0
    const-string v0, "io.socket.client.Socket"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    const/4 v0, 0x1

    .line 1687
    :goto_0
    return v0

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()Lcom/taplytics/n;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/taplytics/fy;->I:Lcom/taplytics/n;

    return-object v0
.end method

.method private E()V
    .locals 2

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/taplytics/fy;->i:Z

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/taplytics/fy;->c:Lcom/taplytics/hn;

    new-instance v1, Lcom/taplytics/gg;

    invoke-direct {v1, p0}, Lcom/taplytics/gg;-><init>(Lcom/taplytics/fy;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/hn;->a(Lcom/taplytics/ik;)V

    goto :goto_0
.end method

.method private F()V
    .locals 4

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/taplytics/fy;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/taplytics/fy;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1081
    const-string v1, "experiment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1082
    const-string v3, "listener"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;

    .line 1083
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lcom/taplytics/fy;->a(Ljava/lang/String;ZLcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V

    goto :goto_0

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/taplytics/fy;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1087
    :cond_1
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;

    .line 1346
    invoke-direct {p0, v0}, Lcom/taplytics/fy;->b(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V

    goto :goto_0

    .line 1348
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    .line 1350
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/taplytics/fy;)Lcom/taplytics/eo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/fy;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/taplytics/fy;->y:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1236
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1237
    new-instance v4, Lcom/taplytics/en;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/taplytics/en;-><init>(Lorg/json/JSONObject;)V

    .line 1238
    const-string v0, "_id"

    invoke-virtual {v4, v0}, Lcom/taplytics/en;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    invoke-virtual {v4, v0}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1239
    :goto_1
    const-string v0, "name"

    invoke-virtual {v4, v0}, Lcom/taplytics/en;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    invoke-virtual {v4, v0}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1241
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1242
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1238
    :cond_1
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    .line 1239
    :cond_2
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    const-string v1, "Getting vars"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1248
    :cond_3
    return-object v3
.end method

.method static synthetic a(Lcom/taplytics/fy;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taplytics/fy;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V

    return-void
.end method

.method private a(Lcom/taplytics/eo;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1568
    if-eqz p1, :cond_6

    .line 1569
    invoke-virtual {p1}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v0

    .line 1570
    if-eqz v0, :cond_6

    .line 1571
    const-string v3, "settings"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "killForBuilds"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1572
    invoke-static {}, Lcom/taplytics/iz;->c()I

    move-result v5

    .line 1573
    invoke-static {}, Lcom/taplytics/iz;->b()Ljava/lang/String;

    move-result-object v6

    .line 1575
    if-eqz v4, :cond_6

    move v3, v2

    .line 1576
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 1577
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v7, "appBuild"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1578
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v8, "appVersion"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1580
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    .line 1581
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1582
    const-string v0, "TAPLYTICS IS NOW DISABLED"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1586
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    if-eqz v0, :cond_2

    .line 1587
    iget-object v0, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    invoke-virtual {v0}, Lcom/taplytics/fb;->b()V

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/taplytics/fy;->I:Lcom/taplytics/n;

    if-eqz v0, :cond_3

    .line 1590
    invoke-direct {p0}, Lcom/taplytics/fy;->D()Lcom/taplytics/n;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/n;->a(Lcom/taplytics/n;)V

    .line 1592
    :cond_3
    iget-object v0, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    if-eqz v0, :cond_4

    .line 1593
    invoke-static {}, Lcom/taplytics/dg;->b()Lcom/taplytics/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/dg;->r()V

    .line 1595
    :cond_4
    iget-object v0, p0, Lcom/taplytics/fy;->f:Lcom/taplytics/gn;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taplytics/fy;->f:Lcom/taplytics/gn;

    invoke-virtual {v0}, Lcom/taplytics/gn;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1596
    iget-object v0, p0, Lcom/taplytics/fy;->f:Lcom/taplytics/gn;

    invoke-virtual {v0}, Lcom/taplytics/gn;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1601
    :cond_5
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 1611
    :goto_2
    return v0

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    const-string v3, "error unregistering things for killswitch"

    invoke-static {v3, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1606
    :catch_1
    move-exception v0

    .line 1607
    const-string v3, "error checking kill builds"

    invoke-static {v3, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1611
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    if-nez v0, :cond_a

    :goto_4
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    .line 1601
    goto :goto_2

    .line 1576
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 1604
    :cond_9
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/taplytics/fy;->l:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_a
    move v1, v2

    .line 1611
    goto :goto_4
.end method

.method private a(Lcom/taplytics/ep;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 837
    :try_start_0
    sget-object v1, Lcom/taplytics/fy;->a:Lcom/taplytics/ep;

    invoke-virtual {v1, p1}, Lcom/taplytics/ep;->a(Lcom/taplytics/ep;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 839
    packed-switch v1, :pswitch_data_0

    .line 846
    :goto_0
    return v0

    .line 841
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v1

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/taplytics/fy;Lcom/taplytics/eo;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/taplytics/fy;->a(Lcom/taplytics/eo;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/taplytics/fy;Lcom/taplytics/ep;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/taplytics/fy;->a(Lcom/taplytics/ep;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/taplytics/fy;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/taplytics/fy;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/taplytics/fy;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/taplytics/fy;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/taplytics/fy;Lcom/taplytics/eo;)Lcom/taplytics/eo;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v11, 0x5a0

    const/4 v9, 0x1

    .line 554
    :try_start_0
    const-string v1, "Taplytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting taplytics version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/taplytics/fy;->a:Lcom/taplytics/ep;

    invoke-virtual {v3}, Lcom/taplytics/ep;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 557
    :cond_0
    const-string v1, "Taplytics"

    const-string v2, "Failed to start Taplytics, missing App Context or API Key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return-void

    .line 560
    :cond_1
    const-string v1, "android.permission.INTERNET"

    invoke-static {p1, v1}, Lcom/taplytics/iz;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 561
    const-string v1, "Taplytics"

    const-string v2, "Failed to find the necessary android.permission.INTERNET permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v1

    .line 723
    const-string v2, "Master catch!"

    invoke-static {v2, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 564
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/taplytics/fy;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/taplytics/fy;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 565
    const-string v1, "Taplytics"

    const-string v2, "Taplytics has already started! Taplytics only needs to be started once, preferably in your Application subclass."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_3
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Taplytics with API Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 572
    :cond_4
    iput-object p2, p0, Lcom/taplytics/fy;->g:Ljava/lang/String;

    .line 573
    iput-object p1, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    .line 574
    new-instance v1, Lcom/taplytics/el;

    invoke-direct {v1, p1}, Lcom/taplytics/el;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taplytics/fy;->d:Lcom/taplytics/el;

    .line 575
    new-instance v1, Lcom/taplytics/hn;

    invoke-direct {v1, p1}, Lcom/taplytics/hn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taplytics/fy;->c:Lcom/taplytics/hn;

    .line 576
    new-instance v1, Lcom/taplytics/cc;

    invoke-direct {v1}, Lcom/taplytics/cc;-><init>()V

    iput-object v1, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    .line 577
    new-instance v1, Lcom/taplytics/gn;

    invoke-direct {v1}, Lcom/taplytics/gn;-><init>()V

    iput-object v1, p0, Lcom/taplytics/fy;->f:Lcom/taplytics/gn;

    .line 581
    iget-boolean v1, p0, Lcom/taplytics/fy;->k:Z

    if-nez v1, :cond_5

    .line 582
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p3}, Lcom/taplytics/fy;->a(ZLjava/util/Map;)V

    .line 583
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taplytics/fy;->k:Z

    .line 586
    :cond_5
    sget-object v8, Lcom/taplytics/il;->alpaca:Lcom/taplytics/il;

    .line 588
    if-eqz p3, :cond_16

    .line 589
    const-string v1, "debugLogging"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 590
    const-string v1, "liveUpdate"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 591
    const-string v2, "shakeMenu"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 592
    const-string v2, "server"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 593
    const-string v2, "fragments"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 594
    const-string v6, "sessionMinutes"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 595
    const-string v7, "turnMenu"

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 597
    if-eqz v1, :cond_6

    instance-of v10, v1, Ljava/lang/Boolean;

    if-eqz v10, :cond_6

    .line 598
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/taplytics/fy;->w:Z

    if-eqz v1, :cond_12

    move v1, v9

    :goto_1
    iput-boolean v1, p0, Lcom/taplytics/fy;->i:Z

    .line 599
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taplytics/fy;->n:Z

    .line 602
    :cond_6
    if-eqz v2, :cond_7

    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 603
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taplytics/fy;->B:Z

    .line 606
    :cond_7
    if-eqz v3, :cond_8

    instance-of v1, v3, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 607
    invoke-static {}, Lcom/taplytics/ck;->a()Lcom/taplytics/ck;

    move-result-object v2

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/taplytics/ck;->a(Z)V

    .line 610
    :cond_8
    if-eqz v4, :cond_9

    instance-of v1, v4, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 611
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 612
    invoke-static {}, Lcom/taplytics/fx;->a()Lcom/taplytics/fx;

    move-result-object v1

    sget-object v2, Lcom/taplytics/kb;->caterpillar:Lcom/taplytics/kb;

    invoke-virtual {v1, v2}, Lcom/taplytics/fx;->a(Lcom/taplytics/kb;)V

    .line 613
    iget-object v1, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    if-eqz v1, :cond_9

    .line 614
    iget-object v1, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    invoke-virtual {v1}, Lcom/taplytics/fb;->b()V

    .line 619
    :cond_9
    if-eqz v5, :cond_15

    instance-of v1, v5, Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 620
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 621
    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "localHost"

    if-ne v5, v2, :cond_13

    .line 622
    :cond_a
    sget-object v8, Lcom/taplytics/il;->antelope:Lcom/taplytics/il;

    move-object v2, v8

    .line 629
    :goto_2
    if-eqz v6, :cond_c

    instance-of v1, v6, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_c

    .line 631
    :try_start_2
    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    .line 632
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v11, :cond_b

    .line 633
    const-string v1, "Session background time is greater then 24hrs, setting to 24hrs."

    invoke-static {v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;)V

    .line 634
    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 636
    :cond_b
    invoke-virtual {p0, v1}, Lcom/taplytics/fy;->a(Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 643
    :cond_c
    :goto_3
    :try_start_3
    const-string v1, "disable"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 644
    const-string v1, "disable"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 645
    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 646
    new-instance v3, Ljava/util/HashSet;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 648
    invoke-static {}, Lcom/taplytics/fx;->a()Lcom/taplytics/fx;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/taplytics/fx;->b(Ljava/util/HashSet;)V

    .line 652
    :cond_d
    if-eqz v7, :cond_e

    instance-of v1, v7, Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    .line 653
    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taplytics/fy;->m:Z

    :cond_e
    move-object v1, v2

    .line 658
    :goto_4
    iget-object v2, p0, Lcom/taplytics/fy;->c:Lcom/taplytics/hn;

    invoke-virtual {v2, v1}, Lcom/taplytics/hn;->a(Lcom/taplytics/il;)V

    .line 661
    iget-object v1, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    invoke-virtual {v1}, Lcom/taplytics/cc;->e()V

    .line 663
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/taplytics/fy;->y:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    .line 665
    iget-object v1, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    new-instance v2, Lcom/taplytics/ge;

    invoke-direct {v2, p0, p3}, Lcom/taplytics/ge;-><init>(Lcom/taplytics/fy;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v1

    new-instance v2, Lcom/taplytics/gf;

    invoke-direct {v2, p0, p2}, Lcom/taplytics/gf;-><init>(Lcom/taplytics/fy;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taplytics/cs;->a(Lcom/taplytics/gr;)V

    .line 713
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_f

    iget-boolean v1, p0, Lcom/taplytics/fy;->j:Z

    if-nez v1, :cond_10

    .line 714
    :cond_f
    invoke-virtual {p0}, Lcom/taplytics/fy;->t()V

    .line 718
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_11

    .line 719
    iget-object v1, p0, Lcom/taplytics/fy;->c:Lcom/taplytics/hn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taplytics/hn;->b(Lcom/taplytics/ik;)V

    .line 721
    :cond_11
    invoke-virtual {p0}, Lcom/taplytics/fy;->s()V

    goto/16 :goto_0

    .line 598
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 623
    :cond_13
    const-string v2, "staging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 624
    sget-object v8, Lcom/taplytics/il;->anteater:Lcom/taplytics/il;

    move-object v2, v8

    goto/16 :goto_2

    .line 625
    :cond_14
    const-string v2, "dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 626
    sget-object v8, Lcom/taplytics/il;->alligator:Lcom/taplytics/il;

    move-object v2, v8

    goto/16 :goto_2

    .line 637
    :catch_1
    move-exception v1

    .line 638
    const-string v3, "problem setting session interval time"

    invoke-static {v3, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :cond_15
    move-object v2, v8

    goto/16 :goto_2

    :cond_16
    move-object v1, v8

    goto :goto_4
.end method

.method static synthetic b(Lcom/taplytics/fy;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/taplytics/fy;->F()V

    return-void
.end method

.method private b(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1362
    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v1}, Lcom/taplytics/eo;->f()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1363
    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v1}, Lcom/taplytics/eo;->f()Lorg/json/JSONArray;

    move-result-object v6

    .line 1364
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1367
    :try_start_0
    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v1}, Lcom/taplytics/eo;->g()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/taplytics/em;

    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v1}, Lcom/taplytics/eo;->g()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taplytics/em;-><init>(Lorg/json/JSONArray;)V

    :cond_0
    move v5, v3

    .line 1369
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 1370
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1371
    if-nez v2, :cond_2

    .line 1369
    :cond_1
    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 1374
    :cond_2
    const-string v1, "_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1375
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1377
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/taplytics/em;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    const-string v1, "active"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1380
    const-string v1, "name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1381
    :goto_2
    const-string v1, "baseline"

    .line 1382
    const-string v8, "variations"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1385
    if-eqz v8, :cond_3

    iget-object v2, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v2}, Lcom/taplytics/eo;->i()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 1386
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 1387
    new-instance v9, Lcom/taplytics/en;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/taplytics/en;-><init>(Lorg/json/JSONObject;)V

    .line 1388
    const-string v10, "_id"

    invoke-virtual {v9, v10}, Lcom/taplytics/en;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v10}, Lcom/taplytics/eo;->i()Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_id"

    invoke-virtual {v9, v12}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1390
    const-string v1, "name"

    invoke-virtual {v9, v1}, Lcom/taplytics/en;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "name"

    invoke-virtual {v9, v1}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1396
    :cond_3
    :goto_4
    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    :try_start_1
    const-string v1, "Getting running experiments and variations"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1402
    invoke-interface {p1, v7}, Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;->runningExperimentsAndVariation(Ljava/util/Map;)V

    .line 1406
    :goto_5
    return-void

    .line 1380
    :cond_4
    :try_start_2
    const-string v1, "_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    .line 1390
    :cond_5
    const-string v1, "_id"

    invoke-virtual {v9, v1}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_4

    .line 1386
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1402
    :cond_7
    invoke-interface {p1, v7}, Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;->runningExperimentsAndVariation(Ljava/util/Map;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-interface {p1, v7}, Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;->runningExperimentsAndVariation(Ljava/util/Map;)V

    throw v0

    .line 1405
    :cond_8
    invoke-interface {p1, v0}, Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;->runningExperimentsAndVariation(Ljava/util/Map;)V

    goto :goto_5
.end method

.method static synthetic b(Lcom/taplytics/fy;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/taplytics/fy;->r:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 791
    iget-object v1, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 794
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tl-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 795
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 796
    const v3, 0x10020

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 797
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 799
    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/taplytics/fy;)Lcom/taplytics/cc;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    return-object v0
.end method

.method static synthetic d(Lcom/taplytics/fy;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/taplytics/fy;->p:Z

    return v0
.end method

.method public static e()Lcom/taplytics/fy;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/taplytics/fy;->b:Lcom/taplytics/fy;

    return-object v0
.end method

.method static synthetic e(Lcom/taplytics/fy;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/taplytics/fy;->G()V

    return-void
.end method

.method static synthetic f(Lcom/taplytics/fy;)Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/fy;->y:Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;

    return-object v0
.end method

.method static synthetic g(Lcom/taplytics/fy;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/taplytics/fy;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/taplytics/fy;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/taplytics/fy;->A:Z

    return v0
.end method

.method static synthetic i(Lcom/taplytics/fy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/taplytics/fy;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/taplytics/fy;->v:Z

    return v0
.end method

.method static synthetic k(Lcom/taplytics/fy;)Lcom/taplytics/gn;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/fy;->f:Lcom/taplytics/gn;

    return-object v0
.end method

.method static synthetic l(Lcom/taplytics/fy;)Lcom/taplytics/c;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/fy;->C:Lcom/taplytics/c;

    return-object v0
.end method

.method static synthetic m(Lcom/taplytics/fy;)Lcom/taplytics/sdk/a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taplytics/fy;->z:Lcom/taplytics/sdk/a;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/taplytics/fy;->n:Z

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1655
    iget-object v1, p0, Lcom/taplytics/fy;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/taplytics/iz;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1656
    invoke-static {}, Lcom/taplytics/iz;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1657
    if-eqz v1, :cond_0

    const-string v2, "DEVICE_TOKEN"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/taplytics/fy;->h:Ljava/lang/String;

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting device token from prefs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/fy;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 1660
    :cond_1
    iget-object v0, p0, Lcom/taplytics/fy;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1414
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    const-string v0, "Shake Menu triggered"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 1418
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taplytics/fi;->a()Lcom/taplytics/fi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fi;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/taplytics/kb;->caterpillar:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/taplytics/fy;->o:Z

    if-eqz v0, :cond_1

    .line 1420
    invoke-static {}, Lcom/taplytics/fi;->a()Lcom/taplytics/fi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fi;->b()V

    .line 1422
    :cond_1
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taplytics/im;->a:Z

    if-nez v0, :cond_2

    .line 1423
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :cond_2
    :goto_0
    return-void

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    const-string v1, "onshake"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 419
    :try_start_0
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    if-nez v0, :cond_1

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/taplytics/fy;->x:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    new-instance v0, Lcom/taplytics/fz;

    invoke-direct {v0, p0, p1}, Lcom/taplytics/fz;-><init>(Lcom/taplytics/fy;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    if-eq p1, v0, :cond_5

    .line 454
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 455
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/jy;->a(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    const-string v1, "Error setting activity."

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 460
    :cond_4
    :try_start_1
    iput-object p1, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/fy;->o:Z

    .line 462
    iget-object v0, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/fy;->G:Ljava/lang/String;

    .line 464
    invoke-virtual {p0}, Lcom/taplytics/fy;->v()V

    .line 467
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 468
    invoke-static {}, Lcom/taplytics/fq;->a()Lcom/taplytics/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fq;->d()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 469
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 470
    const-string v0, "Setting current activity"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 473
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    const-string v1, "tl_notif"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tl_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    invoke-virtual {v1, v0}, Lcom/taplytics/cc;->a(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 1039
    sget-object v0, Lcom/taplytics/kb;->cat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taplytics/gq;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    .line 1042
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .prologue
    .line 1045
    sget-object v0, Lcom/taplytics/kb;->cat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taplytics/gq;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;II)V

    .line 1048
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 533
    if-eqz p3, :cond_0

    const-string v0, "async"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const-string v0, "async"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/fy;->H:Ljava/util/concurrent/Executor;

    .line 540
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/taplytics/fy;->j:Z

    if-nez v0, :cond_1

    .line 541
    invoke-static {p1}, Lcom/taplytics/n;->a(Landroid/content/Context;)Lcom/taplytics/n;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/fy;->I:Lcom/taplytics/n;

    .line 544
    :cond_1
    iget-object v6, p0, Lcom/taplytics/fy;->H:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/taplytics/gd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taplytics/gd;-><init>(Lcom/taplytics/fy;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/taplytics/sdk/TaplyticsExperimentsLoadedListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 550
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V
    .locals 1

    .prologue
    .line 1051
    sget-object v0, Lcom/taplytics/kb;->cat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taplytics/gq;->a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V

    .line 1054
    :cond_0
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;II)V
    .locals 1

    .prologue
    .line 1057
    sget-object v0, Lcom/taplytics/kb;->cat:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taplytics/gq;->a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;II)V

    .line 1060
    :cond_0
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsPushTokenListener;)V
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/taplytics/fy;->o()Lcom/taplytics/gn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/taplytics/fy;->o()Lcom/taplytics/gn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taplytics/gn;->a(Lcom/taplytics/sdk/TaplyticsPushTokenListener;)V

    .line 1622
    :cond_0
    return-void
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V
    .locals 1

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    if-nez v0, :cond_0

    .line 1327
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;->runningExperimentsAndVariation(Ljava/util/Map;)V

    .line 1338
    :goto_0
    return-void

    .line 1331
    :cond_0
    iget-boolean v0, p0, Lcom/taplytics/fy;->r:Z

    if-eqz v0, :cond_1

    .line 1332
    invoke-direct {p0, p1}, Lcom/taplytics/fy;->b(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V

    goto :goto_0

    .line 1334
    :cond_1
    iget-object v0, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    .line 1336
    :cond_2
    iget-object v0, p0, Lcom/taplytics/fy;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/taplytics/sdk/a;)V
    .locals 0

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/taplytics/fy;->z:Lcom/taplytics/sdk/a;

    .line 1648
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/taplytics/fy;->u:Ljava/lang/Integer;

    .line 212
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/taplytics/fy;->H:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/taplytics/fy;->H:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1644
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/taplytics/fy;->h:Ljava/lang/String;

    .line 1665
    invoke-static {}, Lcom/taplytics/iz;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1666
    if-eqz v0, :cond_0

    .line 1667
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DEVICE_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving device token to prefs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 1672
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 1

    .prologue
    .line 1209
    invoke-static {}, Lcom/taplytics/fe;->a()Lcom/taplytics/fe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taplytics/fe;->b(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V

    .line 1210
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1256
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1257
    const-string v0, "exp"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v0, "var"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1263
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1264
    iget-object v0, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v0}, Lcom/taplytics/eo;->k()Lorg/json/JSONArray;

    move-result-object v4

    .line 1265
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1266
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1267
    const-string v1, "initProperties"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1268
    const-string v5, "anID"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1270
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v6, "anProperties"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1272
    :cond_0
    const-string v1, "reset"

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1273
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/gq;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1279
    :cond_2
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    .line 1281
    new-instance v1, Lcom/taplytics/gk;

    invoke-direct {v1, p0, p3, p4}, Lcom/taplytics/gk;-><init>(Lcom/taplytics/fy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 1292
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    :goto_1
    return-void

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    const-string v1, "error switching variations"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZLcom/taplytics/sdk/TaplyticsCodeExperimentListener;)V
    .locals 14

    .prologue
    .line 1101
    sget-object v1, Lcom/taplytics/kb;->camel:Lcom/taplytics/kb;

    invoke-static {v1}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    iget-boolean v1, p0, Lcom/taplytics/fy;->l:Z

    if-nez v1, :cond_2

    .line 1104
    if-eqz p3, :cond_0

    .line 1105
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;->baselineVariation(Ljava/util/Map;)V

    goto :goto_0

    .line 1107
    :cond_2
    if-nez p1, :cond_3

    .line 1108
    const-string v1, "Code experiment name null! running baseline variation!"

    invoke-static {v1}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 1109
    if-eqz p3, :cond_0

    .line 1110
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;->baselineVariation(Ljava/util/Map;)V

    goto :goto_0

    .line 1112
    :cond_3
    if-nez p3, :cond_4

    .line 1113
    const-string v1, "No TaplyticsCodeExperimentListener to run code experiment!"

    invoke-static {v1}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :cond_4
    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    if-nez v1, :cond_5

    if-nez p2, :cond_5

    .line 1116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1117
    const-string v2, "experiment"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string v2, "listener"

    move-object/from16 v0, p3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v2, p0, Lcom/taplytics/fy;->K:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1124
    :cond_5
    const/4 v7, 0x0

    .line 1126
    const/4 v6, 0x0

    .line 1127
    const/4 v1, 0x0

    .line 1128
    const/4 v3, 0x0

    .line 1129
    const/4 v4, 0x0

    .line 1130
    const-string v2, "baseline"

    .line 1131
    const/4 v8, 0x0

    .line 1135
    :try_start_0
    iget-object v5, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v5}, Lcom/taplytics/eo;->e()Lcom/taplytics/en;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1136
    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v1}, Lcom/taplytics/eo;->e()Lcom/taplytics/en;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taplytics/en;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v1}, Lcom/taplytics/eo;->e()Lcom/taplytics/en;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taplytics/en;->b(Ljava/lang/String;)Lcom/taplytics/en;

    move-result-object v1

    .line 1141
    :cond_6
    :goto_1
    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v5}, Lcom/taplytics/eo;->i()Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1142
    const-string v5, "_id"

    invoke-virtual {v1, v5}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1143
    :try_start_1
    const-string v3, "customVariableNames"

    invoke-virtual {v1, v3}, Lcom/taplytics/en;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1144
    const-string v3, "customVariableNames"

    invoke-virtual {v1, v3}, Lcom/taplytics/en;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1148
    :cond_7
    const-string v3, "baseline"

    invoke-virtual {v1, v3}, Lcom/taplytics/en;->b(Ljava/lang/String;)Lcom/taplytics/en;

    move-result-object v3

    .line 1149
    if-eqz v3, :cond_8

    const-string v9, "customVariables"

    invoke-virtual {v3, v9}, Lcom/taplytics/en;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1150
    const-string v9, "customVariables"

    invoke-virtual {v3, v9}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/taplytics/fy;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1154
    :cond_8
    :try_start_2
    const-string v3, "variations"

    invoke-virtual {v1, v3}, Lcom/taplytics/en;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1155
    if-eqz v9, :cond_15

    .line 1156
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_15

    .line 1157
    new-instance v3, Lcom/taplytics/en;

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/taplytics/en;-><init>(Lorg/json/JSONObject;)V

    .line 1158
    const-string v10, "_id"

    invoke-virtual {v3, v10}, Lcom/taplytics/en;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v10}, Lcom/taplytics/eo;->i()Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_id"

    invoke-virtual {v3, v12}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1160
    const-string v1, "_id"

    invoke-virtual {v3, v1}, Lcom/taplytics/en;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    move-object v2, v3

    :goto_3
    move-object v3, v5

    move-object v4, v6

    move-object v6, v2

    move-object v5, v8

    move-object v2, v1

    .line 1171
    :goto_4
    if-eqz v6, :cond_14

    .line 1173
    :try_start_3
    const-string v1, "customVariables"

    invoke-virtual {v6, v1}, Lcom/taplytics/en;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "customVariables"

    invoke-virtual {v6, v1}, Lcom/taplytics/en;->b(Ljava/lang/String;)Lcom/taplytics/en;

    move-result-object v1

    .line 1174
    :goto_5
    const-string v8, "name"

    invoke-virtual {v6, v8}, Lcom/taplytics/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1176
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 1177
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Show var: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", for exp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 1180
    :cond_9
    invoke-direct {p0, v1, v5}, Lcom/taplytics/fy;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v1}, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;->experimentVariation(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1181
    const/4 v5, 0x1

    .line 1182
    if-eqz v3, :cond_a

    :try_start_4
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v2, :cond_a

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1183
    iget-object v1, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    invoke-virtual {v1, v3, v2}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1190
    :cond_a
    :goto_6
    if-nez v5, :cond_0

    .line 1191
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show base var for exp: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 1194
    :cond_b
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;->baselineVariation(Ljava/util/Map;)V

    .line 1195
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    invoke-virtual {v1, v3, v2}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1136
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1156
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1165
    :cond_e
    if-eqz v1, :cond_f

    .line 1166
    :try_start_5
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No exp found by name "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", disp baseline instead."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_f
    move-object v5, v8

    move-object v13, v4

    move-object v4, v6

    move-object v6, v13

    goto/16 :goto_4

    .line 1173
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 1186
    :catch_0
    move-exception v1

    move-object v4, v6

    move v5, v7

    .line 1187
    :goto_7
    :try_start_6
    const-string v6, "Get code exp"

    invoke-static {v6, v1}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1190
    if-nez v5, :cond_0

    .line 1191
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show base var for exp: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 1194
    :cond_11
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;->baselineVariation(Ljava/util/Map;)V

    .line 1195
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    invoke-virtual {v1, v3, v2}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1190
    :catchall_0
    move-exception v1

    :goto_8
    if-nez v7, :cond_13

    .line 1191
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show base var for exp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 1194
    :cond_12
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lcom/taplytics/sdk/TaplyticsCodeExperimentListener;->baselineVariation(Ljava/util/Map;)V

    .line 1195
    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    .line 1196
    iget-object v4, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    invoke-virtual {v4, v3, v2}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    throw v1

    .line 1190
    :catchall_1
    move-exception v1

    move-object v3, v5

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v6, v4

    goto :goto_8

    :catchall_3
    move-exception v1

    move-object v6, v4

    move v7, v5

    goto :goto_8

    .line 1186
    :catch_1
    move-exception v1

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    goto :goto_7

    :catch_3
    move-exception v1

    move v5, v7

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_7

    :cond_14
    move v5, v7

    goto/16 :goto_6

    :cond_15
    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_3
.end method

.method public a(Ljava/util/Map;Lcom/taplytics/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taplytics/c",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    if-nez v0, :cond_0

    .line 970
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/taplytics/fy;->C:Lcom/taplytics/c;

    invoke-virtual {v0}, Lcom/taplytics/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/taplytics/fy;->C:Lcom/taplytics/c;

    .line 860
    iget-object v0, p0, Lcom/taplytics/fy;->c:Lcom/taplytics/hn;

    new-instance v1, Lcom/taplytics/gh;

    invoke-direct {v1, p0, p2}, Lcom/taplytics/gh;-><init>(Lcom/taplytics/fy;Lcom/taplytics/c;)V

    invoke-virtual {v0, p1, v1}, Lcom/taplytics/hn;->a(Ljava/util/Map;Lcom/taplytics/ij;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 859
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/taplytics/fy;->C:Lcom/taplytics/c;

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/taplytics/fy;->j:Z

    .line 311
    return-void
.end method

.method public a(ZLjava/util/Map;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 983
    iget-object v0, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    .line 988
    :goto_0
    if-eqz v0, :cond_0

    .line 990
    :try_start_0
    const-string v3, "com.github.nkzawa.socketio.client.Socket"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 992
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taplytics/fy;->x:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v3}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 999
    iget-object v3, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v3}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v3

    const-string v4, "settings"

    invoke-virtual {v3, v4}, Lcom/taplytics/en;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1000
    if-eqz v3, :cond_b

    .line 1001
    const-string v4, "enabledForReleaseModes"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1002
    const-string v6, "setFromUserDevice"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v7, v3

    move-object v3, v4

    move v4, v7

    .line 1006
    :goto_2
    if-eqz v3, :cond_5

    .line 1007
    if-eqz v0, :cond_4

    .line 1008
    const-string v0, "dev"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    .line 1015
    :goto_3
    if-eqz p2, :cond_1

    .line 1016
    const-string v0, "liveUpdate"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    const-string v0, "liveUpdate"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/taplytics/fy;->w:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/taplytics/fy;->i:Z

    .line 1018
    iput-boolean v1, p0, Lcom/taplytics/fy;->n:Z

    .line 1023
    :cond_1
    iget-boolean v0, p0, Lcom/taplytics/fy;->n:Z

    if-nez v0, :cond_2

    .line 1024
    if-eqz v4, :cond_9

    .line 1025
    iget-boolean v0, p0, Lcom/taplytics/fy;->i:Z

    if-eq v0, v3, :cond_7

    move v0, v1

    .line 1026
    :goto_5
    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/taplytics/fy;->w:Z

    if-eqz v3, :cond_8

    :goto_6
    iput-boolean v1, p0, Lcom/taplytics/fy;->i:Z

    .line 1027
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1028
    invoke-virtual {p0, v5, v5}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    .line 1034
    :cond_2
    :goto_7
    invoke-virtual {p0}, Lcom/taplytics/fy;->s()V

    .line 1036
    return-void

    :cond_3
    move v0, v2

    .line 983
    goto :goto_0

    .line 1010
    :cond_4
    const-string v0, "appStore"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto :goto_3

    :cond_5
    move v3, v0

    .line 1012
    goto :goto_3

    :cond_6
    move v0, v2

    .line 1017
    goto :goto_4

    :cond_7
    move v0, v2

    .line 1025
    goto :goto_5

    :cond_8
    move v1, v2

    .line 1026
    goto :goto_6

    .line 1030
    :cond_9
    if-eqz v3, :cond_a

    iget-boolean v0, p0, Lcom/taplytics/fy;->w:Z

    if-eqz v0, :cond_a

    :goto_8
    iput-boolean v1, p0, Lcom/taplytics/fy;->i:Z

    goto :goto_7

    :cond_a
    move v1, v2

    goto :goto_8

    .line 993
    :catch_0
    move-exception v3

    goto/16 :goto_1

    :cond_b
    move v4, v2

    move-object v3, v5

    goto :goto_2
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taplytics/fy;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    const-string v0, "Checking for app link"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 497
    :cond_2
    if-eqz p1, :cond_0

    .line 498
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent data string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 503
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tl-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    const-string v1, "Found App Link!"

    invoke-static {v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 508
    :cond_4
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taplytics/im;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    const-string v1, "Error finding app link"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 1

    .prologue
    .line 1221
    invoke-static {}, Lcom/taplytics/fe;->a()Lcom/taplytics/fe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taplytics/fe;->a(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V

    .line 1222
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/taplytics/fy;->s:Z

    .line 318
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/taplytics/fy;->A:Z

    return v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/taplytics/fy;->o:Z

    .line 342
    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/taplytics/fy;->v()V

    .line 344
    :cond_0
    iget-boolean v0, p0, Lcom/taplytics/fy;->s:Z

    if-eqz v0, :cond_1

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taplytics/fy;->s:Z

    .line 346
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/taplytics/fy;->B:Z

    return v0
.end method

.method public d()Lcom/taplytics/c;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/taplytics/fy;->C:Lcom/taplytics/c;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 1615
    iput-boolean p1, p0, Lcom/taplytics/fy;->A:Z

    .line 1616
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 1637
    iput-boolean p1, p0, Lcom/taplytics/fy;->v:Z

    .line 1638
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/taplytics/fy;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/taplytics/fy;->i:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/taplytics/fy;->p:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/taplytics/fy;->o:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/taplytics/fy;->l:Z

    return v0
.end method

.method public k()Lcom/taplytics/eo;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    return-object v0
.end method

.method public l()Lcom/taplytics/hn;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/taplytics/fy;->c:Lcom/taplytics/hn;

    return-object v0
.end method

.method public m()Lcom/taplytics/el;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/taplytics/fy;->d:Lcom/taplytics/el;

    return-object v0
.end method

.method public n()Lcom/taplytics/cc;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/taplytics/fy;->e:Lcom/taplytics/cc;

    return-object v0
.end method

.method public o()Lcom/taplytics/gn;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/taplytics/fy;->f:Lcom/taplytics/gn;

    return-object v0
.end method

.method public p()Landroid/content/Context;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    return-object v0
.end method

.method public q()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/taplytics/fy;->F:Landroid/app/Activity;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/taplytics/fy;->G:Ljava/lang/String;

    return-object v0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/taplytics/kb;->caterpillar:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Lcom/taplytics/fb;

    invoke-direct {v0}, Lcom/taplytics/fb;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    .line 736
    iget-object v0, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    invoke-virtual {v0, p0}, Lcom/taplytics/fb;->a(Lcom/taplytics/fd;)V

    .line 737
    iget-object v0, p0, Lcom/taplytics/fy;->J:Lcom/taplytics/fb;

    iget-object v1, p0, Lcom/taplytics/fy;->E:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taplytics/fb;->a(Landroid/content/Context;)V

    .line 739
    :cond_1
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 747
    iget-boolean v0, p0, Lcom/taplytics/fy;->q:Z

    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 749
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/fy;->q:Z

    .line 751
    invoke-virtual {p0, v1, v1}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    .line 754
    invoke-virtual {p0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    const-string v1, "appActive"

    invoke-virtual {v0, v1}, Lcom/taplytics/cc;->a(Ljava/lang/String;)V

    .line 756
    invoke-direct {p0}, Lcom/taplytics/fy;->E()V

    goto :goto_0
.end method

.method public u()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 764
    iget-object v0, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    invoke-virtual {v0, v1}, Lcom/taplytics/eo;->a(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0, v1, v1}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    .line 766
    return-void
.end method

.method public v()V
    .locals 4

    .prologue
    .line 774
    iget-object v0, p0, Lcom/taplytics/fy;->t:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taplytics/fy;->s:Z

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 776
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/taplytics/fy;->t:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/taplytics/fy;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taplytics/fy;->q:Z

    .line 778
    invoke-virtual {p0}, Lcom/taplytics/fy;->u()V

    .line 781
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fy;->t:Ljava/util/Date;

    .line 782
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/taplytics/fy;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1068
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 1559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/fy;->D:Lcom/taplytics/eo;

    .line 1560
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 1625
    iget-boolean v0, p0, Lcom/taplytics/fy;->m:Z

    return v0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-static {}, Lcom/taplytics/fi;->a()Lcom/taplytics/fi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fi;->b()V

    .line 1634
    :cond_0
    return-void
.end method
