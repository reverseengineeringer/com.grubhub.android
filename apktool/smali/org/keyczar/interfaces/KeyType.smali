.class public interface abstract Lorg/keyczar/interfaces/KeyType;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract applyDefaultParameters(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/keyparams/KeyParameters;
.end method

.method public abstract getBuilder()Lorg/keyczar/interfaces/KeyType$Builder;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract validateKeyParameters(Lorg/keyczar/keyparams/KeyParameters;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation
.end method
