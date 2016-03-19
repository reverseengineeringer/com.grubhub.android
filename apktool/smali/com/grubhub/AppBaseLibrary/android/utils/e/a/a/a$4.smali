.class Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/c/c/a;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V
    .locals 4

    .prologue
    .line 163
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;->b:Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;->a:Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string v0, "Session Id"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;->a:Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "Session Start Time Millis"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;->a:Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/c/c/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method
