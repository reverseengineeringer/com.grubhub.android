.class public Lcom/taplytics/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/taplytics/cy;


# instance fields
.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/Class;

.field private e:Landroid/os/Handler;

.field private f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taplytics/cy;->g:J

    return-void
.end method

.method static synthetic a(Lcom/taplytics/cy;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/taplytics/cy;->g:J

    return-wide p1
.end method

.method public static a()Lcom/taplytics/cy;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/taplytics/cy;->a:Lcom/taplytics/cy;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/taplytics/cy;

    invoke-direct {v0}, Lcom/taplytics/cy;-><init>()V

    sput-object v0, Lcom/taplytics/cy;->a:Lcom/taplytics/cy;

    .line 38
    :cond_0
    sget-object v0, Lcom/taplytics/cy;->a:Lcom/taplytics/cy;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taplytics/cy;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic a(Lcom/taplytics/cy;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/taplytics/cy;->c:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic b(Lcom/taplytics/cy;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taplytics/cy;->d:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c(Lcom/taplytics/cy;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taplytics/cy;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic d(Lcom/taplytics/cy;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/taplytics/cy;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/taplytics/cy;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taplytics/cy;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taplytics/cy;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amplitude.api."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/cy;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amplitude.api."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    new-instance v0, Lcom/taplytics/cz;

    invoke-direct {v0, p0}, Lcom/taplytics/cz;-><init>(Lcom/taplytics/cy;)V

    iput-object v0, p0, Lcom/taplytics/cy;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 109
    iget-object v0, p0, Lcom/taplytics/cy;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 113
    :try_start_0
    const-string v0, "com.amplitude.api.DatabaseHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/cy;->d:Ljava/lang/Class;

    .line 114
    iget-object v0, p0, Lcom/taplytics/cy;->d:Ljava/lang/Class;

    const-string v2, "getDatabaseHelper"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/cy;->b:Ljava/lang/reflect/Method;

    .line 116
    const-string v0, "com.amplitude.api.AmplitudeClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 118
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    const-string v3, "logThread"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 120
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "waitForInitialization"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "handler"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/taplytics/cy;->e:Landroid/os/Handler;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    iget-object v0, p0, Lcom/taplytics/cy;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method
