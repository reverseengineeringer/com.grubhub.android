.class public abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Intent;


# instance fields
.field private b:Landroid/content/Intent;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

.field private d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field private e:Landroid/support/v4/content/o;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->a:Landroid/content/Intent;

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->b:Landroid/content/Intent;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    return-object v0
.end method

.method protected b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    return-object v0
.end method

.method public c()Landroid/support/v4/content/o;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->e:Landroid/support/v4/content/o;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/services/GHSBaseIntentService;->e:Landroid/support/v4/content/o;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    goto :goto_0
.end method
