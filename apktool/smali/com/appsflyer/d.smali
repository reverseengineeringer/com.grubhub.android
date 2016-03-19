.class Lcom/appsflyer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    iput-object p1, p0, Lcom/appsflyer/d;->a:Landroid/content/Context;

    .line 1159
    iput-object p2, p0, Lcom/appsflyer/d;->b:Ljava/lang/String;

    .line 1160
    iput-object p3, p0, Lcom/appsflyer/d;->c:Ljava/lang/String;

    .line 1161
    iput-object p4, p0, Lcom/appsflyer/d;->d:Ljava/lang/String;

    .line 1162
    iput-object p5, p0, Lcom/appsflyer/d;->e:Ljava/lang/String;

    .line 1163
    iput-object p6, p0, Lcom/appsflyer/d;->f:Ljava/util/concurrent/ExecutorService;

    .line 1164
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    .prologue
    .line 1148
    invoke-direct/range {p0 .. p6}, Lcom/appsflyer/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/appsflyer/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsflyer/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/d;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/appsflyer/d;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1169
    return-void
.end method
