.class Lcom/grubhub/AppBaseLibrary/android/utils/c/h$5;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->c(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;)V
    .locals 2

    .prologue
    .line 805
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$5;->a:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 806
    const-string v0, "futureorderflag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    return-void
.end method
