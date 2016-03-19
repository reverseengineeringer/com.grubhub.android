.class final Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 765
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 766
    const-string v0, "PreferencesKey"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v0, "ObjectClassCanonicalName"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v0, "ExceptionMsg"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->c:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    return-void
.end method
