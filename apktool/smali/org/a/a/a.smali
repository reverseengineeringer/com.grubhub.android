.class public Lorg/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static b:Ljava/lang/Class;

.field private static final c:Ljava/lang/String;

.field private static f:Lorg/c/e;


# instance fields
.field protected a:Lorg/c/c;

.field private d:Ljava/lang/String;

.field private e:Lorg/c/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/a/a/a;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.a.a.a"

    invoke-static {v0}, Lorg/a/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/a;->b:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/a/a/a;->c:Ljava/lang/String;

    .line 48
    const-string v0, "FATAL"

    invoke-static {v0}, Lorg/c/f;->a(Ljava/lang/String;)Lorg/c/e;

    move-result-object v0

    sput-object v0, Lorg/a/a/a;->f:Lorg/c/e;

    return-void

    .line 41
    :cond_0
    sget-object v0, Lorg/a/a/a;->b:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/a/a/a;->d:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lorg/c/d;->a(Ljava/lang/String;)Lorg/c/c;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    .line 53
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    instance-of v0, v0, Lorg/c/c/a;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    check-cast v0, Lorg/c/c/a;

    iput-object v0, p0, Lorg/a/a/a;->e:Lorg/c/c/a;

    .line 56
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 202
    sget-object v2, Lorg/a/a/a;->c:Ljava/lang/String;

    const/16 v3, 0xa

    move-object v0, p0

    move-object v4, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/a/a/a;->a(Lorg/c/e;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 203
    return-void
.end method

.method a(Lorg/c/e;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0, p4}, Lorg/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 175
    iget-object v0, p0, Lorg/a/a/a;->e:Lorg/c/c/a;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/a/a/a;->e:Lorg/c/c/a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/c/c/a;->a(Lorg/c/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    :goto_0
    return-void

    .line 178
    :cond_0
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 180
    :sswitch_0
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    invoke-interface {v0, p1, v4}, Lorg/c/c;->a(Lorg/c/e;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :sswitch_1
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    invoke-interface {v0, p1, v4}, Lorg/c/c;->b(Lorg/c/e;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :sswitch_2
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    invoke-interface {v0, p1, v4}, Lorg/c/c;->c(Lorg/c/e;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :sswitch_3
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    invoke-interface {v0, p1, v4}, Lorg/c/c;->d(Lorg/c/e;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :sswitch_4
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    invoke-interface {v0, p1, v4}, Lorg/c/c;->e(Lorg/c/e;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/a/a/a;->a:Lorg/c/c;

    invoke-interface {v0}, Lorg/c/c;->a()Z

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    check-cast p1, Ljava/lang/String;

    .line 306
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
