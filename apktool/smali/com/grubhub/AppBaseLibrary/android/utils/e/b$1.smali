.class final Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(DDF)V
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
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:F


# direct methods
.method constructor <init>(DDF)V
    .locals 5

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->a:D

    iput-wide p3, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->b:D

    iput p5, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->c:F

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string v0, "Latitude"

    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "Longitude"

    iget-wide v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "Zoom"

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->c:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
