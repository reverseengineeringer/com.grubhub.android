.class public Lcom/amazon/insights/abtest/cache/FileVariationCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/abtest/cache/VariationCache;


# static fields
.field public static final VARIATIONS_DIRECTORY:Ljava/lang/String; = "variations"

.field private static logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final fileManager:Lcom/amazon/insights/core/system/FileManager;

.field private final variationFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final variationsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/amazon/insights/abtest/cache/FileVariationCache;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/InsightsContext;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    .line 48
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->fileManager:Lcom/amazon/insights/core/system/FileManager;

    .line 49
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->fileManager:Lcom/amazon/insights/core/system/FileManager;

    const-string v1, "variations"

    invoke-interface {v0, v1}, Lcom/amazon/insights/core/system/FileManager;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationsDirectory:Ljava/io/File;

    .line 50
    invoke-direct {p0}, Lcom/amazon/insights/abtest/cache/FileVariationCache;->loadVariationFileInfo()V

    .line 51
    return-void
.end method

.method private loadVariationFileInfo()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationsDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationsDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->fileManager:Lcom/amazon/insights/core/system/FileManager;

    iget-object v1, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationsDirectory:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/amazon/insights/core/system/FileManager;->listFilesInDirectory(Ljava/io/File;)Ljava/util/Set;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 60
    iget-object v2, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadVariationFromFile(Ljava/io/File;)Lcom/amazon/insights/abtest/DefaultVariation;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-object v0

    .line 166
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->fileManager:Lcom/amazon/insights/core/system/FileManager;

    invoke-interface {v2, p1}, Lcom/amazon/insights/core/system/FileManager;->newInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 168
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 171
    :try_start_1
    const-string v1, ""

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    :catch_0
    move-exception v1

    .line 207
    sget-object v2, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "The file does not exist to read the variation from"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    :cond_1
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 182
    new-instance v3, Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    invoke-direct {v3}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;-><init>()V

    .line 183
    const-string v1, "applicationKey"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 184
    const-string v1, "uniqueId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/insights/core/idresolver/Id;->valueOf(Ljava/lang/String;)Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setUniqueId(Lcom/amazon/insights/core/idresolver/Id;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 185
    sget-object v1, Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;->CACHE:Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;

    invoke-virtual {v3, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setAllocationSource(Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;)V

    .line 186
    new-instance v1, Ljava/util/Date;

    const-string v4, "expirationDate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setExpirationDate(Ljava/util/Date;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 187
    const-string v1, "projectName"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setProjectName(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 188
    const-string v1, "variationName"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setVariationName(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 189
    const-string v1, "variationId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setVariationId(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 190
    const-string v1, "experimentId"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setExperimentId(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 192
    const-string v1, "variables"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_4

    .line 194
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 195
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 196
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 197
    if-eqz v5, :cond_2

    .line 198
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    :cond_3
    invoke-virtual {v3, v4}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->setVariables(Ljava/util/Map;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;

    .line 205
    :cond_4
    invoke-virtual {v3}, Lcom/amazon/insights/abtest/DefaultVariation$Builder;->build()Lcom/amazon/insights/abtest/DefaultVariation;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 208
    :catch_1
    move-exception v1

    .line 209
    sget-object v2, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "An error occurred while trying to read the variation from the file"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 210
    :catch_2
    move-exception v1

    .line 211
    sget-object v2, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Failed to parse from json the variation read from the file"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private writeVariationToFile(Lcom/amazon/insights/abtest/DefaultVariation;Ljava/io/Writer;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 218
    .line 220
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 225
    if-eqz v1, :cond_0

    .line 227
    :try_start_1
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 229
    :catch_0
    move-exception v1

    goto :goto_0

    .line 221
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized contains(Lcom/amazon/insights/abtest/DefaultVariation;)Z
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    iget-object v1, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/insights/abtest/cache/FileVariationCache;->loadVariationFromFile(Ljava/io/File;)Lcom/amazon/insights/abtest/DefaultVariation;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/insights/abtest/DefaultVariation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/amazon/insights/abtest/cache/FileVariationCache;->loadVariationFromFile(Ljava/io/File;)Lcom/amazon/insights/abtest/DefaultVariation;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized put(Lcom/amazon/insights/abtest/DefaultVariation;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/amazon/insights/core/util/Preconditions;->checkArgument(Z)V

    .line 70
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v0

    .line 85
    :goto_1
    if-eqz v5, :cond_6

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->fileManager:Lcom/amazon/insights/core/system/FileManager;

    const/4 v3, 0x0

    invoke-interface {v0, v5, v3}, Lcom/amazon/insights/core/system/FileManager;->newOutputStream(Ljava/io/File;Z)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 95
    :goto_2
    if-eqz v0, :cond_4

    .line 98
    :try_start_2
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/amazon/insights/abtest/cache/FileVariationCache;->writeVariationToFile(Lcom/amazon/insights/abtest/DefaultVariation;Ljava/io/Writer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationFiles:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 106
    if-eqz v3, :cond_0

    .line 108
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_3
    move v0, v2

    .line 115
    :goto_4
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 67
    goto :goto_0

    .line 74
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Lcom/amazon/insights/abtest/DefaultVariation;->getProjectName()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->variationsDirectory:Ljava/io/File;

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/insights/abtest/cache/FileVariationCache;->fileManager:Lcom/amazon/insights/core/system/FileManager;

    invoke-interface {v0, v3}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    move-object v5, v0

    .line 81
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_6
    sget-object v2, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Unable to cache the variation"

    invoke-virtual {v2, v3}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;)V

    .line 79
    sget-object v2, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "An error occurred while attempting to create a new file to persist a variation"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 80
    goto :goto_4

    .line 88
    :catch_1
    move-exception v0

    .line 89
    sget-object v2, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "The file does not exist to write the variation to"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v0, v1

    .line 90
    goto :goto_4

    .line 106
    :cond_3
    if-eqz v3, :cond_4

    .line 108
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_5
    move v0, v1

    .line 115
    goto :goto_4

    .line 103
    :catch_2
    move-exception v0

    move-object v2, v4

    .line 104
    :goto_6
    :try_start_8
    sget-object v3, Lcom/amazon/insights/abtest/cache/FileVariationCache;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Could not write the variation to file"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 106
    if-eqz v2, :cond_4

    .line 108
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 109
    :catch_3
    move-exception v0

    goto :goto_5

    .line 106
    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_5

    .line 108
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 110
    :cond_5
    :goto_8
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 66
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_8

    .line 106
    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 103
    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :cond_6
    move-object v0, v4

    goto/16 :goto_2
.end method
