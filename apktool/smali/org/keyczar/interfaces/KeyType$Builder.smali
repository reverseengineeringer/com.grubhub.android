.class public interface abstract Lorg/keyczar/interfaces/KeyType$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract generate(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/KeyczarKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/String;)Lorg/keyczar/KeyczarKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation
.end method
