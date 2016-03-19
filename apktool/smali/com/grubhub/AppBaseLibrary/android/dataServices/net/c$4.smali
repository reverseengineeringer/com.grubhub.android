.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->b(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;ZZ)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

.field final synthetic f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;)V
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iput-boolean p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->a:Z

    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->b:Z

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->a:Z

    if-eqz v0, :cond_1

    .line 1352
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$4;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    invoke-static {v0, v1, v2, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 1358
    :cond_1
    return-void
.end method
