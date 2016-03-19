.class public Lcom/taplytics/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Z

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "user_id"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "email"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "name"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "gender"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "age"

    const-string v2, "Number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "firstName"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "lastName"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "avatarUrl"

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/taplytics/cl;->c:Ljava/util/Map;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/taplytics/cl;->b:Z

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/cl;->d:Ljava/lang/Boolean;

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/cl;->e:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/taplytics/cl;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taplytics/cl;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/cl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/taplytics/cl;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/cl;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic a(Lcom/taplytics/cl;Lcom/taplytics/eq;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/taplytics/cl;->b(Lcom/taplytics/eq;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    const-string v2, "customData"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static synthetic a(Lcom/taplytics/cl;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/taplytics/cl;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/taplytics/cl;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taplytics/cl;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lcom/taplytics/cl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/taplytics/cl;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No type or value to clean attribute value"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    const-string v0, "String"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 167
    :cond_2
    :goto_0
    return-object p2

    .line 162
    :cond_3
    const-string v0, "Number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_2

    .line 164
    :cond_4
    const-string v0, "JSONObject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 167
    :cond_5
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private b(Lcom/taplytics/eq;)V
    .locals 6

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Lcom/taplytics/eq;->a()V

    .line 142
    :cond_0
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/taplytics/cs;->b(Lorg/json/JSONObject;)V

    .line 143
    iget-boolean v0, p0, Lcom/taplytics/cl;->b:Z

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taplytics/cl;->b:Z

    .line 145
    invoke-static {}, Lcom/taplytics/iz;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/taplytics/cn;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/cn;-><init>(Lcom/taplytics/cl;Lcom/taplytics/eq;)V

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Lcom/taplytics/iz;->a(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    new-instance v1, Lcom/taplytics/cm;

    invoke-direct {v1, p0}, Lcom/taplytics/cm;-><init>(Lcom/taplytics/cl;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/cs;->a(Lcom/taplytics/hm;)V

    .line 136
    return-void
.end method

.method public a(Lcom/taplytics/eq;)V
    .locals 7

    .prologue
    .line 171
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p1}, Lcom/taplytics/eq;->a()V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :try_start_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 185
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v4

    .line 187
    invoke-virtual {v2}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 188
    const-string v5, "t"

    invoke-virtual {v2}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    :cond_3
    invoke-virtual {v0}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 190
    const-string v5, "sid"

    invoke-virtual {v0}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_4
    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 192
    const-string v5, "pid"

    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v0

    const-string v6, "_id"

    invoke-virtual {v0, v6}, Lcom/taplytics/en;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :cond_5
    const-string v0, "k"

    const-string v5, "a4cbf0842807b43a0000"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "au"

    iget-object v5, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    if-eqz v4, :cond_6

    const-string v0, "_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    :try_start_2
    const-string v0, "auid"

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    :cond_6
    :goto_1
    :try_start_3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {v2}, Lcom/taplytics/fy;->l()Lcom/taplytics/hn;

    move-result-object v0

    new-instance v2, Lcom/taplytics/co;

    invoke-direct {v2, p0, p1, v1}, Lcom/taplytics/co;-><init>(Lcom/taplytics/cl;Lcom/taplytics/eq;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3, v2}, Lcom/taplytics/hn;->b(Lorg/json/JSONObject;Lcom/taplytics/ik;)V

    .line 246
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    .line 247
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cs;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    :try_start_4
    const-string v2, "Flushing App User Attributes"

    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 253
    iput-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    .line 254
    invoke-direct {p0, p1}, Lcom/taplytics/cl;->b(Lcom/taplytics/eq;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    const-string v1, "Copying app user attributes"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/taplytics/cl;->b(Lcom/taplytics/eq;)V

    goto/16 :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    :try_start_5
    const-string v4, "Getting appUser_id"

    invoke-static {v4, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 248
    :cond_8
    if-nez v0, :cond_1

    .line 249
    invoke-direct {p0, p1}, Lcom/taplytics/cl;->b(Lcom/taplytics/eq;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method

.method public a(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V
    .locals 6

    .prologue
    .line 263
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "Reseting app user"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 267
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_5

    .line 270
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 271
    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v3

    .line 273
    invoke-virtual {v1}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 274
    const-string v4, "t"

    invoke-virtual {v1}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    :cond_1
    invoke-virtual {v0}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 276
    const-string v4, "sid"

    invoke-virtual {v0}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    :try_start_1
    const-string v0, "auid"

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->m()Lcom/taplytics/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/el;->d()Ljava/util/Map;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_4

    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 287
    const-string v3, "ad"

    const-string v4, "id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    :cond_4
    invoke-virtual {v1}, Lcom/taplytics/fy;->l()Lcom/taplytics/hn;

    move-result-object v0

    new-instance v3, Lcom/taplytics/cq;

    invoke-direct {v3, p0, p1, v1}, Lcom/taplytics/cq;-><init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsResetUserListener;Lcom/taplytics/fy;)V

    invoke-virtual {v0, v2, v3}, Lcom/taplytics/hn;->c(Lorg/json/JSONObject;Lcom/taplytics/ik;)V

    .line 327
    :cond_5
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v3, "Getting appUser_id"

    invoke-static {v3, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    const-string v1, "Resetting App User Attributes"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 323
    if-eqz p1, :cond_5

    .line 324
    invoke-interface {p1}, Lcom/taplytics/sdk/TaplyticsResetUserListener;->finishedResettingUser()V

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    .line 58
    :cond_2
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 61
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    sget-object v1, Lcom/taplytics/cl;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 65
    sget-object v1, Lcom/taplytics/cl;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/taplytics/cl;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    iget-object v4, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    :cond_3
    const/4 v0, 0x1

    :goto_2
    move v2, v0

    .line 73
    goto :goto_1

    .line 72
    :cond_4
    invoke-static {}, Lcom/taplytics/ck;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", must be of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/taplytics/cl;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    goto :goto_2

    .line 73
    :cond_6
    const-string v1, "customData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 74
    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    const-string v4, "customData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 78
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    const-string v1, "Cleaning AppUser JSON Attribute"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Issue when updating user attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    const-string v4, "customData"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 84
    :cond_8
    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 87
    :cond_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taplytics/cl;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 94
    :cond_a
    :try_start_4
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update App User Attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 99
    :cond_b
    if-eqz v2, :cond_c

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taplytics/cl;->a(Lcom/taplytics/eq;)V

    goto/16 :goto_0

    .line 102
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taplytics/cl;->b(Lcom/taplytics/eq;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public a(ZLcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;)V
    .locals 2

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/taplytics/cl;->a:Lorg/json/JSONObject;

    const-string v1, "push_enabled"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 388
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/taplytics/cl;->a(Lcom/taplytics/eq;)V

    .line 402
    :goto_1
    return-void

    .line 388
    :cond_1
    new-instance v0, Lcom/taplytics/cw;

    invoke-direct {v0, p0, p2}, Lcom/taplytics/cw;-><init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/cl;->d:Ljava/lang/Boolean;

    .line 332
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/cl;->e:Ljava/lang/Boolean;

    .line 333
    new-instance v0, Lcom/taplytics/ct;

    invoke-direct {v0, p0, p1}, Lcom/taplytics/ct;-><init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsResetUserListener;)V

    invoke-virtual {p0, v0}, Lcom/taplytics/cl;->a(Lcom/taplytics/eq;)V

    .line 347
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    new-instance v1, Lcom/taplytics/cu;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/cu;-><init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsResetUserListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/cc;->a(Lcom/taplytics/eq;)V

    .line 373
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    .line 364
    new-instance v1, Lcom/taplytics/cv;

    invoke-direct {v1, p0, p1}, Lcom/taplytics/cv;-><init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsResetUserListener;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 371
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    goto :goto_0
.end method
