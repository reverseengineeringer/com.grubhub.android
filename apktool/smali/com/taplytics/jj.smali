.class Lcom/taplytics/jj;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lorg/json/JSONArray;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private final f:Lcom/taplytics/hz;

.field private g:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/io/File;Lcom/taplytics/hz;)V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taplytics/jj;->g:Ljava/lang/Exception;

    .line 312
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 313
    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/taplytics/jj;->a:Lorg/json/JSONObject;

    .line 319
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/taplytics/jj;->d:Ljava/lang/String;

    .line 320
    iput-object p3, p0, Lcom/taplytics/jj;->e:Ljava/io/File;

    .line 321
    iput-object p4, p0, Lcom/taplytics/jj;->f:Lcom/taplytics/hz;

    .line 322
    return-void

    .line 314
    :cond_1
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 315
    check-cast p1, Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/taplytics/jj;->b:Lorg/json/JSONArray;

    goto :goto_0

    .line 316
    :cond_2
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    .line 317
    iput-object p1, p0, Lcom/taplytics/jj;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/taplytics/jj;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/jj;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/jj;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/taplytics/jj;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taplytics/jj;->f:Lcom/taplytics/hz;

    if-nez v0, :cond_3

    .line 341
    :cond_1
    const-string v0, "Missing json, fileName, or listener to write JSON to disk"

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 366
    :cond_2
    :goto_0
    return-void

    .line 344
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taplytics/jj;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/taplytics/jj;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 350
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/taplytics/jj;->c:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/taplytics/jj;->c:Ljava/lang/Object;

    .line 356
    :goto_1
    invoke-interface {v1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 357
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    .line 358
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    const-string v0, "Wrote JSON to Disk"

    invoke-static {v0, v2}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const-string v2, "RW err"

    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Exception;

    :goto_2
    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 363
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    goto :goto_0

    .line 354
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/taplytics/jj;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taplytics/jj;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/taplytics/jj;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 362
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 327
    :try_start_0
    invoke-direct {p0}, Lcom/taplytics/jj;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    iput-object v0, p0, Lcom/taplytics/jj;->g:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/taplytics/jj;->f:Lcom/taplytics/hz;

    iget-object v1, p0, Lcom/taplytics/jj;->g:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/taplytics/hz;->a(Ljava/lang/Exception;)V

    .line 337
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taplytics/jj;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 302
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taplytics/jj;->a(Ljava/lang/Void;)V

    return-void
.end method
