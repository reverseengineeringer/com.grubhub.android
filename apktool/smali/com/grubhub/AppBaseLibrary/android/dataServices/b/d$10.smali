.class Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$10;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V
    .locals 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$10;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 275
    const-string v0, "Class"

    const-string v1, "V2SharedPreferenceStore"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "Method"

    const-string v1, "saveReceiptsRestaurantData"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method
