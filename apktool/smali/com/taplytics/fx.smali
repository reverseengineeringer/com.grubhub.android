.class public Lcom/taplytics/fx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/taplytics/fx;


# instance fields
.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static a()Lcom/taplytics/fx;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/taplytics/fx;->a:Lcom/taplytics/fx;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/taplytics/fx;->a:Lcom/taplytics/fx;

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/taplytics/fx;

    invoke-direct {v0}, Lcom/taplytics/fx;-><init>()V

    sput-object v0, Lcom/taplytics/fx;->a:Lcom/taplytics/fx;

    .line 53
    sget-object v0, Lcom/taplytics/fx;->a:Lcom/taplytics/fx;

    goto :goto_0
.end method

.method private c(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/taplytics/kb;->alpaca:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/taplytics/kb;->alligator:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/taplytics/kb;->caribou:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/taplytics/kb;->anteater:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    sget-object v0, Lcom/taplytics/kb;->anteater:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/taplytics/kb;->antelope:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/taplytics/kb;->armadillo:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/taplytics/kb;->ape:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/taplytics/kb;->badger:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    sget-object v0, Lcom/taplytics/kb;->beaver:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/taplytics/kb;->bear:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/taplytics/kb;->bat:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/taplytics/kb;->bobcat:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/taplytics/kb;->boar:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/taplytics/kb;->bluejay:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    return-object p1
.end method

.method private d(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/taplytics/kb;->alpaca:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->alligator:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->albatross:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->caribou:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->anteater:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    sget-object v0, Lcom/taplytics/kb;->anteater:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->antelope:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->armadillo:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->ape:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->badger:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    sget-object v0, Lcom/taplytics/kb;->beaver:Lcom/taplytics/kb;

    invoke-virtual {v0}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->bear:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->bat:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->bobcat:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->boar:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v1, Lcom/taplytics/kb;->bluejay:Lcom/taplytics/kb;

    invoke-virtual {v1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/taplytics/eo;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 159
    if-eqz p1, :cond_4

    .line 160
    invoke-virtual {p1}, Lcom/taplytics/eo;->c()Lcom/taplytics/en;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_2

    .line 164
    :try_start_0
    const-string v0, "settings"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "disable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 165
    if-eqz v4, :cond_2

    move v2, v1

    .line 168
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 169
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v5, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 176
    :cond_1
    :try_start_1
    const-string v0, "com.google.android.gms.location.Geofence"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :goto_1
    :try_start_2
    const-string v0, "com.google.android.gms.gcm.GoogleCloudMessaging"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/taplytics/fx;->a(Ljava/util/HashSet;)V

    .line 195
    :cond_2
    if-eqz v3, :cond_4

    .line 196
    const-string v0, "settings"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "enable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_4

    .line 198
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 199
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 200
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 177
    :catch_0
    move-exception v0

    .line 178
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v2, Lcom/taplytics/kb;->butterfly:Lcom/taplytics/kb;

    invoke-virtual {v2}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 212
    :catch_1
    move-exception v0

    .line 213
    const-string v1, "error checking disabled sources"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 216
    :cond_4
    :goto_4
    return-void

    .line 184
    :catch_2
    move-exception v0

    .line 185
    :try_start_4
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    sget-object v2, Lcom/taplytics/kb;->buffalo:Lcom/taplytics/kb;

    invoke-virtual {v2}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 208
    :cond_5
    invoke-direct {p0, v3}, Lcom/taplytics/fx;->d(Ljava/util/HashSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4
.end method

.method public a(Lcom/taplytics/kb;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/taplytics/kb;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/taplytics/fx;->c(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    .line 63
    return-void
.end method

.method public b()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public b(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/taplytics/fx;->b:Ljava/util/HashSet;

    .line 72
    return-void
.end method
