.class Lcom/facebook/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[J

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private c:Z

.field private d:Z

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/facebook/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/m;->a:Ljava/lang/String;

    .line 44
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/a/m;->b:[J

    return-void

    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-direct {p0}, Lcom/facebook/a/m;->a()V

    .line 173
    return-void
.end method

.method private constructor <init>(JJJILjava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-direct {p0}, Lcom/facebook/a/m;->a()V

    .line 186
    iput-wide p1, p0, Lcom/facebook/a/m;->f:J

    .line 187
    iput-wide p3, p0, Lcom/facebook/a/m;->g:J

    .line 188
    iput-wide p5, p0, Lcom/facebook/a/m;->h:J

    .line 189
    iput p7, p0, Lcom/facebook/a/m;->i:I

    .line 190
    iput-object p8, p0, Lcom/facebook/a/m;->j:Ljava/lang/String;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(JJJILjava/lang/String;Lcom/facebook/a/m$1;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p8}, Lcom/facebook/a/m;-><init>(JJJILjava/lang/String;)V

    return-void
.end method

.method private static a(J)I
    .locals 4

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    :goto_0
    sget-object v1, Lcom/facebook/a/m;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/facebook/a/m;->b:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    return v0
.end method

.method private a()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/facebook/a/m;->d:Z

    .line 309
    iput-wide v2, p0, Lcom/facebook/a/m;->f:J

    .line 310
    iput-wide v2, p0, Lcom/facebook/a/m;->g:J

    .line 311
    iput v0, p0, Lcom/facebook/a/m;->i:I

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/a/m;->h:J

    .line 313
    return-void
.end method

.method private a(Lcom/facebook/a/a;J)V
    .locals 8

    .prologue
    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    const-string v1, "fb_mobile_app_interruptions"

    iget v2, p0, Lcom/facebook/a/m;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string v1, "fb_mobile_time_between_sessions"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "session_quanta_%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 283
    invoke-static {p2, p3}, Lcom/facebook/a/m;->a(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 280
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "fb_mobile_launch_source"

    iget-object v2, p0, Lcom/facebook/a/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "fb_mobile_deactivate_app"

    iget-wide v2, p0, Lcom/facebook/a/m;->h:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/facebook/a/a;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 291
    invoke-direct {p0}, Lcom/facebook/a/m;->a()V

    .line 292
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/facebook/a/m;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 322
    iget-boolean v0, p0, Lcom/facebook/a/m;->c:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 323
    :goto_0
    iput-boolean v1, p0, Lcom/facebook/a/m;->c:Z

    .line 324
    return v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 194
    new-instance v1, Lcom/facebook/a/n;

    iget-wide v2, p0, Lcom/facebook/a/m;->f:J

    iget-wide v4, p0, Lcom/facebook/a/m;->g:J

    iget-wide v6, p0, Lcom/facebook/a/m;->h:J

    iget v8, p0, Lcom/facebook/a/m;->i:I

    iget-object v9, p0, Lcom/facebook/a/m;->j:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/facebook/a/n;-><init>(JJJILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method a(Lcom/facebook/a/a;JLjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 221
    .line 227
    invoke-direct {p0}, Lcom/facebook/a/m;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/facebook/a/m;->e:J

    sub-long v2, p2, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 229
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 230
    const-string v3, "fb_mobile_launch_source"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v3, "fb_mobile_activate_app"

    invoke-virtual {p1, v3, v2}, Lcom/facebook/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 234
    iput-wide p2, p0, Lcom/facebook/a/m;->e:J

    .line 239
    :cond_1
    iget-boolean v2, p0, Lcom/facebook/a/m;->d:Z

    if-eqz v2, :cond_2

    .line 240
    sget-object v0, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    sget-object v1, Lcom/facebook/a/m;->a:Ljava/lang/String;

    const-string v2, "Resume for active app"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 244
    :cond_2
    invoke-direct {p0}, Lcom/facebook/a/m;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/facebook/a/m;->g:J

    sub-long v2, p2, v2

    .line 245
    :goto_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_7

    .line 246
    sget-object v2, Lcom/facebook/ad;->APP_EVENTS:Lcom/facebook/ad;

    sget-object v3, Lcom/facebook/a/m;->a:Ljava/lang/String;

    const-string v4, "Clock skew detected"

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/ab;->a(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_2
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 253
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/a/m;->a(Lcom/facebook/a/a;J)V

    .line 263
    :cond_3
    :goto_3
    iget v0, p0, Lcom/facebook/a/m;->i:I

    if-nez v0, :cond_4

    .line 264
    iput-object p4, p0, Lcom/facebook/a/m;->j:Ljava/lang/String;

    .line 267
    :cond_4
    iput-wide p2, p0, Lcom/facebook/a/m;->f:J

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/a/m;->d:Z

    goto :goto_0

    :cond_5
    move-wide v2, v0

    .line 244
    goto :goto_1

    .line 257
    :cond_6
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 258
    iget v0, p0, Lcom/facebook/a/m;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/a/m;->i:I

    goto :goto_3

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method
