.class Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/d;->g()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    .line 42
    :cond_1
    return-void
.end method
