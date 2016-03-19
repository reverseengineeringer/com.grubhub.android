.class public Lcom/taplytics/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/taplytics/fe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/taplytics/fe;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/taplytics/fe;->a:Lcom/taplytics/fe;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/taplytics/fe;->a:Lcom/taplytics/fe;

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/taplytics/fe;

    invoke-direct {v0}, Lcom/taplytics/fe;-><init>()V

    sput-object v0, Lcom/taplytics/fe;->a:Lcom/taplytics/fe;

    .line 36
    sget-object v0, Lcom/taplytics/fe;->a:Lcom/taplytics/fe;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/im;->b()Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Lcom/taplytics/fg;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/fg;-><init>(Lcom/taplytics/fe;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 152
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/taplytics/fe;Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;Z)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/taplytics/fe;->a(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;Z)Z
    .locals 2

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/eo;->h()Lcom/taplytics/en;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    const-string v1, "variableType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "variableType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "Code Block"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {p2}, Lcom/taplytics/sdk/CodeBlockListener;->run()V

    .line 72
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 77
    :cond_0
    if-eqz p3, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/taplytics/fe;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "Problem running code block sync"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->d()Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Lcom/taplytics/ff;

    invoke-direct {v1, p0, p1, p2}, Lcom/taplytics/ff;-><init>(Lcom/taplytics/fe;Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "Problem running code block sync"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/taplytics/fe;->a(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;Z)Z

    .line 48
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/taplytics/fe;->a(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/taplytics/fe;->c(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V

    .line 98
    :cond_0
    return-void
.end method
