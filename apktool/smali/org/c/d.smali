.class public final Lorg/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I

.field static b:I

.field static c:Lorg/c/a/f;

.field private static final d:[Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    sput v2, Lorg/c/d;->a:I

    .line 73
    sput v2, Lorg/c/d;->b:I

    .line 74
    new-instance v0, Lorg/c/a/f;

    invoke-direct {v0}, Lorg/c/a/f;-><init>()V

    sput-object v0, Lorg/c/d;->c:Lorg/c/a/f;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.5.5"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "1.5.6"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.5.7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "1.5.8"

    aput-object v2, v0, v1

    sput-object v0, Lorg/c/d;->d:[Ljava/lang/String;

    .line 184
    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    sput-object v0, Lorg/c/d;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static a()Lorg/c/a;
    .locals 2

    .prologue
    .line 247
    sget v0, Lorg/c/d;->a:I

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    sput v0, Lorg/c/d;->a:I

    .line 249
    invoke-static {}, Lorg/c/d;->b()V

    .line 252
    :cond_0
    sget v0, Lorg/c/d;->a:I

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :pswitch_0
    invoke-static {}, Lorg/c/d;->g()Lorg/c/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/b/c;->b()Lorg/c/a;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 256
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_2
    sget-object v0, Lorg/c/d;->c:Lorg/c/a/f;

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lorg/c/c;
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lorg/c/d;->a()Lorg/c/a;

    move-result-object v0

    .line 223
    invoke-interface {v0, p0}, Lorg/c/a;->a(Ljava/lang/String;)Lorg/c/c;

    move-result-object v0

    return-object v0
.end method

.method private static final b()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lorg/c/d;->c()V

    .line 108
    invoke-static {}, Lorg/c/d;->e()V

    .line 109
    invoke-static {}, Lorg/c/d;->f()V

    .line 111
    return-void
.end method

.method private static final c()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 116
    :try_start_0
    invoke-static {}, Lorg/c/d;->g()Lorg/c/b/c;

    .line 117
    const/4 v0, 0x3

    sput v0, Lorg/c/d;->a:I

    .line 118
    invoke-static {}, Lorg/c/d;->d()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sput v1, Lorg/c/d;->a:I

    .line 121
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    const-string v2, "org/slf4j/impl/StaticLoggerBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 123
    const-string v1, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    invoke-static {v1}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 125
    const-string v1, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    invoke-static {v1}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 129
    :cond_0
    throw v0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    sput v1, Lorg/c/d;->a:I

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate logger ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/c/d;->g()Lorg/c/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/c/a/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final d()V
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lorg/c/d;->c:Lorg/c/a/f;

    invoke-virtual {v0}, Lorg/c/a/f;->a()Ljava/util/List;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 143
    :cond_1
    const-string v0, "The following loggers will not work becasue they were created"

    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 145
    const-string v0, "during the default configuration phase of the underlying logging system."

    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 147
    const-string v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 149
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static final e()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    :try_start_0
    sget-object v2, Lorg/c/b/c;->a:Ljava/lang/String;

    move v1, v0

    .line 159
    :goto_0
    sget-object v3, Lorg/c/d;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 160
    sget-object v3, Lorg/c/d;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    if-nez v0, :cond_2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The requested version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by your slf4j binding is not compatible with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/c/d;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 168
    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_2
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "Unexpected problem occured during version sanity check"

    invoke-static {v1, v0}, Lorg/c/a/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static f()V
    .locals 4

    .prologue
    .line 188
    :try_start_0
    const-class v0, Lorg/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lorg/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 193
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "Error getting resources from path"

    invoke-static {v1, v0}, Lorg/c/a/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_0
    :goto_1
    return-void

    .line 195
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 196
    const-string v0, "Class path contains multiple SLF4J bindings."

    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found binding in ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/c/a/g;->a(Ljava/lang/String;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 201
    :cond_2
    const-string v0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    invoke-static {v0}, Lorg/c/a/g;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static final g()Lorg/c/b/c;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lorg/c/b/c;->a()Lorg/c/b/c;

    move-result-object v0

    return-object v0
.end method
