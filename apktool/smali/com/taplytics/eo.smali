.class public Lcom/taplytics/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/taplytics/en;

.field private e:Lcom/taplytics/en;

.field private f:Lcom/taplytics/en;

.field private g:Lcom/taplytics/en;

.field private h:Lorg/json/JSONObject;

.field private i:Lorg/json/JSONArray;

.field private j:Lorg/json/JSONArray;

.field private k:Lorg/json/JSONArray;

.field private l:Lorg/json/JSONObject;

.field private m:Lorg/json/JSONArray;

.field private n:Lorg/json/JSONObject;

.field private o:Lorg/json/JSONArray;

.field private p:Lorg/json/JSONArray;

.field private q:D

.field private r:Lorg/json/JSONObject;

.field private s:Lorg/json/JSONObject;

.field private t:Lorg/json/JSONObject;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/taplytics/eo;->q:D

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taplytics/eo;->u:Ljava/util/HashMap;

    .line 146
    if-eqz p1, :cond_11

    .line 147
    const-string v0, "projectInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 149
    new-instance v1, Lcom/taplytics/en;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/taplytics/en;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/taplytics/eo;->d:Lcom/taplytics/en;

    .line 151
    iget-object v0, p0, Lcom/taplytics/eo;->d:Lcom/taplytics/en;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/taplytics/en;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taplytics/eo;->b:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/taplytics/eo;->d:Lcom/taplytics/en;

    const-string v1, "deviceToken"

    invoke-virtual {v0, v1}, Lcom/taplytics/en;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 157
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taplytics/eo;->c:Ljava/lang/String;

    .line 161
    :cond_1
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 163
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taplytics/eo;->a:Ljava/lang/String;

    .line 165
    :cond_2
    const-string v0, "as"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 167
    new-instance v1, Lcom/taplytics/en;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/taplytics/en;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/taplytics/eo;->e:Lcom/taplytics/en;

    .line 170
    :cond_3
    const-string v0, "codeExp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_4

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 172
    new-instance v1, Lcom/taplytics/en;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/taplytics/en;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/taplytics/eo;->f:Lcom/taplytics/en;

    .line 174
    :cond_4
    const-string v0, "experiments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_5

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    .line 176
    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    .line 178
    :cond_5
    const-string v0, "exp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_6

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_6

    .line 180
    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/taplytics/eo;->j:Lorg/json/JSONArray;

    .line 182
    :cond_6
    const-string v0, "var"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_7

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_7

    .line 184
    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/taplytics/eo;->k:Lorg/json/JSONArray;

    .line 186
    :cond_7
    const-string v0, "dynamicVars"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_8

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    .line 188
    new-instance v1, Lcom/taplytics/en;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/taplytics/en;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/taplytics/eo;->g:Lcom/taplytics/en;

    .line 190
    :cond_8
    const-string v0, "au"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_9

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    .line 192
    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/taplytics/eo;->l:Lorg/json/JSONObject;

    .line 194
    :cond_9
    const-string v0, "views"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_a

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_a

    .line 196
    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/taplytics/eo;->m:Lorg/json/JSONArray;

    .line 198
    :cond_a
    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_b

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    .line 200
    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/taplytics/eo;->h:Lorg/json/JSONObject;

    .line 201
    new-instance v0, Lcom/taplytics/kg;

    invoke-direct {v0}, Lcom/taplytics/kg;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taplytics/eo;->h:Lorg/json/JSONObject;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taplytics/kg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    :cond_b
    const-string v0, "regions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_c

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_c

    .line 205
    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/taplytics/eo;->o:Lorg/json/JSONArray;

    .line 207
    :cond_c
    const-string v0, "eventDelay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_d

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_d

    .line 209
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/taplytics/eo;->q:D

    .line 211
    :cond_d
    const-string v0, "pas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_e

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_e

    .line 213
    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/taplytics/eo;->t:Lorg/json/JSONObject;

    .line 216
    :cond_e
    const-string v0, "clientControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_f

    .line 218
    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/taplytics/eo;->r:Lorg/json/JSONObject;

    .line 219
    iget-object v0, p0, Lcom/taplytics/eo;->r:Lorg/json/JSONObject;

    const-string v1, "disabledEvents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/taplytics/eo;->s:Lorg/json/JSONObject;

    .line 222
    :cond_f
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_11

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_11

    .line 225
    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/taplytics/eo;->n:Lorg/json/JSONObject;

    .line 226
    iget-object v0, p0, Lcom/taplytics/eo;->n:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    :cond_10
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/taplytics/eo;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/taplytics/eo;->n:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_10

    .line 231
    iget-object v1, p0, Lcom/taplytics/eo;->n:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 232
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    iget-object v3, p0, Lcom/taplytics/eo;->u:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_11
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/taplytics/eo;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 321
    .line 322
    const-string v0, "baseline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const-string v0, "baseline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    const-string v0, "variations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 327
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 328
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 329
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 333
    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/taplytics/eo;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/taplytics/eo;->p:Lorg/json/JSONArray;

    .line 126
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/taplytics/eo;->l:Lorg/json/JSONObject;

    .line 118
    return-void
.end method

.method public a(Z)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 250
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 253
    const-string v0, "distFilters"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "distFilters"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 254
    const-string v0, "distFilters"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v3, v2

    .line 255
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 256
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v8, "osType"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    const-string v1, "values"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "values"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 260
    const-string v1, "values"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v1, v2

    .line 262
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 263
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v9, "Android"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " ("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "status"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 265
    :cond_1
    const-string v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 255
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 250
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 275
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_4
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taplytics/eo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 285
    move v2, v3

    move-object v0, v1

    .line 286
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 287
    iget-object v4, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    iget-object v0, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "variations"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 286
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 303
    :goto_1
    return-object v0

    .line 294
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 296
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 297
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const-string v3, "baseline"

    aput-object v3, v2, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 303
    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 301
    goto :goto_1
.end method

.method public c()Lcom/taplytics/en;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taplytics/eo;->d:Lcom/taplytics/en;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 307
    .line 309
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 310
    iget-object v0, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 311
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    :cond_0
    :goto_1
    return-object v0

    .line 309
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 315
    goto :goto_1
.end method

.method public d()Lcom/taplytics/en;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taplytics/eo;->e:Lcom/taplytics/en;

    return-object v0
.end method

.method public e()Lcom/taplytics/en;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taplytics/eo;->f:Lcom/taplytics/en;

    return-object v0
.end method

.method public f()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taplytics/eo;->i:Lorg/json/JSONArray;

    return-object v0
.end method

.method public g()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taplytics/eo;->j:Lorg/json/JSONArray;

    return-object v0
.end method

.method public h()Lcom/taplytics/en;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/taplytics/eo;->g:Lcom/taplytics/en;

    return-object v0
.end method

.method public i()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taplytics/eo;->k:Lorg/json/JSONArray;

    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taplytics/eo;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public k()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/taplytics/eo;->m:Lorg/json/JSONArray;

    return-object v0
.end method

.method public l()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/taplytics/eo;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/taplytics/eo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taplytics/eo;->o:Lorg/json/JSONArray;

    return-object v0
.end method

.method public o()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/taplytics/eo;->p:Lorg/json/JSONArray;

    return-object v0
.end method

.method public p()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/taplytics/eo;->q:D

    return-wide v0
.end method

.method public q()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/taplytics/eo;->r:Lorg/json/JSONObject;

    return-object v0
.end method

.method public r()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/taplytics/eo;->s:Lorg/json/JSONObject;

    return-object v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/taplytics/eo;->t:Lorg/json/JSONObject;

    return-object v0
.end method
