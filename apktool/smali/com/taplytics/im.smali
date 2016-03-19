.class public Lcom/taplytics/im;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/taplytics/im;


# instance fields
.field public a:Z

.field public b:Z

.field private d:Lio/socket/client/Socket;

.field private e:Ljava/lang/String;

.field private f:Lorg/json/JSONObject;

.field private g:Z

.field private h:I

.field private i:Lcom/taplytics/c;

.field private j:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/taplytics/im;

    invoke-direct {v0}, Lcom/taplytics/im;-><init>()V

    sput-object v0, Lcom/taplytics/im;->c:Lcom/taplytics/im;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    .line 42
    iput-object v1, p0, Lcom/taplytics/im;->e:Ljava/lang/String;

    .line 43
    iput-boolean v0, p0, Lcom/taplytics/im;->a:Z

    .line 44
    iput-boolean v0, p0, Lcom/taplytics/im;->b:Z

    .line 46
    iput-boolean v0, p0, Lcom/taplytics/im;->g:Z

    .line 47
    iput v0, p0, Lcom/taplytics/im;->h:I

    .line 56
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    iput-object v0, p0, Lcom/taplytics/im;->i:Lcom/taplytics/c;

    .line 504
    iput-object v1, p0, Lcom/taplytics/im;->j:Landroid/app/AlertDialog;

    .line 62
    return-void
.end method

.method public static a()Lcom/taplytics/im;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/taplytics/im;->c:Lcom/taplytics/im;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/im;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/im;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/taplytics/jm;)V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->l()Lcom/taplytics/hn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/hn;->a()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "connecting socket"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->connected()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    sget-object v0, Lcom/taplytics/kb;->bison:Lcom/taplytics/kb;

    invoke-static {v0}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_4

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/taplytics/im;->c()V

    .line 78
    new-instance v0, Lio/socket/client/IO$Options;

    invoke-direct {v0}, Lio/socket/client/IO$Options;-><init>()V

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/socket/client/IO$Options;->forceNew:Z

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/socket/client/IO$Options;->reconnection:Z

    .line 81
    const-wide/16 v2, 0x1388

    iput-wide v2, v0, Lio/socket/client/IO$Options;->reconnectionDelay:J

    .line 82
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lio/socket/client/IO$Options;->timeout:J

    .line 83
    invoke-static {v1, v0}, Lio/socket/client/IO;->socket(Ljava/lang/String;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/taplytics/im;->b:Z

    .line 91
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    const-string v2, "connect"

    new-instance v3, Lcom/taplytics/ix;

    invoke-direct {v3, p0, p1}, Lcom/taplytics/ix;-><init>(Lcom/taplytics/im;Lcom/taplytics/jm;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "connectTestDevice"

    new-instance v3, Lcom/taplytics/iw;

    invoke-direct {v3, p0}, Lcom/taplytics/iw;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "foundTestDevice"

    new-instance v3, Lcom/taplytics/iv;

    invoke-direct {v3, p0}, Lcom/taplytics/iv;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "clientShowExperiment"

    new-instance v3, Lcom/taplytics/iu;

    invoke-direct {v3, p0}, Lcom/taplytics/iu;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "clientHideExperiment"

    new-instance v3, Lcom/taplytics/it;

    invoke-direct {v3, p0}, Lcom/taplytics/it;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "clientPickElement"

    new-instance v3, Lcom/taplytics/is;

    invoke-direct {v3, p0}, Lcom/taplytics/is;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "highlightTapElement"

    new-instance v3, Lcom/taplytics/ir;

    invoke-direct {v3, p0}, Lcom/taplytics/ir;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "experimentUpdated"

    new-instance v3, Lcom/taplytics/iq;

    invoke-direct {v3, p0}, Lcom/taplytics/iq;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "dataUpdated"

    new-instance v3, Lcom/taplytics/ip;

    invoke-direct {v3, p0}, Lcom/taplytics/ip;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "chooseView"

    new-instance v3, Lcom/taplytics/io;

    invoke-direct {v3, p0}, Lcom/taplytics/io;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "foundView"

    new-instance v3, Lcom/taplytics/jl;

    invoke-direct {v3, p0}, Lcom/taplytics/jl;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "pairTokenSuccessful"

    new-instance v3, Lcom/taplytics/ji;

    invoke-direct {v3, p0}, Lcom/taplytics/ji;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "pairTokenFailed"

    new-instance v3, Lcom/taplytics/jh;

    invoke-direct {v3, p0}, Lcom/taplytics/jh;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "disconnect"

    new-instance v3, Lcom/taplytics/jg;

    invoke-direct {v3, p0, p1}, Lcom/taplytics/jg;-><init>(Lcom/taplytics/im;Lcom/taplytics/jm;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "error"

    new-instance v3, Lcom/taplytics/jf;

    invoke-direct {v3, p0}, Lcom/taplytics/jf;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "reconnect_attempt"

    new-instance v3, Lcom/taplytics/je;

    invoke-direct {v3, p0}, Lcom/taplytics/je;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "reconnect_failed"

    new-instance v3, Lcom/taplytics/jd;

    invoke-direct {v3, p0}, Lcom/taplytics/jd;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "connect_error"

    new-instance v3, Lcom/taplytics/iy;

    invoke-direct {v3, p0}, Lcom/taplytics/iy;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v0

    const-string v2, "subscribeFinished"

    new-instance v3, Lcom/taplytics/in;

    invoke-direct {v3, p0}, Lcom/taplytics/in;-><init>(Lcom/taplytics/im;)V

    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 412
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect SocketIO with path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;

    .line 423
    :cond_3
    :goto_1
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v2, "Socket URI path error"

    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 419
    :catch_1
    move-exception v0

    .line 421
    const-string v1, "socketio problem"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 417
    :cond_4
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/taplytics/jm;->a(Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/taplytics/im;->g:Z

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    if-nez p1, :cond_2

    .line 600
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "Missing link to pair device"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taplytics/fy;->a(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v2

    .line 612
    :try_start_0
    iget-boolean v3, p0, Lcom/taplytics/im;->a:Z

    if-nez v3, :cond_3

    .line 613
    new-instance v0, Lcom/taplytics/ja;

    invoke-direct {v0, p0, p1}, Lcom/taplytics/ja;-><init>(Lcom/taplytics/im;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taplytics/im;->a(Lcom/taplytics/jm;)V

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    goto :goto_0

    .line 633
    :cond_3
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/taplytics/eo;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_5

    .line 636
    :try_start_1
    iget-object v3, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    .line 637
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    .line 638
    :cond_4
    iget-object v3, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    const-string v4, "projectToken"

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    iget-object v3, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    const-string v4, "projectConnectToken"

    const/4 v5, 0x0

    const-string v6, "://"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    iget-object v0, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    const-string v3, "deviceToken"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    iget-object v0, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    const-string v1, "session_id"

    invoke-virtual {v2}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    const-string v0, "pairDeviceWithToken"

    iget-object v1, p0, Lcom/taplytics/im;->f:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/taplytics/im;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/im;->g:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 645
    :catch_1
    move-exception v0

    .line 646
    :try_start_2
    const-string v1, "Sending pairing device socket"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 649
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/taplytics/jc;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/jc;-><init>(Lcom/taplytics/im;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    if-eqz v0, :cond_1

    .line 493
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Emit Socket Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 496
    :cond_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p2, v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_0
.end method

.method public b()Lcom/taplytics/c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/im;->i:Lcom/taplytics/c;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    invoke-virtual {v0}, Lio/socket/client/Socket;->disconnect()Lio/socket/client/Socket;

    .line 452
    iput-boolean v1, p0, Lcom/taplytics/im;->a:Z

    .line 453
    iput-boolean v1, p0, Lcom/taplytics/im;->b:Z

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/im;->d:Lio/socket/client/Socket;

    .line 456
    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 666
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    .line 667
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->b()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/taplytics/im;->a:Z

    if-eqz v1, :cond_3

    .line 669
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v1

    const-string v2, "tlHasAppLinking"

    invoke-virtual {v1, v2}, Lcom/taplytics/cc;->a(Ljava/lang/String;)V

    .line 671
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 672
    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Lcom/taplytics/en;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    const-string v2, "project_id"

    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/taplytics/en;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    :cond_0
    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    const-string v2, "appUser_id"

    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    :cond_1
    invoke-virtual {v0}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 677
    const-string v2, "session_id"

    invoke-virtual {v0}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    :cond_2
    const-string v0, "hasAppLinking"

    invoke-virtual {p0, v0, v1}, Lcom/taplytics/im;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_3
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    const-string v1, "Sending hasAppLinking Socket"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
