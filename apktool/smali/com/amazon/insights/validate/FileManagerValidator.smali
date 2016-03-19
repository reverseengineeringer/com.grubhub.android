.class public Lcom/amazon/insights/validate/FileManagerValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public validate(Lcom/amazon/insights/core/InsightsContext;)V
    .locals 4

    .prologue
    .line 17
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v0

    .line 22
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/amazon/insights/core/system/FileManager;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "validatorFile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    new-instance v0, Lcom/amazon/insights/impl/InitializationException;

    const-string v1, "File was not created"

    invoke-direct {v0, v1}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lcom/amazon/insights/impl/InitializationException;

    const-string v2, "Could not create file on disk"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 31
    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/insights/core/system/FileManager;->deleteFile(Ljava/io/File;)Z

    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    new-instance v0, Lcom/amazon/insights/impl/InitializationException;

    const-string v1, "Could not delete file from disk"

    invoke-direct {v0, v1}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    return-void
.end method
