.class public Lorg/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Lorg/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 28
    sput v1, Lorg/b/a/a;->a:I

    .line 29
    sput v1, Lorg/b/a/a;->b:I

    .line 30
    const/4 v0, 0x7

    sput v0, Lorg/b/a/a;->c:I

    .line 31
    sput v1, Lorg/b/a/a;->d:I

    .line 39
    new-instance v0, Lorg/b/a/c;

    invoke-direct {v0}, Lorg/b/a/c;-><init>()V

    sput-object v0, Lorg/b/a/a;->k:Lorg/b/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 86
    sput p0, Lorg/b/a/a;->a:I

    .line 87
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    sget-boolean v0, Lorg/b/a/a;->f:Z

    if-eqz v0, :cond_2

    .line 343
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-boolean v0, Lorg/b/a/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 347
    :goto_1
    invoke-static {p0}, Lorg/b/a/b;->a(Landroid/content/Context;)Lorg/b/a/b;

    move-result-object v1

    .line 348
    sget v2, Lorg/b/a/f;->dialog_title:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 350
    sget v1, Lorg/b/a/f;->rate_message:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 352
    sget v1, Lorg/b/a/f;->rate:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/b/a/a$1;

    invoke-direct {v2, p0, p1}, Lorg/b/a/a$1;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    sget v1, Lorg/b/a/f;->later:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/b/a/a$2;

    invoke-direct {v2, p1}, Lorg/b/a/a$2;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    sget-boolean v1, Lorg/b/a/a;->g:Z

    if-nez v1, :cond_0

    .line 380
    sget v1, Lorg/b/a/f;->no_thanks:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/b/a/a$3;

    invoke-direct {v2, p1}, Lorg/b/a/a$3;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 398
    sput-boolean v5, Lorg/b/a/a;->j:Z

    .line 399
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 345
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static synthetic a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0}, Lorg/b/a/a;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static a(Lorg/b/a/d;)V
    .locals 0

    .prologue
    .line 306
    sput-object p0, Lorg/b/a/a;->k:Lorg/b/a/d;

    .line 307
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 47
    sput-boolean p0, Lorg/b/a/a;->h:Z

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 132
    sget v0, Lorg/b/a/a;->a:I

    invoke-static {p0, v0}, Lorg/b/a/a;->a(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 152
    const-string v1, "apprater"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 154
    invoke-static {p0}, Lorg/b/a/b;->a(Landroid/content/Context;)Lorg/b/a/b;

    move-result-object v3

    .line 156
    sget-boolean v4, Lorg/b/a/a;->h:Z

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v3}, Lorg/b/a/b;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version_name"

    const-string v6, "none"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    const-string v4, "app_version_name"

    invoke-virtual {v3}, Lorg/b/a/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-static {p0}, Lorg/b/a/a;->c(Landroid/content/Context;)V

    .line 160
    invoke-static {v2}, Lorg/b/a/a;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 163
    :cond_0
    sget-boolean v4, Lorg/b/a/a;->i:Z

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {v3}, Lorg/b/a/b;->b()I

    move-result v4

    const-string v5, "app_version_code"

    const/4 v6, -0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 165
    const-string v4, "app_version_code"

    invoke-virtual {v3}, Lorg/b/a/b;->b()I

    move-result v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-static {p0}, Lorg/b/a/a;->c(Landroid/content/Context;)V

    .line 167
    invoke-static {v2}, Lorg/b/a/a;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 170
    :cond_1
    const-string v3, "dontshowagain"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    :goto_0
    return v0

    .line 172
    :cond_2
    const-string v3, "remindmelater"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    sget p1, Lorg/b/a/a;->d:I

    .line 179
    :cond_3
    const-string v3, "order_count"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 180
    const-string v1, "order_count"

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 183
    int-to-long v6, p1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    .line 184
    invoke-static {p0, v2}, Lorg/b/a/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_4
    invoke-static {v2}, Lorg/b/a/a;->b(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static b(I)V
    .locals 0

    .prologue
    .line 96
    sput p0, Lorg/b/a/a;->d:I

    .line 97
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 293
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lorg/b/a/a;->k:Lorg/b/a/d;

    invoke-interface {v2, p0}, Lorg/b/a/d;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const-class v0, Lorg/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market Intent not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 404
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 56
    sput-boolean p0, Lorg/b/a/a;->i:Z

    .line 57
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 411
    const-string v0, "apprater"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    const-string v1, "dontshowagain"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string v1, "remindmelater"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v1, "launch_count"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v1, "order_count"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 418
    const-string v1, "date_firstlaunch"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-static {v0}, Lorg/b/a/a;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 420
    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .prologue
    .line 15
    sput-boolean p0, Lorg/b/a/a;->j:Z

    return p0
.end method
