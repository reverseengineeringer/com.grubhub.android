.class public Lcom/braintreepayments/api/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/braintreepayments/api/l;->a:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 84
    new-instance v2, Lcom/braintreepayments/api/models/j;

    invoke-direct {v2}, Lcom/braintreepayments/api/models/j;-><init>()V

    .line 85
    if-eqz p0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/braintreepayments/api/models/j;->c(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;

    .line 89
    :cond_0
    const-string v0, "com.paypal.android.sdk.loginConfirmation"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;

    .line 91
    if-eqz v0, :cond_1

    .line 94
    :try_start_0
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "response"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    const-string v1, "authorization_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/braintreepayments/api/models/j;->b(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;

    move-result-object v1

    const-string v3, "paypal-app"

    invoke-virtual {v1, v3}, Lcom/braintreepayments/api/models/j;->d(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;

    .line 104
    const-string v1, "email"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/braintreepayments/api/models/j;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;

    :goto_0
    move-object v0, v2

    .line 125
    :goto_1
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 98
    goto :goto_1

    .line 106
    :cond_1
    const-string v0, "com.paypal.android.sdk.authorization"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalAuthorization;

    .line 108
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalAuthorization;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/braintreepayments/api/models/j;->b(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;

    move-result-object v1

    const-string v3, "paypal-sdk"

    invoke-virtual {v1, v3}, Lcom/braintreepayments/api/models/j;->d(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;

    .line 111
    :try_start_1
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalAuthorization;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "display_string"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v2, v0}, Lcom/braintreepayments/api/models/j;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/j;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 122
    new-instance v0, Lcom/braintreepayments/api/exceptions/f;

    const-string v1, "Result extras were invalid"

    invoke-direct {v0, v1}, Lcom/braintreepayments/api/exceptions/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    .line 125
    goto :goto_1
.end method

.method protected static a(Lcom/braintreepayments/api/models/k;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/k;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b(Landroid/net/Uri;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(Landroid/net/Uri;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/k;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "mock"

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    goto :goto_0
.end method

.method protected static a(Landroid/app/Activity;ILcom/braintreepayments/api/models/k;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lcom/braintreepayments/api/models/k;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/braintreepayments/api/l;->a:Z

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/t;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/braintreepayments/api/models/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/braintreepayments/api/models/k;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/paypal/android/sdk/payments/PayPalTouchActivity;

    .line 53
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    if-eqz p3, :cond_0

    .line 59
    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.paypal.android.sdk.requested_scopes"

    new-instance v3, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-direct {v3, v1}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;-><init>(Ljava/util/Set;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-static {p2}, Lcom/braintreepayments/api/l;->a(Lcom/braintreepayments/api/models/k;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void

    .line 50
    :cond_1
    const-class v0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 69
    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/braintreepayments/api/models/k;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/braintreepayments/api/l;->a(Landroid/content/Context;)V

    .line 39
    invoke-static {p0, p1}, Lcom/braintreepayments/api/l;->b(Landroid/content/Context;Lcom/braintreepayments/api/models/k;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 138
    const-string v0, "com.paypal.android.sdk.loginConfirmation"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.paypal.android.sdk.authorization"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/content/Context;Lcom/braintreepayments/api/models/k;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-static {p1}, Lcom/braintreepayments/api/l;->a(Lcom/braintreepayments/api/models/k;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    const-string v1, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    sget-boolean v2, Lcom/braintreepayments/api/l;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1}, Lcom/braintreepayments/api/models/k;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "com.paypal.android.sdk.enableStageSsl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    :cond_0
    return-object v0
.end method
