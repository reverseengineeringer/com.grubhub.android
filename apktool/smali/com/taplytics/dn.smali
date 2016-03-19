.class Lcom/taplytics/dn;
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
.field final synthetic a:Lcom/taplytics/dg;


# direct methods
.method private constructor <init>(Lcom/taplytics/dg;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taplytics/dg;Lcom/taplytics/dh;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/taplytics/dn;-><init>(Lcom/taplytics/dg;)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->c(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->d(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    iget-object v0, v0, Lcom/taplytics/dg;->g:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_9

    .line 238
    :cond_0
    new-instance v3, Ldalvik/system/DexFile;

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 245
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 250
    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.flurry.sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    array-length v6, v0

    const/16 v7, 0x1e

    if-le v6, v7, :cond_1

    .line 251
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found flurry gy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 254
    :cond_2
    iget-object v6, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v6, v5}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;Ljava/lang/Class;)Ljava/lang/Class;

    .line 255
    iget-object v5, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    iput-object v0, v5, Lcom/taplytics/dg;->g:[Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 265
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    :try_start_5
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v5

    .line 271
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 276
    :goto_3
    if-eqz v3, :cond_6

    .line 277
    :try_start_7
    array-length v6, v3

    move v0, v2

    :goto_4
    if-ge v0, v6, :cond_6

    aget-object v7, v3, v0

    .line 278
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v8}, Lcom/taplytics/dg;->d(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_c

    .line 280
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found flurry fu: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0, v5}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;Ljava/lang/Class;)Ljava/lang/Class;

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->c(Lcom/taplytics/dg;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v0

    if-eqz v0, :cond_4

    .line 301
    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->c(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->c(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_5
    if-ge v0, v4, :cond_9

    aget-object v5, v3, v0

    .line 305
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v7}, Lcom/taplytics/dg;->c(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_d

    .line 306
    iget-object v6, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v6, v5}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 311
    :cond_8
    :goto_6
    iget-object v5, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v5}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v5}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 317
    :cond_9
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    iget-object v0, v0, Lcom/taplytics/dg;->g:[Ljava/lang/reflect/Field;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->c(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->d(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 320
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 321
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 322
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->a(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v3}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v4}, Lcom/taplytics/dg;->d(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 323
    if-eqz v3, :cond_e

    .line 324
    iget-object v0, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    iget-object v4, v0, Lcom/taplytics/dg;->g:[Ljava/lang/reflect/Field;

    array-length v5, v4

    :goto_7
    if-ge v2, v5, :cond_e

    aget-object v6, v4, v2

    .line 325
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v7, Ljava/util/Map;

    if-ne v0, v7, :cond_b

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v7, Lcom/taplytics/dp;

    if-eq v0, v7, :cond_b

    .line 327
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 328
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 329
    new-instance v7, Lcom/taplytics/dp;

    invoke-direct {v7}, Lcom/taplytics/dp;-><init>()V

    .line 330
    if-eqz v0, :cond_a

    .line 331
    invoke-virtual {v7, v0}, Lcom/taplytics/dp;->putAll(Ljava/util/Map;)V

    .line 333
    :cond_a
    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 246
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    .line 272
    :catch_1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_3

    .line 277
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 307
    :cond_d
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v7}, Lcom/taplytics/dg;->d(Lcom/taplytics/dg;)Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_8

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_8

    .line 309
    iget-object v6, p0, Lcom/taplytics/dn;->a:Lcom/taplytics/dg;

    invoke-static {v6, v5}, Lcom/taplytics/dg;->b(Lcom/taplytics/dg;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_6

    .line 340
    :catch_2
    move-exception v0

    .line 341
    const-string v2, "Flry problems"

    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_10

    check-cast v0, Ljava/lang/Exception;

    :goto_8
    invoke-static {v2, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 344
    :cond_e
    return-object v1

    .line 302
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_10
    move-object v0, v1

    .line 341
    goto :goto_8

    .line 293
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 259
    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taplytics/dn;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
