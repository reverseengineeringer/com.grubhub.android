.class Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$11;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V
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
    .line 299
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$11;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 301
    const-string v0, "Class"

    const-string v1, "V2SharedPreferenceStore"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "Method"

    const-string v1, "saveRestaurantList"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$11;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method
