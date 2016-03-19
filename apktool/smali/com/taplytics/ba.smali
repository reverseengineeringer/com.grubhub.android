.class Lcom/taplytics/ba;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/m;

.field final synthetic b:Lcom/taplytics/az;


# direct methods
.method constructor <init>(Lcom/taplytics/az;Lcom/taplytics/m;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taplytics/ba;->b:Lcom/taplytics/az;

    iput-object p2, p0, Lcom/taplytics/ba;->a:Lcom/taplytics/m;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 10

    .prologue
    .line 56
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/eo;->n()Lorg/json/JSONArray;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 58
    if-eqz v1, :cond_1

    .line 59
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 60
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ba;->a:Lcom/taplytics/m;

    const-string v1, "getGeofenceTransition"

    invoke-virtual {v0, v1}, Lcom/taplytics/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 67
    const-string v0, "com.google.android.gms.location.Geofence"

    const-string v3, "GEOFENCE_TRANSITION_ENTER"

    invoke-static {v0, v3}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 68
    const-string v0, "com.google.android.gms.location.Geofence"

    const-string v4, "GEOFENCE_TRANSITION_EXIT"

    invoke-static {v0, v4}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 69
    iget-object v0, p0, Lcom/taplytics/ba;->a:Lcom/taplytics/m;

    const-string v5, "getTriggeringGeofences"

    invoke-virtual {v0, v5}, Lcom/taplytics/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 71
    new-instance v6, Lcom/taplytics/m;

    invoke-direct {v6, v0}, Lcom/taplytics/m;-><init>(Ljava/lang/Object;)V

    const-string v0, "getRequestId"

    invoke-virtual {v6, v0}, Lcom/taplytics/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    if-ne v1, v3, :cond_3

    .line 76
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v6

    const-string v7, "tlGeofenceEnter"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 101
    :goto_2
    return-void

    .line 77
    :cond_3
    if-ne v1, v4, :cond_2

    .line 78
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v6

    const-string v7, "tlGeofenceExit"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/taplytics/cc;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_4
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    new-instance v1, Lcom/taplytics/bb;

    invoke-direct {v1, p0}, Lcom/taplytics/bb;-><init>(Lcom/taplytics/ba;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/cc;->a(Lcom/taplytics/eq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
