.class Lcom/taplytics/fw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/ft;


# direct methods
.method private constructor <init>(Lcom/taplytics/ft;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/taplytics/fw;->a:Lcom/taplytics/ft;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taplytics/ft;Lcom/taplytics/fu;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/taplytics/fw;-><init>(Lcom/taplytics/ft;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 93
    :cond_0
    const/4 v2, 0x0

    .line 161
    :goto_0
    return-object v2

    .line 95
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 96
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 98
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->p()Landroid/content/Context;

    move-result-object v5

    .line 102
    if-eqz v2, :cond_4

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/taplytics/kb;->butterfly:Lcom/taplytics/kb;

    invoke-static {v3}, Lcom/taplytics/iz;->a(Lcom/taplytics/kb;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 108
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taplytics/eo;->o()Lorg/json/JSONArray;

    move-result-object v4

    .line 109
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 110
    if-eqz v4, :cond_2

    .line 111
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 112
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :cond_2
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v7, :cond_3

    .line 118
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 119
    new-instance v10, Lcom/taplytics/m;

    const-string v3, "com.google.android.gms.location.Geofence$Builder"

    invoke-direct {v10, v3}, Lcom/taplytics/m;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v3, "setCircularRegion"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "latitude"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "longitude"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "radius"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v3, v11, v12}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "setRequestId"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "_id"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v3, v11, v12}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v3, "setExpirationDuration"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "com.google.android.gms.location.Geofence"

    const-string v15, "NEVER_EXPIRE"

    invoke-static {v14, v15}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v3, v11, v12}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v11, "setTransitionTypes"

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v3

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v3, "com.google.android.gms.location.Geofence"

    const-string v15, "GEOFENCE_TRANSITION_ENTER"

    invoke-static {v3, v15}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v3, "com.google.android.gms.location.Geofence"

    const-string v16, "GEOFENCE_TRANSITION_EXIT"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v3, "build"

    invoke-virtual {v10, v3}, Lcom/taplytics/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v3, "_id"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_2

    .line 131
    :cond_3
    new-instance v2, Lcom/taplytics/m;

    const-string v3, "com.google.android.gms.location.GeofencingRequest$Builder"

    invoke-direct {v2, v3}, Lcom/taplytics/m;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v3, "setInitialTrigger"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.google.android.gms.location.GeofencingRequest"

    const-string v11, "INITIAL_TRIGGER_ENTER"

    invoke-static {v10, v11}, Lcom/taplytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-virtual {v2, v3, v4, v7}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "addGeofences"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v9, Ljava/util/List;

    aput-object v9, v4, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v7, v9

    invoke-virtual {v2, v3, v4, v7}, Lcom/taplytics/m;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taplytics/fw;->a:Lcom/taplytics/ft;

    invoke-static {v3, v5}, Lcom/taplytics/ft;->a(Lcom/taplytics/ft;Landroid/content/Context;)Lcom/taplytics/m;

    move-result-object v3

    .line 141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taplytics/fw;->a:Lcom/taplytics/ft;

    const-string v5, "build"

    invoke-virtual {v2, v5}, Lcom/taplytics/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/taplytics/ft;->a(Lcom/taplytics/ft;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taplytics/fw;->a:Lcom/taplytics/ft;

    invoke-static {v2, v8}, Lcom/taplytics/ft;->a(Lcom/taplytics/ft;Ljava/util/List;)Ljava/util/List;

    .line 143
    const-string v2, "connect"

    invoke-virtual {v3, v2}, Lcom/taplytics/m;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "while adding geofences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taplytics/fw;->a:Lcom/taplytics/ft;

    invoke-static {v2}, Lcom/taplytics/ft;->a(Lcom/taplytics/ft;)Lcom/taplytics/es;

    move-result-object v2

    invoke-interface {v2}, Lcom/taplytics/es;->b()V

    .line 157
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taplytics/fw;->a:Lcom/taplytics/ft;

    invoke-static {v2}, Lcom/taplytics/ft;->a(Lcom/taplytics/ft;)Lcom/taplytics/es;

    move-result-object v2

    invoke-interface {v2}, Lcom/taplytics/es;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 161
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 149
    :catch_1
    move-exception v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while adding geofences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taplytics/fw;->a:Lcom/taplytics/ft;

    invoke-static {v2}, Lcom/taplytics/ft;->a(Lcom/taplytics/ft;)Lcom/taplytics/es;

    move-result-object v2

    invoke-interface {v2}, Lcom/taplytics/es;->b()V

    goto :goto_3

    .line 154
    :cond_4
    const-string v2, "The ACCESS_FINE_LOCATION permission is not granted, locations cannot be set or Google play services location is not provided"

    invoke-static {v2}, Lcom/taplytics/ck;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 158
    :catch_2
    move-exception v2

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "while fulfilling geofence promise"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/taplytics/fw;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
