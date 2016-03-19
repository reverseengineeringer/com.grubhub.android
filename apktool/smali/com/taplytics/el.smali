.class public Lcom/taplytics/el;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Integer;

.field private final f:Landroid/util/DisplayMetrics;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    .line 61
    :goto_0
    if-eqz v5, :cond_0

    .line 62
    :try_start_2
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :try_start_3
    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    move-object v1, v2

    :goto_1
    move-object v2, v3

    move-object v3, v4

    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/taplytics/el;->b()V

    .line 69
    iput-object v3, p0, Lcom/taplytics/el;->b:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/taplytics/el;->d:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/taplytics/el;->e:Ljava/lang/Integer;

    .line 72
    iput-object v2, p0, Lcom/taplytics/el;->c:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/taplytics/el;->f:Landroid/util/DisplayMetrics;

    .line 75
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/taplytics/el;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    return-void

    .line 65
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    .line 66
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System Context does not exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taplytics/ck;->b(Ljava/lang/String;)V

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 65
    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v3, v0

    move-object v2, v1

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    goto :goto_3

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v3, v1

    move-object v4, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v2

    .line 87
    const-string v3, "lv"

    invoke-virtual {v2}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v2}, Lcom/taplytics/fy;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "dev"

    const-string v3, "1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-virtual {v2}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "t"

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/taplytics/el;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "an"

    iget-object v3, p0, Lcom/taplytics/el;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/taplytics/el;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 95
    const-string v0, "av"

    iget-object v3, p0, Lcom/taplytics/el;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/taplytics/el;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 97
    const-string v0, "ab"

    iget-object v3, p0, Lcom/taplytics/el;->e:Ljava/lang/Integer;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/taplytics/el;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 99
    const-string v0, "ai"

    iget-object v3, p0, Lcom/taplytics/el;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_5
    const-string v0, "sdk"

    sget-object v3, Lcom/taplytics/fy;->a:Lcom/taplytics/ep;

    invoke-virtual {v3}, Lcom/taplytics/ep;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "os"

    const-string v3, "Android"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v3, "osv"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "ma"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "UNKNOWN"

    :goto_2
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v3, "br"

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "UNKNOWN"

    :goto_3
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "d"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, "UNKNOWN"

    :goto_4
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "alg"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "alg3"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "con"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "con3"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "sdpi"

    iget-object v3, p0, Lcom/taplytics/el;->f:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "sh"

    iget-object v3, p0, Lcom/taplytics/el;->f:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "sw"

    iget-object v3, p0, Lcom/taplytics/el;->f:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "tz"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "tzs"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "tzn"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Lcom/taplytics/el;->g()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    const-string v3, "ca"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/taplytics/el;->f()Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    const-string v3, "rd"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/taplytics/el;->d()Ljava/util/Map;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_8

    .line 125
    const-string v3, "ad"

    const-string v4, "id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "adt"

    const-string v4, "type"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_8
    const-string v0, "n"

    invoke-virtual {p0}, Lcom/taplytics/el;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v2}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_b

    .line 133
    invoke-virtual {v0}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v3

    .line 134
    invoke-virtual {v0}, Lcom/taplytics/eo;->j()Lorg/json/JSONObject;

    move-result-object v4

    .line 135
    invoke-virtual {v0}, Lcom/taplytics/eo;->b()Ljava/lang/String;

    move-result-object v5

    .line 136
    if-eqz v3, :cond_9

    const-string v0, "_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    :try_start_0
    const-string v0, "pid"

    const-string v6, "_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    const-string v0, "_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    :try_start_1
    const-string v0, "au"

    const-string v3, "_id"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    .line 151
    const-string v0, "sid"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_b
    invoke-virtual {v2}, Lcom/taplytics/fy;->B()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/taplytics/iz;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 156
    const-string v2, "dt"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_c
    return-object v1

    .line 87
    :cond_d
    const-string v0, "0"

    goto/16 :goto_0

    .line 103
    :cond_e
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 104
    :cond_f
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_2

    .line 105
    :cond_10
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto/16 :goto_3

    .line 106
    :cond_11
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_4

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v3, "Getting project_id"

    invoke-static {v3, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 146
    :catch_1
    move-exception v0

    .line 147
    const-string v3, "Getting appUser_id"

    invoke-static {v3, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/taplytics/el;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taplytics/iz;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 81
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/taplytics/iz;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/taplytics/el;->c()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v1, "ID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "TYPE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 178
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/taplytics/el;->c()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    goto :goto_0

    .line 182
    :cond_3
    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "type"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iput-object v2, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public c()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    .line 241
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Lcom/taplytics/iz;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 202
    const-string v0, "UUID"

    .line 205
    :goto_1
    if-nez v3, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/taplytics/el;->e()Ljava/lang/String;

    move-result-object v3

    .line 207
    const-string v0, "anBuildSerial"

    .line 208
    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    :goto_2
    if-nez v2, :cond_1

    .line 212
    iget-object v0, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v0, "anAndroidID"

    .line 216
    :cond_1
    if-eqz v2, :cond_3

    .line 217
    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v3, "type"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iput-object v1, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    .line 229
    :goto_3
    invoke-static {}, Lcom/taplytics/iz;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    if-eqz v3, :cond_2

    .line 231
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ID"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TYPE"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    move-object v0, v1

    .line 241
    goto :goto_0

    .line 223
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 224
    const-string v4, "id"

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v3, "type"

    const-string v4, "UUID"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iput-object v1, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v2, "Problem getting unique ID"

    invoke-static {v2, v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 239
    goto/16 :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v0, v2

    move-object v3, v2

    goto :goto_1
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/taplytics/el;->g:Ljava/util/HashMap;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/taplytics/el;->c()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 257
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 261
    .line 262
    iget-object v0, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 281
    :goto_0
    return-object v0

    .line 266
    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 269
    :pswitch_1
    const-string v0, "gsm"

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v0, "cdma"

    goto :goto_0

    .line 275
    :pswitch_3
    const-string v0, "sip"

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 293
    const-string v1, "UNKNOWN"

    .line 294
    iget-object v0, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Lcom/taplytics/iz;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/taplytics/el;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 296
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 299
    const-string v0, "WIFI"

    .line 306
    :goto_0
    return-object v0

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 301
    const-string v0, "WWAN"

    goto :goto_0

    .line 304
    :cond_1
    const-string v0, "Error No ACCESS_NETWORK_STATE permissions to get Network type"

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
