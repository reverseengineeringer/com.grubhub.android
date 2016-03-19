.class Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$6;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V
    .locals 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 252
    const-string v0, "Class"

    const-string v1, "V1SharedPreferenceStore"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "Method"

    const-string v1, "saveReceiptsRestaurantData"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method
