.class public Lcom/urbanairship/location/RegionEvent;
.super Lcom/urbanairship/analytics/Event;
.source "SourceFile"


# static fields
.field private static final BOUNDARY_EVENT:Ljava/lang/String; = "action"

.field public static final BOUNDARY_EVENT_ENTER:I = 0x1

.field public static final BOUNDARY_EVENT_EXIT:I = 0x2

.field private static final CIRCULAR_REGION:Ljava/lang/String; = "circular_region"

.field private static final CIRCULAR_REGION_RADIUS:Ljava/lang/String; = "radius"

.field private static final LATITUDE:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MAX_CHARACTER_LENGTH:I = 0xff

.field public static final MAX_LATITUDE:D = 90.0

.field public static final MAX_LONGITUDE:D = 180.0

.field public static final MIN_LATITUDE:D = -90.0

.field public static final MIN_LONGITUDE:D = -180.0

.field private static final PROXIMITY_REGION:Ljava/lang/String; = "proximity"

.field private static final PROXIMITY_REGION_ID:Ljava/lang/String; = "proximity_id"

.field private static final PROXIMITY_REGION_MAJOR:Ljava/lang/String; = "major"

.field private static final PROXIMITY_REGION_MINOR:Ljava/lang/String; = "minor"

.field private static final PROXIMITY_REGION_RSSI:Ljava/lang/String; = "rssi"

.field private static final REGION_ID:Ljava/lang/String; = "region_id"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field public static final TYPE:Ljava/lang/String; = "region_event"


# instance fields
.field private final boundaryEvent:I

.field private circularRegion:Lcom/urbanairship/location/CircularRegion;

.field private proximityRegion:Lcom/urbanairship/location/ProximityRegion;

.field private final regionId:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    .line 189
    iput p3, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    .line 190
    return-void
.end method

.method static regionEventCharacterCountIsValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static regionEventLatitudeIsValid(Ljava/lang/Double;)Z
    .locals 4

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static regionEventLongitudeIsValid(Ljava/lang/Double;)Z
    .locals 4

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcom/urbanairship/location/RegionEvent;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    const/4 v0, 0x0

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :cond_1
    :try_start_0
    const-string v1, "region_id"

    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v1, "source"

    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v2, "action"

    iget v1, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    if-ne v1, v3, :cond_3

    const-string v1, "enter"

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v1, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v1}, Lcom/urbanairship/location/ProximityRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    const-string v2, "proximity_id"

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getProximityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v2, "major"

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getMajor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v2, "minor"

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getMinor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v2, "latitude"

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v2, "longitude"

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v2, "rssi"

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getRssi()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v2, "proximity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v1}, Lcom/urbanairship/location/CircularRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 229
    const-string v2, "radius"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v7}, Lcom/urbanairship/location/CircularRegion;->getRadius()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v2, "latitude"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.7f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v7}, Lcom/urbanairship/location/CircularRegion;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v2, "longitude"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.7f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v7}, Lcom/urbanairship/location/CircularRegion;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v2, "circular_region"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error constructing JSON data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/location/RegionEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_3
    :try_start_1
    const-string v1, "exit"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "region_event"

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 293
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 294
    :cond_0
    const-string v1, "The region ID and source must not be null."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 316
    :goto_0
    return v0

    .line 298
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/location/RegionEvent;->regionEventCharacterCountIsValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    const-string v1, "The region ID must not be greater than 255 or less than 1 characters in length."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/location/RegionEvent;->regionEventCharacterCountIsValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 305
    const-string v1, "The source must not be greater than 255 or less than 1 characters in length."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_3
    iget v2, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    if-lt v2, v1, :cond_4

    iget v2, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    .line 311
    :cond_4
    const-string v1, "The boundary event must either be an entrance (1) or an exit (2)."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method public setCircularRegion(Lcom/urbanairship/location/CircularRegion;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 259
    return-void
.end method

.method public setProximityRegion(Lcom/urbanairship/location/ProximityRegion;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 250
    return-void
.end method
