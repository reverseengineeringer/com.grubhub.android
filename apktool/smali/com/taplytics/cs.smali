.class public Lcom/taplytics/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/taplytics/cs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/taplytics/cs;

    invoke-direct {v0}, Lcom/taplytics/cs;-><init>()V

    sput-object v0, Lcom/taplytics/cs;->a:Lcom/taplytics/cs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Lcom/taplytics/cs;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/taplytics/cs;->a:Lcom/taplytics/cs;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/taplytics/gi;)V
    .locals 3

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 162
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "No listener to read TLProperties from disk"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 169
    if-nez v0, :cond_2

    .line 170
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No App Context to write JSON to disk"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/taplytics/gi;->a(Lorg/json/JSONArray;Ljava/lang/Exception;)V

    goto :goto_0

    .line 174
    :cond_2
    const-string v0, "TLEvents.json"

    const-string v1, "JSONArray"

    new-instance v2, Lcom/taplytics/ek;

    invoke-direct {v2, p0, p1}, Lcom/taplytics/ek;-><init>(Lcom/taplytics/cs;Lcom/taplytics/gi;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taplytics/cs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/taplytics/hj;)V

    goto :goto_0
.end method

.method public a(Lcom/taplytics/gr;)V
    .locals 3

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 80
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "No listener to read TLProperties from disk"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No App Context to write JSON to disk"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/taplytics/gr;->a(Lcom/taplytics/eo;Ljava/lang/Exception;)V

    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "TLProperties.json"

    const-string v1, "JSONObject"

    new-instance v2, Lcom/taplytics/dv;

    invoke-direct {v2, p0, p1}, Lcom/taplytics/dv;-><init>(Lcom/taplytics/cs;Lcom/taplytics/gr;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taplytics/cs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/taplytics/hj;)V

    goto :goto_0
.end method

.method public a(Lcom/taplytics/hm;)V
    .locals 3

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 214
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "No listener to read App User Attributes from disk"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 220
    if-nez v0, :cond_2

    .line 221
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "No App Context to read App User Attributes from Disk!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/taplytics/hm;->a(Lorg/json/JSONObject;Ljava/lang/Exception;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v0, "TLUserAttributes.json"

    const-string v1, "JSONObject"

    new-instance v2, Lcom/taplytics/ey;

    invoke-direct {v2, p0, p1}, Lcom/taplytics/ey;-><init>(Lcom/taplytics/cs;Lcom/taplytics/hm;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taplytics/cs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/taplytics/hj;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/taplytics/ga;)V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 135
    if-nez v0, :cond_1

    .line 136
    if-eqz p2, :cond_0

    .line 137
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No App Context to write JSON to disk"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/taplytics/ga;->a(Ljava/lang/Exception;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const-string v0, "Deleted File"

    invoke-static {v0, v1}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 153
    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/taplytics/ga;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-string v0, "File does not exist to delete"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/taplytics/hj;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Missing fileName or listener to read from disk"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, "Reading item from disk: "

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 260
    invoke-interface {p3, v2, v0}, Lcom/taplytics/hj;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 299
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 265
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 266
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 273
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object v0, v2

    .line 284
    :goto_2
    :pswitch_0
    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/taplytics/hj;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 285
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read item from disk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 288
    :cond_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v1, "Reading file from disk: "

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 291
    invoke-interface {p3, v2, v0}, Lcom/taplytics/hj;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 273
    :sswitch_0
    :try_start_1
    const-string v5, "JSONObject"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "JSONArray"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "Serializable"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 275
    :pswitch_1
    new-instance v1, Lorg/json/JSONObject;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 276
    goto :goto_2

    .line 278
    :pswitch_2
    new-instance v1, Lorg/json/JSONArray;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 279
    goto :goto_2

    .line 294
    :cond_3
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    const-string v0, "File does not exist"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 297
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "File does not exist"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v0}, Lcom/taplytics/hj;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x3d1dad1f -> :sswitch_2
        0x65b96e51 -> :sswitch_1
        0x68732647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "Writing Properties to Disk: No App Context to write JSON to disk"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v1, Lcom/taplytics/jj;

    const-string v2, "TLProperties.json"

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/taplytics/db;

    invoke-direct {v3, p0}, Lcom/taplytics/db;-><init>(Lcom/taplytics/cs;)V

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/taplytics/jj;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Lcom/taplytics/hz;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/taplytics/jj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "Delete TLProperties File from disk"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 118
    :cond_0
    const-string v0, "TLProperties.json"

    new-instance v1, Lcom/taplytics/ei;

    invoke-direct {v1, p0}, Lcom/taplytics/ei;-><init>(Lcom/taplytics/cs;)V

    invoke-virtual {p0, v0, v1}, Lcom/taplytics/cs;->a(Ljava/lang/String;Lcom/taplytics/ga;)V

    .line 125
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 196
    if-nez v0, :cond_1

    .line 197
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Writing User Attributes to Disk: No App Context to write JSON to disk"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v1, Lcom/taplytics/jj;

    const-string v2, "TLUserAttributes.json"

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/taplytics/er;

    invoke-direct {v3, p0}, Lcom/taplytics/er;-><init>(Lcom/taplytics/cs;)V

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/taplytics/jj;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Lcom/taplytics/hz;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/taplytics/jj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "Delete App User Attributes From Disk"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 247
    :cond_0
    const-string v0, "TLUserAttributes.json"

    new-instance v1, Lcom/taplytics/fm;

    invoke-direct {v1, p0}, Lcom/taplytics/fm;-><init>(Lcom/taplytics/cs;)V

    invoke-virtual {p0, v0, v1}, Lcom/taplytics/cs;->a(Ljava/lang/String;Lcom/taplytics/ga;)V

    .line 254
    return-void
.end method
