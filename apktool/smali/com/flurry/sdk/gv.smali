.class public Lcom/flurry/sdk/gv;
.super Lcom/flurry/sdk/in;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jf$a;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    .line 31
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/gv;->a:Ljava/lang/String;

    .line 32
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/gv;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gv;-><init>(Lcom/flurry/sdk/in$a;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/in$a;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "Analytics"

    const-class v1, Lcom/flurry/sdk/gv;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "AnalyticsData_"

    iput-object v0, p0, Lcom/flurry/sdk/gv;->f:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/flurry/sdk/gv;->h()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gv;->a(Lcom/flurry/sdk/in$a;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gv;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/flurry/sdk/gv;->e()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gv;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    if-eqz p1, :cond_0

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/gv;->h:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 52
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    .line 54
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/gv;->i:Z

    .line 55
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;Lcom/flurry/sdk/jf$a;)V

    .line 56
    sget-object v0, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, UseHttps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/gv;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "ReportUrl"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    const-string v2, "ReportUrl"

    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;Lcom/flurry/sdk/jf$a;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/flurry/sdk/gv;->b(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, ReportUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/je;->b(Ljava/lang/String;Lcom/flurry/sdk/jf$a;)Z

    .line 66
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    const-string v1, "ReportUrl"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/je;->b(Ljava/lang/String;Lcom/flurry/sdk/jf$a;)Z

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 71
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 82
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_1
    return-void

    .line 71
    :sswitch_0
    const-string v1, "UseHttps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ReportUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/gv;->i:Z

    .line 74
    sget-object v0, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, UseHttps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/gv;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .line 78
    invoke-direct {p0, p2}, Lcom/flurry/sdk/gv;->b(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :sswitch_data_0
    .sparse-switch
        -0xe48ec3c -> :sswitch_0
        0x62629b7b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/flurry/sdk/gv$2;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/gv$2;-><init>(Lcom/flurry/sdk/gv;I)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gv;->a(Lcom/flurry/sdk/jp;)V

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/in;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/flurry/sdk/gv;->b()Ljava/lang/String;

    move-result-object v0

    .line 119
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/gv;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlurryDataSender: start upload data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/flurry/sdk/ii;

    invoke-direct {v1}, Lcom/flurry/sdk/ii;-><init>()V

    .line 123
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;)V

    .line 124
    const v0, 0x186a0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ii;->a(I)V

    .line 125
    sget-object v0, Lcom/flurry/sdk/ij$a;->c:Lcom/flurry/sdk/ij$a;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ij$a;)V

    .line 126
    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/flurry/sdk/ir;

    invoke-direct {v0}, Lcom/flurry/sdk/ir;-><init>()V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/iv;)V

    .line 128
    invoke-virtual {v1, p1}, Lcom/flurry/sdk/ii;->a(Ljava/lang/Object;)V

    .line 129
    new-instance v0, Lcom/flurry/sdk/gv$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/gv$1;-><init>(Lcom/flurry/sdk/gv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii$a;)V

    .line 159
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/hl;->a(Ljava/lang/Object;Lcom/flurry/sdk/jq;)V

    .line 160
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/gv;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/gv;->h:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gv;->i:Z

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/flurry/sdk/gv;->b:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lcom/flurry/sdk/gv;->a:Ljava/lang/String;

    goto :goto_0
.end method
