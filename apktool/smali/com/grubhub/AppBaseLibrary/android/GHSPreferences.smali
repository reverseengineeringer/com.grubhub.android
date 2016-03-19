.class public Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# static fields
.field private static b:Landroid/preference/Preference;

.field private static c:Landroid/preference/Preference;

.field private static d:Landroid/preference/Preference;

.field private static e:Landroid/preference/Preference;

.field private static f:Landroid/preference/Preference;

.field private static g:Landroid/preference/Preference;

.field private static h:Landroid/preference/Preference;

.field private static i:Landroid/preference/Preference;

.field private static k:Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field a:Landroid/view/GestureDetector$OnGestureListener;

.field private j:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$2;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$2;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->k:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 337
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a:Landroid/view/GestureDetector$OnGestureListener;

    .line 60
    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/k;
    .locals 5

    .prologue
    .line 173
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/k;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/k;-><init>()V

    .line 175
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    const-string v2, "api_selection_switch"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/k;->a(Lcom/grubhub/AppBaseLibrary/android/k;Z)Z

    .line 177
    const-string v2, "use_ssl_switch"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/k;->b(Lcom/grubhub/AppBaseLibrary/android/k;Z)Z

    .line 180
    const-string v2, "pref_api_key_selected"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    const v4, 0x7f08012e

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/k;->a(Lcom/grubhub/AppBaseLibrary/android/k;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    const-string v2, "pref_new_api_selected"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    const v4, 0x7f08012f

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/k;->b(Lcom/grubhub/AppBaseLibrary/android/k;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    const-string v2, "pref_old_api_selected"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    const v4, 0x7f080132

    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/k;->c(Lcom/grubhub/AppBaseLibrary/android/k;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    return-object v0
.end method

.method private static a(Landroid/preference/Preference;)V
    .locals 4

    .prologue
    .line 314
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->k:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 318
    instance-of v0, p0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->k:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 321
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 320
    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 330
    :goto_0
    return-void

    .line 324
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->k:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 325
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 328
    const-string v0, "SharedPrefs "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    const-string v1, "com.grubhub.seamless.android_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 226
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->addPreferencesFromResource(I)V

    .line 231
    const-string v0, "api_selection_switch"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b:Landroid/preference/Preference;

    .line 232
    const-string v0, "use_ssl_switch"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->f:Landroid/preference/Preference;

    .line 233
    const-string v0, "pref_old_api_selected"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->c:Landroid/preference/Preference;

    .line 234
    const-string v0, "pref_new_api_selected"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->d:Landroid/preference/Preference;

    .line 235
    const-string v0, "pref_api_key_selected"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->e:Landroid/preference/Preference;

    .line 236
    const-string v0, "feature_nearby"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->g:Landroid/preference/Preference;

    .line 237
    const-string v0, "feature_future_orders"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->h:Landroid/preference/Preference;

    .line 238
    const-string v0, "feature_urban_airship"

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->i:Landroid/preference/Preference;

    .line 240
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->c:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 241
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->d:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 242
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->e:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 243
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 244
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->f:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 245
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->g:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 246
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->h:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 247
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->i:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a(Landroid/preference/Preference;)V

    .line 248
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 399
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    return-void
.end method

.method private e()V
    .locals 9

    .prologue
    const v8, 0x7f0c0012

    .line 410
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 413
    const-string v1, "session_timeout_minutes"

    .line 415
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 417
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 416
    invoke-interface {v2, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(J)V

    .line 420
    const-string v1, "cart_search_data_lifetime_minutes"

    .line 422
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 424
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 423
    invoke-interface {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->e(J)V

    .line 425
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 431
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 435
    const-string v2, "feature_nearby"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Z)V

    .line 438
    const-string v2, "feature_future_orders"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 439
    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d(Z)V

    .line 440
    if-nez v2, :cond_0

    .line 443
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v2

    .line 444
    if-eqz v2, :cond_0

    .line 445
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setSubOrderType(Lcom/grubhub/AppBaseLibrary/android/order/l;)V

    .line 446
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setWhenFor(J)V

    .line 447
    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 452
    :cond_0
    const-string v2, "feature_urban_airship"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 453
    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Z)V

    .line 455
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a(Z)V

    .line 456
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->e()V

    .line 388
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->f()V

    .line 390
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-direct {v0, p0, v1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a()V

    .line 391
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 392
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->d()V

    .line 69
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 70
    const-string v1, "com.grubhub.seamless.android_preferences"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->c()V

    .line 73
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->a:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->j:Landroid/view/GestureDetector;

    .line 74
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f040020

    const v1, 0x7f040028

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->overridePendingTransition(II)V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
