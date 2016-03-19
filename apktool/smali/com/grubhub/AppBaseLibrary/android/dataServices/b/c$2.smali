.class Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->Q()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$2;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
